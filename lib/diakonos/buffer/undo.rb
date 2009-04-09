module Diakonos

  class Buffer

    def takeSnapshot( typing = false )
      take_snapshot = false
      if @typing != typing
        @typing = typing
        # If we just started typing, take a snapshot, but don't continue
        # taking snapshots for every keystroke
        if typing
          take_snapshot = true
        end
      end
      if not @typing
        take_snapshot = true
      end

      if take_snapshot
        undo_size = 0
        @buffer_states[ 1..-1 ].each do |state|
          undo_size += state.length
        end
        while ( ( undo_size + @lines.length ) >= @settings[ "max_undo_lines" ] ) and @buffer_states.length > 1
          @cursor_states.pop
          popped_state = @buffer_states.pop
          undo_size = undo_size - popped_state.length
        end
        if @current_buffer_state > 0
          @buffer_states.unshift @lines.deep_clone
          @cursor_states.unshift [ @last_row, @last_col ]
        end
        @buffer_states.unshift @lines.deep_clone
        @cursor_states.unshift [ @last_row, @last_col ]
        @current_buffer_state = 0
        @lines = @buffer_states[ @current_buffer_state ]
      end
    end

    def undo
      if @current_buffer_state < @buffer_states.length - 1
        @current_buffer_state += 1
        @lines = @buffer_states[ @current_buffer_state ]
        cursorTo( @cursor_states[ @current_buffer_state - 1 ][ 0 ], @cursor_states[ @current_buffer_state - 1 ][ 1 ] )
        @diakonos.setILine "Undo level: #{@current_buffer_state} of #{@buffer_states.length - 1}"
        setModified
      end
    end

    # Since redo is a Ruby keyword...
    def unundo
      if @current_buffer_state > 0
        @current_buffer_state += -1
        @lines = @buffer_states[ @current_buffer_state ]
        cursorTo( @cursor_states[ @current_buffer_state ][ 0 ], @cursor_states[ @current_buffer_state ][ 1 ] )
        @diakonos.setILine "Undo level: #{@current_buffer_state} of #{@buffer_states.length - 1}"
        setModified
      end
    end

  end

end