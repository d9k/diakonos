module Diakonos

  class Diakonos
    alias_method :loadConfiguration,      :load_configuration
  end

  module Functions
    alias_method :addNamedBookmark,       :add_named_bookmark
    alias_method :anchorSelection,        :anchor_selection
    alias_method :carriageReturn,         :carriage_return
    alias_method :changeSessionSetting,   :change_session_setting
    alias_method :clearMatches,           :clear_matches
    alias_method :closeFile,              :close_buffer
    alias_method :close_file,             :close_buffer
    alias_method :collapseWhitespace,     :collapse_whitespace
    alias_method :copySelection,          :copy_selection
    alias_method :cursorDown,             :cursor_down
    alias_method :cursorLeft,             :cursor_left
    alias_method :cursorRight,            :cursor_right
    alias_method :cursorUp,               :cursor_up
    alias_method :cursorBOF,              :cursor_bof
    alias_method :cursorBOL,              :cursor_bol
    alias_method :cursorEOL,              :cursor_eol
    alias_method :cursorEOF,              :cursor_eof
    alias_method :cursorTOV,              :cursor_tov
    alias_method :cursorBOV,              :cursor_bov
    alias_method :cursorReturn,           :cursor_return
    alias_method :cutSelection,           :cut_selection
    alias_method :deleteAndStoreLine,     :delete_and_store_line
    alias_method :deleteLine,             :delete_line
    alias_method :deleteToEOL,            :delete_to_eol
    alias_method :findAgain,              :find_again
    alias_method :findAndReplace,         :search_and_replace
    alias_method :findExact,              :find_exact
    alias_method :goToLineAsk,            :go_to_line_ask
    alias_method :goToNamedBookmark,      :go_to_named_bookmark
    alias_method :goToNextBookmark,       :go_to_next_bookmark
    alias_method :goToPreviousBookmark,   :go_to_previous_bookmark
    alias_method :goToTag,                :go_to_tag
    alias_method :goToTagUnderCursor,     :go_to_tag_under_cursor
    alias_method :insertSpaces,           :insert_spaces
    alias_method :insertTab,              :insert_tab
    alias_method :joinLines,              :join_lines
    alias_method :loadScript,             :load_script
    alias_method :newFile,                :open_file
    alias_method :openFile,               :open_file
    alias_method :openFileAsk,            :open_file_ask
    alias_method :operateOnString,        :operate_on_string
    alias_method :operateOnLines,         :operate_on_lines
    alias_method :operateOnEachLine,      :operate_on_each_line
    alias_method :pageUp,                 :page_up
    alias_method :pageDown,               :page_down
    alias_method :parsedIndent,           :parsed_indent
    alias_method :playMacro,              :play_macro
    alias_method :popTag,                 :pop_tag
    alias_method :printKeychain,          :print_keychain
    alias_method :removeNamedBookmark,    :remove_named_bookmark
    alias_method :removeSelection,        :remove_selection
    alias_method :repeatLast,             :repeat_last
    alias_method :saveFile,               :save_file
    alias_method :saveFileAs,             :save_file_as
    alias_method :scrollDown,             :scroll_down
    alias_method :scrollUp,               :scroll_up
    alias_method :searchAndReplace,       :search_and_replace
    alias_method :setBufferType,          :set_buffer_type
    alias_method :setReadOnly,            :set_read_only
    alias_method :showClips,              :show_clips
    alias_method :pasteShellResult,       :paste_shell_result
    alias_method :toggleMacroRecording,   :toggle_macro_recording
    alias_method :switchToBufferNumber,   :switch_to_buffer_number
    alias_method :switchToNextBuffer,     :switch_to_next_buffer
    alias_method :switchToPreviousBuffer, :switch_to_previous_buffer
    alias_method :toggleBookmark,         :toggle_bookmark
    alias_method :toggleSelection,        :toggle_selection
    alias_method :toggleSessionSetting,   :toggle_session_setting
  end
end