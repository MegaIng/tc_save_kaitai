meta:
  id: v6
  file-extension: v6
  endian: le
enums:
  component_kinds:
    0: com_error
    1: com_off
    2: com_on
    3: com_buffer1
    4: com_not
    5: com_and
    6: com_and3
    7: com_nand
    8: com_or
    9: com_or3
    10: com_nor
    11: com_xor
    12: com_xnor
    13: com_counter8
    14: com_virtual_counter8
    15: com_counter64
    16: com_virtual_counter64
    17: com_ram8
    18: com_virtual_ram8
    19: com_deleted_0
    20: com_deleted_1
    21: com_deleted_17
    22: com_deleted_18
    23: com_register8
    24: com_virtual_register8
    25: com_register8red
    26: com_virtual_register8red
    27: com_register8red_plus
    28: com_virtual_register8red_plus
    29: com_register64
    30: com_virtual_register64
    31: com_switch8
    32: com_mux8
    33: com_com_decoder_1
    34: com_com_decoder_3
    35: com_constant8
    36: com_not8
    37: com_or8
    38: com_and8
    39: com_xor8
    40: com_com_equal8
    41: com_deleted_2
    42: com_deleted_3
    43: com_neg8
    44: com_add8
    45: com_mul8
    46: com_splitter8
    47: com_maker8
    48: com_splitter64
    49: com_maker64
    50: com_com_full_adder
    51: com_com_bit_memory
    52: com_virtualcom_bit_memory
    53: com_deleted_10
    54: com_com_decoder_2
    55: com_com_time
    56: com_note_sound
    57: com_deleted_4
    58: com_deleted_5
    59: com_keyboard
    60: com_com_file_loader
    61: com_halt
    62: com_wire_cluster
    63: com_level_screen
    64: com_program8_1
    65: com_program8_1red
    66: com_deleted_6
    67: com_deleted_7
    68: com_program8_4
    69: com_com_level_gate
    70: com_input1
    71: com_com_level_input_2_pin
    72: com_com_level_input_3_pin
    73: com_com_level_input_4_pin
    74: com_level_input_conditions
    75: com_input8
    76: com_input64
    77: com_level_input_code
    78: com_com_level_input_arch
    79: com_output1
    80: com_com_level_output_1_sum
    81: com_com_level_output_1_car
    82: com_deleted_8
    83: com_deleted_9
    84: com_com_level_output_2_pin
    85: com_com_level_output_3_pin
    86: com_com_level_output_4_pin
    87: com_output8
    88: com_output64
    89: com_com_level_output_arch
    90: com_com_level_output_counter
    91: com_deleted_11
    92: com_custom
    93: com_virtual_custom
    94: com_program
    95: com_delay_line1
    96: com_virtual_delay_line1
    97: com_console
    98: com_shl8
    99: com_shr8
    100: com_constant64
    101: com_not64
    102: com_or64
    103: com_and64
    104: com_xor64
    105: com_neg64
    106: com_add64
    107: com_mul64
    108: com_com_equal64
    109: com_com_less_u64
    110: com_com_less_s64
    111: com_shl64
    112: com_shr64
    113: com_mux64
    114: com_switch64
    115: com_com_probe_memory_bit
    116: com_com_probe_memory_word
    117: com_and_or_latch
    118: com_nand_nand_latch
    119: com_nor_nor_latch
    120: com_com_less_u8
    121: com_com_less_s8
    122: com_dot_matrix_display
    123: com_com_segment_display
    124: com_input16
    125: com_input32
    126: com_output16
    127: com_output32
    128: com_deleted_12
    129: com_deleted_13
    130: com_deleted_14
    131: com_deleted_15
    132: com_deleted_16
    133: com_buffer8
    134: com_buffer16
    135: com_buffer32
    136: com_buffer64
    137: com_com_probe_wire_bit
    138: com_com_probe_wire_word
    139: com_switch1
    140: com_output1z
    141: com_output8z
    142: com_output16z
    143: com_output32z
    144: com_output64z
    145: com_constant16
    146: com_not16
    147: com_or16
    148: com_and16
    149: com_xor16
    150: com_neg16
    151: com_add16
    152: com_mul16
    153: com_com_equal16
    154: com_com_less_u16
    155: com_com_less_s16
    156: com_shl16
    157: com_shr16
    158: com_mux16
    159: com_switch16
    160: com_splitter16
    161: com_maker16
    162: com_register16
    163: com_virtual_register16
    164: com_counter16
    165: com_virtual_counter16
    166: com_constant32
    167: com_not32
    168: com_or32
    169: com_and32
    170: com_xor32
    171: com_neg32
    172: com_add32
    173: com_mul32
    174: com_com_equal32
    175: com_com_less_u32
    176: com_com_less_s32
    177: com_shl32
    178: com_shr32
    179: com_mux32
    180: com_switch32
    181: com_splitter32
    182: com_maker32
    183: com_register32
    184: com_virtual_register32
    185: com_counter32
    186: com_virtual_counter32
    187: com_level_output8z
    188: com_nand8
    189: com_nor8
    190: com_xnor8
    191: com_nand16
    192: com_nor16
    193: com_xnor16
    194: com_nand32
    195: com_nor32
    196: com_xnor32
    197: com_nand64
    198: com_nor64
    199: com_xnor64
    200: com_ram
    201: com_virtual_ram
    202: com_com_ram_latency
    203: com_virtualcom_ram_latency
    204: com_com_ram_fast
    205: com_virtualcom_ram_fast
    206: com_rom
    207: com_virtual_rom
    208: com_solution_rom
    209: com_virtual_solution_rom
    210: com_delay_line8
    211: com_virtual_delay_line8
    212: com_delay_line16
    213: com_virtual_delay_line16
    214: com_delay_line32
    215: com_virtual_delay_line32
    216: com_delay_line64
    217: com_virtual_delay_line64
    218: com_com_ram_dual_load
    219: com_virtualcom_ram_dual_load
    220: com_hdd
    221: com_virtual_hdd
    222: com_network
    223: com_rol8
    224: com_rol16
    225: com_rol32
    226: com_rol64
    227: com_ror8
    228: com_ror16
    229: com_ror32
    230: com_ror64
    231: com_indexer_bit
    232: com_indexer_byte
    233: com_div_mod8
    234: com_div_mod16
    235: com_div_mod32
    236: com_div_mod64
    237: com_sprite_display
    238: com_com_config_delay
    239: com_clock
    240: com_com_level_input_1
    241: com_level_input8
    242: com_com_level_output_1
    243: com_level_output8
    244: com_ashr8
    245: com_ashr16
    246: com_ashr32
    247: com_ashr64
    248: com_bidirectional1
    249: com_virtual_bidirectional1
    250: com_bidirectional8
    251: com_virtual_bidirectional8
    252: com_bidirectional16
    253: com_virtual_bidirectional16
    254: com_bidirectional32
    255: com_virtual_bidirectional32
    256: com_bidirectional64
    257: com_virtual_bidirectional64

  sync_state:
    0: unsynced
    1: synced
    2: changed_after_sync
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
  watched_component:
    seq:
      - id: permanent_id
        type: s8
      - id: inner_id
        type: s8
      - id: name
        type: string
  int_pair:
    seq:
      - id: key
        type: s8
      - id: value
        type: s8
  int_pairs:
    seq:
      - id: count
        type: u2
      - id: pairs
        type: int_pair
        repeat: expr
        repeat-expr: count
  custom_comp_data:
    seq:
      - id: custom_id
        type: s8
      - id: custom_nudge
        type: point
  int_string:
    -webide-representation: "{key}: {value}"
    seq:
      - id: key
        type: s8
      - id: value
        type: string
  assembler_info:
    seq:
      - id: program_count
        type: u2
      - id: programs
        type: int_string
        repeat: expr
        repeat-expr: program_count
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
        type: u8
        repeat: expr
        repeat-expr: 2
      - id: ui_order
        type: s2
      - id: custom_data
        type: custom_comp_data
        if: component_kind == component_kinds::com_custom
      - id: assembler_data
        type: assembler_info
        if: component_kind == component_kinds::com_program or component_kind == component_kinds::com_program8_1 or component_kind == component_kinds::com_program8_4

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
      - id: width
        type: u1
      - id: color
        type: u1
      - id: comment
        type: string
      - id: start
        type: point
      - id: first_segment
        type: u1
      - id: tele_wire_end
        type: point
        if: first_segment == 0b0010_0000
      - id: segments
        type: u1
        repeat: until # techincally this should also consider first_segment. but the assumptions that the first segment is never 0 length should be valid
        repeat-until: (_ & 0x1F) == 0
        if: first_segment != 0b0010_0000
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
        type: u4
      - id: dependecies
        type: seq_int
      - id: description
        type: string
      - id: camera_position
        type: point
      - id: synced
        type: u1
        enum: sync_state
      - id: dummy_1
        type: u1
      - id: dummy_2
        type: u2
      - id: player_data
        type: seq_u8
      - id: hub_description
        type: string
      - id: components
        type: components
      - id: wires
        type: wires
seq:
  - id: magic
    contents: [0x6]
  - id: body
    type: body
    #process: snappy
    size-eos: true
    eos-error: false
