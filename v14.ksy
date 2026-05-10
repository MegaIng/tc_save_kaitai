meta:
  id: v10
  file-extension: v10
  endian: le
enums:
  component_kinds:
    0: com_none
    1: com_off
    2: com_on
    3: com_not_bit
    4: com_and_bit
    5: com_and_3_bit
    6: com_nand_bit
    7: com_or_bit
    8: com_or_3_bit
    9: com_nor_bit
    10: com_xor_bit
    11: com_xnor_bit
    12: com_switch_bit
    13: com_delay_line_bit
    14: com_register_bit
    15: com_full_adder
    16: com_maker_bit_8
    17: com_splitter_bit_8
    18: com_not_word
    19: com_or_word
    20: com_and_word
    21: com_nand_word
    22: com_nor_word
    23: com_xor_word
    24: com_xnor_word
    25: com_switch_word
    26: com_equal
    27: com_less_u
    28: com_less_s
    29: com_neg
    30: com_add
    31: com_mul
    32: com_div
    33: com_lsl
    34: com_lsr
    35: com_rol
    36: com_ror
    37: com_asr
    38: com_counter
    39: com_register_word
    40: com_level_output_8_pin
    41: com_deleted_5
    42: com_mux
    43: com_decoder_1
    44: com_decoder_2
    45: com_decoder_3
    46: com_constant
    47: com_splitter_word_2
    48: com_maker_word_2
    49: com_clz
    50: com_register_word_config
    51: com_delay_line_word_asm
    52: com_deleted_6
    53: com_deleted_4
    54: com_load_port
    55: com_delay_line_word
    56: com_store_port
    57: com_ctz
    58: com_cc_level_output
    59: com_level_gate
    60: com_level_input_1_pin
    61: com_level_input_word
    62: com_level_input_switched
    63: com_level_input_2_pin
    64: com_level_input_3_pin
    65: com_level_input_4_pin
    66: com_deleted_16
    67: com_deleted_17
    68: com_level_output_1_pin
    69: com_level_output_word
    70: com_level_output_switched
    71: com_deleted_2
    72: com_deleted_3
    73: com_level_output_2_pin
    74: com_level_output_3_pin
    75: com_level_output_4_pin
    76: com_deleted_18
    77: com_level_output_counter
    78: com_custom
    79: com_cc_input
    80: com_cc_input_buffer
    81: com_cc_output
    82: com_probe_memory_bit
    83: com_probe_memory_word
    84: com_probe_wire_bit
    85: com_probe_wire_word
    86: com_deleted_20
    87: com_halt
    88: com_deleted_1
    89: com_segment_display
    90: com_static_value
    91: com_screen
    92: com_time
    93: com_keyboard
    94: com_static_eval
    95: com_verilog_input
    96: com_verilog_output
    97: com_maker_word_4
    98: com_maker_word_8
    99: com_splitter_word_4
    100: com_splitter_word_8
    101: com_static_indexer
    102: com_deleted_7
    103: com_deleted_8
    104: com_inc
    105: com_deleted_19
    106: com_cc_level_input
    107: com_deleted_9
    108: com_mod
    109: com_splitter_bit_2
    110: com_splitter_bit_4
    111: com_maker_bit_2
    112: com_maker_bit_4
    113: com_deleted_10
    114: com_concatenator_2
    115: com_concatenator_4
    116: com_concatenator_8
    117: com_static_indexer_config
    118: com_ram
    119: com_delay_line_word_config
    120: com_deleted_11
    121: com_deleted_12
    122: com_deleted_13
    123: com_deleted_14
  sync_state:
    0: unsynced
    1: synced
    2: changed_after_sync
  init_data_kind:
    0: ini_zeros
    1: ini_assembler
    2: ini_punch_card
    3: ini_file
    4: ini_hex_editor
types:
  string:
    -webide-representation: "'{content}'"
    seq:
      - id: length
        type: u2
      - id: content
        type: str
        size: length
        encoding: utf8
  seq_int:
    seq:
      - id: length
        type: u2
      - id: content
        type: s8
        repeat: expr
        repeat-expr: length
  seq_u64:
    seq:
      - id: length
        type: u2
      - id: content
        type: u8
        repeat: expr
        repeat-expr: length
  seq_u8:
    seq:
      - id: length
        type: u2
      - id: content
        type: u1
        repeat: expr
        repeat-expr: length
  point:
    -webide-representation: "({x}, {y})"
    seq:
      - id: x
        type: s2
      - id: y
        type: s2
  linked_component:
    seq:
      - id: permanent_id
        type: s8
      - id: inner_id
        type: s8
      - id: name
        type: string
      - id: offset
        type: s8
      - id: word_size
        type: s8
  int_pair:
    seq:
      - id: key
        type: s8
      - id: value
        type: s8
  static_states:
    seq:
      - id: count
        type: u2
      - id: states
        type: int_pair
        repeat: expr
        repeat-expr: count
  custom_comp_data:
    seq:
      - id: custom_id
        type: s8
      - id: static_states
        type: static_states
  string_pair:
    -webide-representation: "{key}: {value}"
    seq:
      - id: key
        type: string
      - id: value
        type: string
  assembler_info:
    seq:
      - id: count
        type: u2
      - id: programs
        type: string_pair
        repeat: expr
        repeat-expr: count
  component:
    -webide-representation: "{component_kind} at {position}"
    seq:
      - id: component_kind
        type: u2
        enum: component_kinds
      - id: position
        type: point
      - id: rotation
        type: u1
      - id: permanent_id
        type: u8
      - id: custom_string
        type: string
      - id: settings
        type: seq_u64
      - id: buffer_size
        type: s8
      - id: ui_order
        type: s2
      - id: word_size
        type: s8
      - id: is_immutable
        type: b1
      - id: gate_variant
        type: s8 # if less than 0, choose the optimal one
      - id: delay_variant
        type: s8 # if less than 0, choose the optimal one. If both are <0, choose the minimal energy variant
      - id: is_little_endian
        type: b1
      - id: init_data
        type: u1
        enum: init_data_kind
      - id: watched_comp_count
        type: u2
      - id: linked_components
        type: linked_component
        repeat: expr
        repeat-expr: watched_comp_count
      - id: selected_programs
        type: assembler_info
      - id: custom_data
        type: custom_comp_data
        if: component_kind == component_kinds::com_custom
  components:
    seq:
      - id: length
        type: s8
      - id: components
        type: component
        repeat: expr
        repeat-expr: length
  wire:
    seq:
      - id: color
        type: u1
      - id: comment
        type: string
      - id: start
        type: point
      - id: segments
        type: u2
        repeat: until
        repeat-until: (_ & 0x1F_FF) == 0
  wires:
    seq:
      - id: length
        type: s8
      - id: wires
        type: wire
        repeat: expr
        repeat-expr: length
  body:
    seq:
      - id: custom_id
        type: s8
      - id: hub_id
        type: u4
      - id: gate
        type: s8
      - id: delay
        type: s8
      - id: menu_visible
        type: u1
      - id: clock_speed
        type: u8
      - id: dependencies
        type: seq_int
      - id: description
        type: string
      - id: synced
        type: u1
        enum: sync_state
      - id: dummy
        type: u2
      - id: player_data
        type: seq_u8
      - id: hub_description
        type: string
      - id: design
        type: u1
        repeat: expr
        repeat-expr: (32 * 16) # packed 4bit values representing 32x32 cells, in column major format. Upper nibble in a byte is the first upper y index
      - id: components
        type: components
      - id: wires
        type: wires
seq:
  - id: magic
    contents: [0xE]
  - id: body
    type: body
    #process: snappy
    size-eos: true
