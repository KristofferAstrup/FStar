
open Prims
# 23 "FStar.Options.fst"
type debug_level_t =
| Low
| Medium
| High
| Extreme
| Other of Prims.string

# 26 "FStar.Options.fst"
let is_Low = (fun _discr_ -> (match (_discr_) with
| Low (_) -> begin
true
end
| _ -> begin
false
end))

# 27 "FStar.Options.fst"
let is_Medium = (fun _discr_ -> (match (_discr_) with
| Medium (_) -> begin
true
end
| _ -> begin
false
end))

# 28 "FStar.Options.fst"
let is_High = (fun _discr_ -> (match (_discr_) with
| High (_) -> begin
true
end
| _ -> begin
false
end))

# 29 "FStar.Options.fst"
let is_Extreme = (fun _discr_ -> (match (_discr_) with
| Extreme (_) -> begin
true
end
| _ -> begin
false
end))

# 30 "FStar.Options.fst"
let is_Other = (fun _discr_ -> (match (_discr_) with
| Other (_) -> begin
true
end
| _ -> begin
false
end))

# 30 "FStar.Options.fst"
let ___Other____0 = (fun projectee -> (match (projectee) with
| Other (_24_10) -> begin
_24_10
end))

# 30 "FStar.Options.fst"
type option_val =
| Bool of Prims.bool
| String of Prims.string
| Int of Prims.int
| List of option_val Prims.list
| Unset

# 33 "FStar.Options.fst"
let is_Bool = (fun _discr_ -> (match (_discr_) with
| Bool (_) -> begin
true
end
| _ -> begin
false
end))

# 34 "FStar.Options.fst"
let is_String = (fun _discr_ -> (match (_discr_) with
| String (_) -> begin
true
end
| _ -> begin
false
end))

# 35 "FStar.Options.fst"
let is_Int = (fun _discr_ -> (match (_discr_) with
| Int (_) -> begin
true
end
| _ -> begin
false
end))

# 36 "FStar.Options.fst"
let is_List = (fun _discr_ -> (match (_discr_) with
| List (_) -> begin
true
end
| _ -> begin
false
end))

# 37 "FStar.Options.fst"
let is_Unset = (fun _discr_ -> (match (_discr_) with
| Unset (_) -> begin
true
end
| _ -> begin
false
end))

# 33 "FStar.Options.fst"
let ___Bool____0 = (fun projectee -> (match (projectee) with
| Bool (_24_13) -> begin
_24_13
end))

# 34 "FStar.Options.fst"
let ___String____0 = (fun projectee -> (match (projectee) with
| String (_24_16) -> begin
_24_16
end))

# 35 "FStar.Options.fst"
let ___Int____0 = (fun projectee -> (match (projectee) with
| Int (_24_19) -> begin
_24_19
end))

# 36 "FStar.Options.fst"
let ___List____0 = (fun projectee -> (match (projectee) with
| List (_24_22) -> begin
_24_22
end))

# 37 "FStar.Options.fst"
type options =
| Set
| Reset
| Restore

# 40 "FStar.Options.fst"
let is_Set = (fun _discr_ -> (match (_discr_) with
| Set (_) -> begin
true
end
| _ -> begin
false
end))

# 41 "FStar.Options.fst"
let is_Reset = (fun _discr_ -> (match (_discr_) with
| Reset (_) -> begin
true
end
| _ -> begin
false
end))

# 42 "FStar.Options.fst"
let is_Restore = (fun _discr_ -> (match (_discr_) with
| Restore (_) -> begin
true
end
| _ -> begin
false
end))

# 123 "FStar.Options.fst"
let __unit_tests__ : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

# 126 "FStar.Options.fst"
let __unit_tests : Prims.unit  ->  Prims.bool = (fun _24_23 -> (match (()) with
| () -> begin
(FStar_ST.read __unit_tests__)
end))

# 127 "FStar.Options.fst"
let __set_unit_tests : Prims.unit  ->  Prims.unit = (fun _24_24 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals __unit_tests__ true)
end))

# 128 "FStar.Options.fst"
let __clear_unit_tests : Prims.unit  ->  Prims.unit = (fun _24_25 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals __unit_tests__ false)
end))

# 129 "FStar.Options.fst"
let as_bool : option_val  ->  Prims.bool = (fun _24_1 -> (match (_24_1) with
| Bool (b) -> begin
b
end
| _24_30 -> begin
(FStar_All.failwith "Impos: expected Bool")
end))

# 133 "FStar.Options.fst"
let as_int : option_val  ->  Prims.int = (fun _24_2 -> (match (_24_2) with
| Int (b) -> begin
b
end
| _24_35 -> begin
(FStar_All.failwith "Impos: expected Int")
end))

# 136 "FStar.Options.fst"
let as_string : option_val  ->  Prims.string = (fun _24_3 -> (match (_24_3) with
| String (b) -> begin
b
end
| _24_40 -> begin
(FStar_All.failwith "Impos: expected String")
end))

# 139 "FStar.Options.fst"
let as_list = (fun as_t _24_4 -> (match (_24_4) with
| List (ts) -> begin
(FStar_All.pipe_right ts (FStar_List.map as_t))
end
| _24_46 -> begin
(FStar_All.failwith "Impos: expected List")
end))

# 142 "FStar.Options.fst"
let as_option = (fun as_t _24_5 -> (match (_24_5) with
| Unset -> begin
None
end
| v -> begin
(let _117_101 = (as_t v)
in Some (_117_101))
end))

# 145 "FStar.Options.fst"
let fstar_options : option_val FStar_Util.smap Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

# 147 "FStar.Options.fst"
let peek : Prims.unit  ->  option_val FStar_Util.smap = (fun _24_51 -> (match (()) with
| () -> begin
(let _117_104 = (FStar_ST.read fstar_options)
in (FStar_List.hd _117_104))
end))

# 148 "FStar.Options.fst"
let pop : Prims.unit  ->  Prims.unit = (fun _24_52 -> (match (()) with
| () -> begin
(match ((FStar_ST.read fstar_options)) with
| ([]) | ((_)::[]) -> begin
(FStar_All.failwith "TOO MANY POPS!")
end
| (_24_59)::tl -> begin
(FStar_ST.op_Colon_Equals fstar_options tl)
end)
end))

# 152 "FStar.Options.fst"
let push : Prims.unit  ->  Prims.unit = (fun _24_61 -> (match (()) with
| () -> begin
(let _117_112 = (let _117_111 = (let _117_109 = (peek ())
in (FStar_Util.smap_copy _117_109))
in (let _117_110 = (FStar_ST.read fstar_options)
in (_117_111)::_117_110))
in (FStar_ST.op_Colon_Equals fstar_options _117_112))
end))

# 153 "FStar.Options.fst"
let set_option : Prims.string  ->  option_val  ->  Prims.unit = (fun k v -> (let _117_117 = (peek ())
in (FStar_Util.smap_add _117_117 k v)))

# 154 "FStar.Options.fst"
let set_option' : (Prims.string * option_val)  ->  Prims.unit = (fun _24_66 -> (match (_24_66) with
| (k, v) -> begin
(set_option k v)
end))

# 155 "FStar.Options.fst"
let init : Prims.unit  ->  Prims.unit = (fun _24_67 -> (match (()) with
| () -> begin
(
# 158 "FStar.Options.fst"
let vals = ((("__temp_no_proj"), (List ([]))))::((("_fstar_home"), (String (""))))::((("_include_path"), (List ([]))))::((("admit_smt_queries"), (Bool (false))))::((("cardinality"), (String ("off"))))::((("codegen"), (Unset)))::((("codegen-lib"), (List ([]))))::((("debug"), (List ([]))))::((("debug_level"), (List ([]))))::((("dep"), (Unset)))::((("detail_errors"), (Bool (false))))::((("doc"), (Bool (false))))::((("dump_module"), (List ([]))))::((("eager_inference"), (Bool (false))))::((("explicit_deps"), (Bool (false))))::((("fs_typ_app"), (Bool (false))))::((("fsi"), (Bool (false))))::((("fstar_home"), (Unset)))::((("full_context_dependency"), (Bool (true))))::((("hide_genident_nums"), (Bool (false))))::((("hide_uvar_nums"), (Bool (false))))::((("hint_info"), (Bool (false))))::((("in"), (Bool (false))))::((("include"), (List ([]))))::((("initial_fuel"), (Int (2))))::((("initial_ifuel"), (Int (1))))::((("inline_arith"), (Bool (false))))::((("lax"), (Bool (false))))::((("log_queries"), (Bool (false))))::((("log_types"), (Bool (false))))::((("max_fuel"), (Int (8))))::((("max_ifuel"), (Int (2))))::((("min_fuel"), (Int (1))))::((("MLish"), (Bool (false))))::((("n_cores"), (Int (1))))::((("no_default_includes"), (Bool (false))))::((("no_extract"), (List ([]))))::((("no_location_info"), (Bool (false))))::((("odir"), (Unset)))::((("prims"), (Unset)))::((("pretype"), (Bool (true))))::((("prims_ref"), (Unset)))::((("print_before_norm"), (Bool (false))))::((("print_bound_var_types"), (Bool (false))))::((("print_effect_args"), (Bool (false))))::((("print_fuels"), (Bool (false))))::((("print_implicits"), (Bool (false))))::((("print_universes"), (Bool (false))))::((("prn"), (Bool (false))))::((("record_hints"), (Bool (false))))::((("reuse_hint_for"), (Unset)))::((("show_signatures"), (List ([]))))::((("silent"), (Bool (false))))::((("smt"), (Unset)))::((("split_cases"), (Int (0))))::((("stratified"), (Bool (false))))::((("timing"), (Bool (false))))::((("trace_error"), (Bool (false))))::((("unthrottle_inductives"), (Bool (false))))::((("use_eq_at_higher_order"), (Bool (false))))::((("use_hints"), (Bool (false))))::((("use_native_int"), (Bool (false))))::((("verify"), (Bool (true))))::((("verify_all"), (Bool (false))))::((("verify_module"), (List ([]))))::((("warn_top_level_effects"), (Bool (false))))::((("z3timeout"), (Int (5))))::[]
in (
# 227 "FStar.Options.fst"
let o = (peek ())
in (
# 228 "FStar.Options.fst"
let _24_70 = (FStar_Util.smap_clear o)
in (FStar_All.pipe_right vals (FStar_List.iter set_option')))))
end))

# 229 "FStar.Options.fst"
let clear : Prims.unit  ->  Prims.unit = (fun _24_72 -> (match (()) with
| () -> begin
(
# 232 "FStar.Options.fst"
let o = (FStar_Util.smap_create 50)
in (
# 233 "FStar.Options.fst"
let _24_74 = (FStar_ST.op_Colon_Equals fstar_options ((o)::[]))
in (init ())))
end))

# 234 "FStar.Options.fst"
let _run : Prims.unit = (clear ())

# 236 "FStar.Options.fst"
let lookup_opt = (fun s c -> (match ((let _117_129 = (peek ())
in (FStar_Util.smap_try_find _117_129 s))) with
| None -> begin
(FStar_All.failwith (Prims.strcat "Impossible: option " (Prims.strcat s " not found")))
end
| Some (s) -> begin
(c s)
end))

# 241 "FStar.Options.fst"
let get_admit_smt_queries : Prims.unit  ->  Prims.bool = (fun _24_81 -> (match (()) with
| () -> begin
(lookup_opt "admit_smt_queries" as_bool)
end))

# 243 "FStar.Options.fst"
let get_cardinality : Prims.unit  ->  Prims.string = (fun _24_82 -> (match (()) with
| () -> begin
(lookup_opt "cardinality" as_string)
end))

# 244 "FStar.Options.fst"
let get_codegen : Prims.unit  ->  Prims.string Prims.option = (fun _24_83 -> (match (()) with
| () -> begin
(lookup_opt "codegen" (as_option as_string))
end))

# 245 "FStar.Options.fst"
let get_codegen_lib : Prims.unit  ->  Prims.string Prims.list = (fun _24_84 -> (match (()) with
| () -> begin
(lookup_opt "codegen-lib" (as_list as_string))
end))

# 246 "FStar.Options.fst"
let get_debug : Prims.unit  ->  Prims.string Prims.list = (fun _24_85 -> (match (()) with
| () -> begin
(lookup_opt "debug" (as_list as_string))
end))

# 247 "FStar.Options.fst"
let get_debug_level : Prims.unit  ->  Prims.string Prims.list = (fun _24_86 -> (match (()) with
| () -> begin
(lookup_opt "debug_level" (as_list as_string))
end))

# 248 "FStar.Options.fst"
let get_dep : Prims.unit  ->  Prims.string Prims.option = (fun _24_87 -> (match (()) with
| () -> begin
(lookup_opt "dep" (as_option as_string))
end))

# 249 "FStar.Options.fst"
let get_detail_errors : Prims.unit  ->  Prims.bool = (fun _24_88 -> (match (()) with
| () -> begin
(lookup_opt "detail_errors" as_bool)
end))

# 250 "FStar.Options.fst"
let get_doc : Prims.unit  ->  Prims.bool = (fun _24_89 -> (match (()) with
| () -> begin
(lookup_opt "doc" as_bool)
end))

# 251 "FStar.Options.fst"
let get_dump_module : Prims.unit  ->  Prims.string Prims.list = (fun _24_90 -> (match (()) with
| () -> begin
(lookup_opt "dump_module" (as_list as_string))
end))

# 252 "FStar.Options.fst"
let get_eager_inference : Prims.unit  ->  Prims.bool = (fun _24_91 -> (match (()) with
| () -> begin
(lookup_opt "eager_inference" as_bool)
end))

# 253 "FStar.Options.fst"
let get_explicit_deps : Prims.unit  ->  Prims.bool = (fun _24_92 -> (match (()) with
| () -> begin
(lookup_opt "explicit_deps" as_bool)
end))

# 254 "FStar.Options.fst"
let get_fs_typ_app : Prims.unit  ->  Prims.bool = (fun _24_93 -> (match (()) with
| () -> begin
(lookup_opt "fs_typ_app" as_bool)
end))

# 255 "FStar.Options.fst"
let get_fsi : Prims.unit  ->  Prims.bool = (fun _24_94 -> (match (()) with
| () -> begin
(lookup_opt "fsi" as_bool)
end))

# 256 "FStar.Options.fst"
let get_fstar_home : Prims.unit  ->  Prims.string Prims.option = (fun _24_95 -> (match (()) with
| () -> begin
(lookup_opt "fstar_home" (as_option as_string))
end))

# 257 "FStar.Options.fst"
let get_hide_genident_nums : Prims.unit  ->  Prims.bool = (fun _24_96 -> (match (()) with
| () -> begin
(lookup_opt "hide_genident_nums" as_bool)
end))

# 258 "FStar.Options.fst"
let get_hide_uvar_nums : Prims.unit  ->  Prims.bool = (fun _24_97 -> (match (()) with
| () -> begin
(lookup_opt "hide_uvar_nums" as_bool)
end))

# 259 "FStar.Options.fst"
let get_hint_info : Prims.unit  ->  Prims.bool = (fun _24_98 -> (match (()) with
| () -> begin
(lookup_opt "hint_info" as_bool)
end))

# 260 "FStar.Options.fst"
let get_in : Prims.unit  ->  Prims.bool = (fun _24_99 -> (match (()) with
| () -> begin
(lookup_opt "in" as_bool)
end))

# 261 "FStar.Options.fst"
let get_include : Prims.unit  ->  Prims.string Prims.list = (fun _24_100 -> (match (()) with
| () -> begin
(lookup_opt "include" (as_list as_string))
end))

# 262 "FStar.Options.fst"
let get_initial_fuel : Prims.unit  ->  Prims.int = (fun _24_101 -> (match (()) with
| () -> begin
(lookup_opt "initial_fuel" as_int)
end))

# 263 "FStar.Options.fst"
let get_initial_ifuel : Prims.unit  ->  Prims.int = (fun _24_102 -> (match (()) with
| () -> begin
(lookup_opt "initial_ifuel" as_int)
end))

# 264 "FStar.Options.fst"
let get_inline_arith : Prims.unit  ->  Prims.bool = (fun _24_103 -> (match (()) with
| () -> begin
(lookup_opt "inline_arith" as_bool)
end))

# 265 "FStar.Options.fst"
let get_lax : Prims.unit  ->  Prims.bool = (fun _24_104 -> (match (()) with
| () -> begin
(lookup_opt "lax" as_bool)
end))

# 266 "FStar.Options.fst"
let get_log_queries : Prims.unit  ->  Prims.bool = (fun _24_105 -> (match (()) with
| () -> begin
(lookup_opt "log_queries" as_bool)
end))

# 267 "FStar.Options.fst"
let get_log_types : Prims.unit  ->  Prims.bool = (fun _24_106 -> (match (()) with
| () -> begin
(lookup_opt "log_types" as_bool)
end))

# 268 "FStar.Options.fst"
let get_max_fuel : Prims.unit  ->  Prims.int = (fun _24_107 -> (match (()) with
| () -> begin
(lookup_opt "max_fuel" as_int)
end))

# 269 "FStar.Options.fst"
let get_max_ifuel : Prims.unit  ->  Prims.int = (fun _24_108 -> (match (()) with
| () -> begin
(lookup_opt "max_ifuel" as_int)
end))

# 270 "FStar.Options.fst"
let get_min_fuel : Prims.unit  ->  Prims.int = (fun _24_109 -> (match (()) with
| () -> begin
(lookup_opt "min_fuel" as_int)
end))

# 271 "FStar.Options.fst"
let get_MLish : Prims.unit  ->  Prims.bool = (fun _24_110 -> (match (()) with
| () -> begin
(lookup_opt "MLish" as_bool)
end))

# 272 "FStar.Options.fst"
let get_n_cores : Prims.unit  ->  Prims.int = (fun _24_111 -> (match (()) with
| () -> begin
(lookup_opt "n_cores" as_int)
end))

# 273 "FStar.Options.fst"
let get_no_default_includes : Prims.unit  ->  Prims.bool = (fun _24_112 -> (match (()) with
| () -> begin
(lookup_opt "no_default_includes" as_bool)
end))

# 274 "FStar.Options.fst"
let get_no_extract : Prims.unit  ->  Prims.string Prims.list = (fun _24_113 -> (match (()) with
| () -> begin
(lookup_opt "no_extract" (as_list as_string))
end))

# 275 "FStar.Options.fst"
let get_no_location_info : Prims.unit  ->  Prims.bool = (fun _24_114 -> (match (()) with
| () -> begin
(lookup_opt "no_location_info" as_bool)
end))

# 276 "FStar.Options.fst"
let get_odir : Prims.unit  ->  Prims.string Prims.option = (fun _24_115 -> (match (()) with
| () -> begin
(lookup_opt "odir" (as_option as_string))
end))

# 277 "FStar.Options.fst"
let get_prims : Prims.unit  ->  Prims.string Prims.option = (fun _24_116 -> (match (()) with
| () -> begin
(lookup_opt "prims" (as_option as_string))
end))

# 278 "FStar.Options.fst"
let get_print_before_norm : Prims.unit  ->  Prims.bool = (fun _24_117 -> (match (()) with
| () -> begin
(lookup_opt "print_before_norm" as_bool)
end))

# 279 "FStar.Options.fst"
let get_print_bound_var_types : Prims.unit  ->  Prims.bool = (fun _24_118 -> (match (()) with
| () -> begin
(lookup_opt "print_bound_var_types" as_bool)
end))

# 280 "FStar.Options.fst"
let get_print_effect_args : Prims.unit  ->  Prims.bool = (fun _24_119 -> (match (()) with
| () -> begin
(lookup_opt "print_effect_args" as_bool)
end))

# 281 "FStar.Options.fst"
let get_print_fuels : Prims.unit  ->  Prims.bool = (fun _24_120 -> (match (()) with
| () -> begin
(lookup_opt "print_fuels" as_bool)
end))

# 282 "FStar.Options.fst"
let get_print_implicits : Prims.unit  ->  Prims.bool = (fun _24_121 -> (match (()) with
| () -> begin
(lookup_opt "print_implicits" as_bool)
end))

# 283 "FStar.Options.fst"
let get_print_universes : Prims.unit  ->  Prims.bool = (fun _24_122 -> (match (()) with
| () -> begin
(lookup_opt "print_universes" as_bool)
end))

# 284 "FStar.Options.fst"
let get_prn : Prims.unit  ->  Prims.bool = (fun _24_123 -> (match (()) with
| () -> begin
(lookup_opt "prn" as_bool)
end))

# 285 "FStar.Options.fst"
let get_record_hints : Prims.unit  ->  Prims.bool = (fun _24_124 -> (match (()) with
| () -> begin
(lookup_opt "record_hints" as_bool)
end))

# 286 "FStar.Options.fst"
let get_reuse_hint_for : Prims.unit  ->  Prims.string Prims.option = (fun _24_125 -> (match (()) with
| () -> begin
(lookup_opt "reuse_hint_for" (as_option as_string))
end))

# 287 "FStar.Options.fst"
let get_show_signatures : Prims.unit  ->  Prims.string Prims.list = (fun _24_126 -> (match (()) with
| () -> begin
(lookup_opt "show_signatures" (as_list as_string))
end))

# 288 "FStar.Options.fst"
let get_silent : Prims.unit  ->  Prims.bool = (fun _24_127 -> (match (()) with
| () -> begin
(lookup_opt "silent" as_bool)
end))

# 289 "FStar.Options.fst"
let get_smt : Prims.unit  ->  Prims.string Prims.option = (fun _24_128 -> (match (()) with
| () -> begin
(lookup_opt "smt" (as_option as_string))
end))

# 290 "FStar.Options.fst"
let get_split_cases : Prims.unit  ->  Prims.int = (fun _24_129 -> (match (()) with
| () -> begin
(lookup_opt "split_cases" as_int)
end))

# 291 "FStar.Options.fst"
let get_stratified : Prims.unit  ->  Prims.bool = (fun _24_130 -> (match (()) with
| () -> begin
(lookup_opt "stratified" as_bool)
end))

# 292 "FStar.Options.fst"
let get_timing : Prims.unit  ->  Prims.bool = (fun _24_131 -> (match (()) with
| () -> begin
(lookup_opt "timing" as_bool)
end))

# 293 "FStar.Options.fst"
let get_trace_error : Prims.unit  ->  Prims.bool = (fun _24_132 -> (match (()) with
| () -> begin
(lookup_opt "trace_error" as_bool)
end))

# 294 "FStar.Options.fst"
let get_unthrottle_inductives : Prims.unit  ->  Prims.bool = (fun _24_133 -> (match (()) with
| () -> begin
(lookup_opt "unthrottle_inductives" as_bool)
end))

# 295 "FStar.Options.fst"
let get_use_eq_at_higher_order : Prims.unit  ->  Prims.bool = (fun _24_134 -> (match (()) with
| () -> begin
(lookup_opt "use_eq_at_higher_order" as_bool)
end))

# 296 "FStar.Options.fst"
let get_use_hints : Prims.unit  ->  Prims.bool = (fun _24_135 -> (match (()) with
| () -> begin
(lookup_opt "use_hints" as_bool)
end))

# 297 "FStar.Options.fst"
let get_use_native_int : Prims.unit  ->  Prims.bool = (fun _24_136 -> (match (()) with
| () -> begin
(lookup_opt "use_native_int" as_bool)
end))

# 298 "FStar.Options.fst"
let get_verify_all : Prims.unit  ->  Prims.bool = (fun _24_137 -> (match (()) with
| () -> begin
(lookup_opt "verify_all" as_bool)
end))

# 299 "FStar.Options.fst"
let get_verify_module : Prims.unit  ->  Prims.string Prims.list = (fun _24_138 -> (match (()) with
| () -> begin
(lookup_opt "verify_module" (as_list as_string))
end))

# 300 "FStar.Options.fst"
let get___temp_no_proj : Prims.unit  ->  Prims.string Prims.list = (fun _24_139 -> (match (()) with
| () -> begin
(lookup_opt "__temp_no_proj" (as_list as_string))
end))

# 301 "FStar.Options.fst"
let get_version : Prims.unit  ->  Prims.bool = (fun _24_140 -> (match (()) with
| () -> begin
(lookup_opt "version" as_bool)
end))

# 302 "FStar.Options.fst"
let get_warn_top_level_effects : Prims.unit  ->  Prims.bool = (fun _24_141 -> (match (()) with
| () -> begin
(lookup_opt "warn_top_level_effects" as_bool)
end))

# 303 "FStar.Options.fst"
let get_z3timeout : Prims.unit  ->  Prims.int = (fun _24_142 -> (match (()) with
| () -> begin
(lookup_opt "z3timeout" as_int)
end))

# 304 "FStar.Options.fst"
let dlevel : Prims.string  ->  debug_level_t = (fun _24_6 -> (match (_24_6) with
| "Low" -> begin
Low
end
| "Medium" -> begin
Medium
end
| "High" -> begin
High
end
| "Extreme" -> begin
Extreme
end
| s -> begin
Other (s)
end))

# 311 "FStar.Options.fst"
let one_debug_level_geq : debug_level_t  ->  debug_level_t  ->  Prims.bool = (fun l1 l2 -> (match (l1) with
| (Other (_)) | (Low) -> begin
(l1 = l2)
end
| Medium -> begin
((l2 = Low) || (l2 = Medium))
end
| High -> begin
(((l2 = Low) || (l2 = Medium)) || (l2 = High))
end
| Extreme -> begin
((((l2 = Low) || (l2 = Medium)) || (l2 = High)) || (l2 = Extreme))
end))

# 317 "FStar.Options.fst"
let debug_level_geq : debug_level_t  ->  Prims.bool = (fun l2 -> (let _117_263 = (get_debug_level ())
in (FStar_All.pipe_right _117_263 (FStar_Util.for_some (fun l1 -> (one_debug_level_geq (dlevel l1) l2))))))

# 318 "FStar.Options.fst"
let include_path_base_dirs : Prims.string Prims.list = ("/lib")::("/lib/fstar")::[]

# 321 "FStar.Options.fst"
let universe_include_path_base_dirs : Prims.string Prims.list = ("/ulib")::[]

# 324 "FStar.Options.fst"
let display_version : Prims.unit  ->  Prims.unit = (fun _24_160 -> (match (()) with
| () -> begin
(let _117_266 = (FStar_Util.format5 "F* %s\nplatform=%s\ncompiler=%s\ndate=%s\ncommit=%s\n" FStar_Version.version FStar_Version.platform FStar_Version.compiler FStar_Version.date FStar_Version.commit)
in (FStar_Util.print_string _117_266))
end))

# 328 "FStar.Options.fst"
let display_usage_aux = (fun specs -> (
# 331 "FStar.Options.fst"
let _24_162 = (FStar_Util.print_string "fstar [option] file...\n")
in (FStar_List.iter (fun _24_169 -> (match (_24_169) with
| (_24_165, flag, p, doc) -> begin
(match (p) with
| FStar_Getopt.ZeroArgs (ig) -> begin
if (doc = "") then begin
(let _117_271 = (let _117_270 = (FStar_Util.colorize_bold flag)
in (FStar_Util.format1 "  --%s\n" _117_270))
in (FStar_Util.print_string _117_271))
end else begin
(let _117_273 = (let _117_272 = (FStar_Util.colorize_bold flag)
in (FStar_Util.format2 "  --%s  %s\n" _117_272 doc))
in (FStar_Util.print_string _117_273))
end
end
| FStar_Getopt.OneArg (_24_173, argname) -> begin
if (doc = "") then begin
(let _117_277 = (let _117_276 = (FStar_Util.colorize_bold flag)
in (let _117_275 = (FStar_Util.colorize_bold argname)
in (FStar_Util.format2 "  --%s %s\n" _117_276 _117_275)))
in (FStar_Util.print_string _117_277))
end else begin
(let _117_280 = (let _117_279 = (FStar_Util.colorize_bold flag)
in (let _117_278 = (FStar_Util.colorize_bold argname)
in (FStar_Util.format3 "  --%s %s  %s\n" _117_279 _117_278 doc)))
in (FStar_Util.print_string _117_280))
end
end)
end)) specs)))

# 341 "FStar.Options.fst"
let mk_spec : (FStar_Char.char * Prims.string * option_val FStar_Getopt.opt_variant * Prims.string)  ->  FStar_Getopt.opt = (fun o -> (
# 344 "FStar.Options.fst"
let _24_182 = o
in (match (_24_182) with
| (ns, name, arg, desc) -> begin
(
# 345 "FStar.Options.fst"
let arg = (match (arg) with
| FStar_Getopt.ZeroArgs (f) -> begin
(
# 348 "FStar.Options.fst"
let g = (fun _24_186 -> (match (()) with
| () -> begin
(let _117_287 = (let _117_286 = (f ())
in ((name), (_117_286)))
in (set_option' _117_287))
end))
in FStar_Getopt.ZeroArgs (g))
end
| FStar_Getopt.OneArg (f, d) -> begin
(
# 352 "FStar.Options.fst"
let g = (fun x -> (let _117_292 = (let _117_291 = (f x)
in ((name), (_117_291)))
in (set_option' _117_292)))
in FStar_Getopt.OneArg (((g), (d))))
end)
in ((ns), (name), (arg), (desc)))
end)))

# 354 "FStar.Options.fst"
let cons_verify_module : Prims.string  ->  option_val = (fun s -> (let _117_299 = (let _117_298 = (let _117_296 = (get_verify_module ())
in ((FStar_String.lowercase s))::_117_296)
in (FStar_All.pipe_right _117_298 (FStar_List.map (fun _117_297 -> String (_117_297)))))
in List (_117_299)))

# 357 "FStar.Options.fst"
let add_verify_module : Prims.string  ->  Prims.unit = (fun s -> (let _117_302 = (cons_verify_module s)
in (set_option "verify_module" _117_302)))

# 360 "FStar.Options.fst"
let rec specs : Prims.unit  ->  FStar_Getopt.opt Prims.list = (fun _24_196 -> (match (()) with
| () -> begin
(
# 363 "FStar.Options.fst"
let specs = (((FStar_Getopt.noshort), ("admit_smt_queries"), (FStar_Getopt.OneArg ((((fun s -> if (s = "true") then begin
Bool (true)
end else begin
if (s = "false") then begin
Bool (false)
end else begin
(FStar_All.failwith "Invalid argument to --admit_smt_queries")
end
end)), ("[true|false]")))), ("Admit SMT queries, unsafe! (default \'false\')")))::(((FStar_Getopt.noshort), ("cardinality"), (FStar_Getopt.OneArg ((((fun x -> (let _117_314 = (validate_cardinality x)
in String (_117_314)))), ("[off|warn|check]")))), ("Check cardinality constraints on inductive data types (default \'off\')")))::(((FStar_Getopt.noshort), ("codegen"), (FStar_Getopt.OneArg ((((fun s -> (let _117_318 = (parse_codegen s)
in String (_117_318)))), ("[OCaml|FSharp|Kremlin]")))), ("Generate code for execution")))::(((FStar_Getopt.noshort), ("codegen-lib"), (FStar_Getopt.OneArg ((((fun s -> (let _117_325 = (let _117_324 = (let _117_322 = (get_codegen_lib ())
in (s)::_117_322)
in (FStar_All.pipe_right _117_324 (FStar_List.map (fun _117_323 -> String (_117_323)))))
in List (_117_325)))), ("[namespace]")))), ("External runtime library (i.e. M.N.x extracts to M.N.X instead of M_N.x)")))::(((FStar_Getopt.noshort), ("debug"), (FStar_Getopt.OneArg ((((fun x -> (let _117_332 = (let _117_331 = (let _117_329 = (get_debug ())
in (x)::_117_329)
in (FStar_All.pipe_right _117_331 (FStar_List.map (fun _117_330 -> String (_117_330)))))
in List (_117_332)))), ("[module name]")))), ("Print lots of debugging information while checking module")))::(((FStar_Getopt.noshort), ("debug_level"), (FStar_Getopt.OneArg ((((fun x -> (let _117_339 = (let _117_338 = (let _117_336 = (get_debug_level ())
in (x)::_117_336)
in (FStar_All.pipe_right _117_338 (FStar_List.map (fun _117_337 -> String (_117_337)))))
in List (_117_339)))), ("[Low|Medium|High|Extreme|...]")))), ("Control the verbosity of debugging info")))::(((FStar_Getopt.noshort), ("dep"), (FStar_Getopt.OneArg ((((fun x -> if ((x = "make") || (x = "graph")) then begin
String (x)
end else begin
(FStar_All.failwith "invalid argument to \'dep\'")
end)), ("[make|graph]")))), ("Output the transitive closure of the dependency graph in a format suitable for the given tool")))::(((FStar_Getopt.noshort), ("detail_errors"), (FStar_Getopt.ZeroArgs ((fun _24_204 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Emit a detailed error report by asking the SMT solver many queries; will take longer;\n         implies n_cores=1; incompatible with --stratified")))::(((FStar_Getopt.noshort), ("doc"), (FStar_Getopt.ZeroArgs ((fun _24_205 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Extract Markdown documentation files for the input modules, as well as an index. Output is written to --odir directory.")))::(((FStar_Getopt.noshort), ("dump_module"), (FStar_Getopt.OneArg ((((fun x -> (let _117_352 = (let _117_350 = (let _117_348 = (get_dump_module ())
in (x)::_117_348)
in (FStar_All.pipe_right _117_350 (FStar_List.map (fun _117_349 -> String (_117_349)))))
in (FStar_All.pipe_right _117_352 (fun _117_351 -> List (_117_351)))))), ("[module name]")))), ("")))::(((FStar_Getopt.noshort), ("eager_inference"), (FStar_Getopt.ZeroArgs ((fun _24_207 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Solve all type-inference constraints eagerly; more efficient but at the cost of generality")))::(((FStar_Getopt.noshort), ("explicit_deps"), (FStar_Getopt.ZeroArgs ((fun _24_208 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Do not find dependencies automatically, the user provides them on the command-line")))::(((FStar_Getopt.noshort), ("fs_typ_app"), (FStar_Getopt.ZeroArgs ((fun _24_209 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Allow the use of t<t1,...,tn> syntax for type applications;\n        brittle since it clashes with the integer less-than operator")))::(((FStar_Getopt.noshort), ("fsi"), (FStar_Getopt.ZeroArgs ((fun _24_210 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("fsi flag; A flag to indicate if type checking a fsi in the interactive mode")))::(((FStar_Getopt.noshort), ("fstar_home"), (FStar_Getopt.OneArg ((((fun _117_358 -> String (_117_358))), ("[dir]")))), ("Set the FSTAR_HOME variable to [dir]")))::(((FStar_Getopt.noshort), ("hide_genident_nums"), (FStar_Getopt.ZeroArgs ((fun _24_211 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Don\'t print generated identifier numbers")))::(((FStar_Getopt.noshort), ("hide_uvar_nums"), (FStar_Getopt.ZeroArgs ((fun _24_212 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Don\'t print unification variable numbers")))::(((FStar_Getopt.noshort), ("hint_info"), (FStar_Getopt.ZeroArgs ((fun _24_213 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print information regarding hints")))::(((FStar_Getopt.noshort), ("in"), (FStar_Getopt.ZeroArgs ((fun _24_214 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Interactive mode; reads input from stdin")))::(((FStar_Getopt.noshort), ("include"), (FStar_Getopt.OneArg ((((fun s -> (let _117_369 = (let _117_368 = (let _117_366 = (get_include ())
in (FStar_List.append _117_366 ((s)::[])))
in (FStar_All.pipe_right _117_368 (FStar_List.map (fun _117_367 -> String (_117_367)))))
in List (_117_369)))), ("[path]")))), ("A directory in which to search for files included on the command line")))::(((FStar_Getopt.noshort), ("initial_fuel"), (FStar_Getopt.OneArg ((((fun x -> (let _117_373 = (FStar_Util.int_of_string x)
in Int (_117_373)))), ("[non-negative integer]")))), ("Number of unrolling of recursive functions to try initially (default 2)")))::(((FStar_Getopt.noshort), ("initial_ifuel"), (FStar_Getopt.OneArg ((((fun x -> (let _117_377 = (FStar_Util.int_of_string x)
in Int (_117_377)))), ("[non-negative integer]")))), ("Number of unrolling of inductive datatypes to try at first (default 1)")))::(((FStar_Getopt.noshort), ("inline_arith"), (FStar_Getopt.ZeroArgs ((fun _24_218 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Inline definitions of arithmetic functions in the SMT encoding")))::(((FStar_Getopt.noshort), ("lax"), (FStar_Getopt.ZeroArgs ((fun _24_219 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Run the lax-type checker only (admit all verification conditions)")))::(((FStar_Getopt.noshort), ("log_types"), (FStar_Getopt.ZeroArgs ((fun _24_220 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print types computed for data/val/let-bindings")))::(((FStar_Getopt.noshort), ("log_queries"), (FStar_Getopt.ZeroArgs ((fun _24_221 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Log the Z3 queries in queries.smt2")))::(((FStar_Getopt.noshort), ("max_fuel"), (FStar_Getopt.OneArg ((((fun x -> (let _117_385 = (FStar_Util.int_of_string x)
in Int (_117_385)))), ("[non-negative integer]")))), ("Number of unrolling of recursive functions to try at most (default 8)")))::(((FStar_Getopt.noshort), ("max_ifuel"), (FStar_Getopt.OneArg ((((fun x -> (let _117_389 = (FStar_Util.int_of_string x)
in Int (_117_389)))), ("[non-negative integer]")))), ("Number of unrolling of inductive datatypes to try at most (default 2)")))::(((FStar_Getopt.noshort), ("min_fuel"), (FStar_Getopt.OneArg ((((fun x -> (let _117_393 = (FStar_Util.int_of_string x)
in Int (_117_393)))), ("[non-negative integer]")))), ("Minimum number of unrolling of recursive functions to try (default 1)")))::(((FStar_Getopt.noshort), ("MLish"), (FStar_Getopt.ZeroArgs ((fun _24_225 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Introduce unification variables that are only dependent on the type variables in the context")))::(((FStar_Getopt.noshort), ("n_cores"), (FStar_Getopt.OneArg ((((fun x -> (let _117_398 = (FStar_Util.int_of_string x)
in Int (_117_398)))), ("[positive integer]")))), ("Maximum number of cores to use for the solver (implies detail_errors = false) (default 1)")))::(((FStar_Getopt.noshort), ("no_default_includes"), (FStar_Getopt.ZeroArgs ((fun _24_227 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Ignore the default module search paths")))::(((FStar_Getopt.noshort), ("no_extract"), (FStar_Getopt.OneArg ((((fun x -> (let _117_406 = (let _117_405 = (let _117_403 = (get_no_extract ())
in (x)::_117_403)
in (FStar_All.pipe_right _117_405 (FStar_List.map (fun _117_404 -> String (_117_404)))))
in List (_117_406)))), ("[module name]")))), ("Do not extract code from this module")))::(((FStar_Getopt.noshort), ("no_location_info"), (FStar_Getopt.ZeroArgs ((fun _24_229 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Suppress location information in the generated OCaml output (only relevant with --codegen OCaml)")))::(((FStar_Getopt.noshort), ("odir"), (FStar_Getopt.OneArg ((((fun _117_409 -> String (_117_409))), ("[dir]")))), ("Place output in directory [dir]")))::(((FStar_Getopt.noshort), ("prims"), (FStar_Getopt.OneArg ((((fun _117_411 -> String (_117_411))), ("file")))), ("")))::(((FStar_Getopt.noshort), ("print_before_norm"), (FStar_Getopt.ZeroArgs ((fun _24_230 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Do not normalize types before printing (for debugging)")))::(((FStar_Getopt.noshort), ("print_bound_var_types"), (FStar_Getopt.ZeroArgs ((fun _24_231 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print the types of bound variables")))::(((FStar_Getopt.noshort), ("print_effect_args"), (FStar_Getopt.ZeroArgs ((fun _24_232 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print inferred predicate transformers for all computation types")))::(((FStar_Getopt.noshort), ("print_fuels"), (FStar_Getopt.ZeroArgs ((fun _24_233 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print the fuel amounts used for each successful query")))::(((FStar_Getopt.noshort), ("print_implicits"), (FStar_Getopt.ZeroArgs ((fun _24_234 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print implicit arguments")))::(((FStar_Getopt.noshort), ("print_universes"), (FStar_Getopt.ZeroArgs ((fun _24_235 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print universes")))::(((FStar_Getopt.noshort), ("prn"), (FStar_Getopt.ZeroArgs ((fun _24_236 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print real names (you may want to use this in conjunction with log_queries)")))::(((FStar_Getopt.noshort), ("record_hints"), (FStar_Getopt.ZeroArgs ((fun _24_237 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Record a database of hints for efficient proof replay")))::(((FStar_Getopt.noshort), ("reuse_hint_for"), (FStar_Getopt.OneArg ((((fun _117_421 -> String (_117_421))), ("top-level name in the current module")))), ("Optimistically, attempt using the recorded hint for \'f\' when trying to verify some other term \'g\'")))::(((FStar_Getopt.noshort), ("show_signatures"), (FStar_Getopt.OneArg ((((fun x -> (let _117_428 = (let _117_427 = (let _117_425 = (get_show_signatures ())
in (x)::_117_425)
in (FStar_All.pipe_right _117_427 (FStar_List.map (fun _117_426 -> String (_117_426)))))
in List (_117_428)))), ("[module name]")))), ("Show the checked signatures for all top-level symbols in the module")))::(((FStar_Getopt.noshort), ("silent"), (FStar_Getopt.ZeroArgs ((fun _24_239 -> (match (()) with
| () -> begin
Bool (true)
end)))), (" ")))::(((FStar_Getopt.noshort), ("smt"), (FStar_Getopt.OneArg ((((fun _117_431 -> String (_117_431))), ("[path]")))), ("Path to the SMT solver (usually Z3, but could be any SMT2-compatible solver)")))::(((FStar_Getopt.noshort), ("split_cases"), (FStar_Getopt.OneArg ((((fun n -> (let _117_435 = (FStar_Util.int_of_string n)
in Int (_117_435)))), ("[positive integer]")))), ("Partition VC of a match into groups of [n] cases")))::(((FStar_Getopt.noshort), ("stratified"), (FStar_Getopt.ZeroArgs ((fun _24_241 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Remove the support for universes")))::(((FStar_Getopt.noshort), ("timing"), (FStar_Getopt.ZeroArgs ((fun _24_242 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Print the time it takes to verify each top-level definition")))::(((FStar_Getopt.noshort), ("trace_error"), (FStar_Getopt.ZeroArgs ((fun _24_243 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Don\'t print an error message; show an exception trace instead")))::(((FStar_Getopt.noshort), ("unthrottle_inductives"), (FStar_Getopt.ZeroArgs ((fun _24_244 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Let the SMT solver unfold inductive types to arbitrary depths (may affect verifier performance)")))::(((FStar_Getopt.noshort), ("use_eq_at_higher_order"), (FStar_Getopt.ZeroArgs ((fun _24_245 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Use equality constraints when comparing higher-order types (Temporary)")))::(((FStar_Getopt.noshort), ("use_hints"), (FStar_Getopt.ZeroArgs ((fun _24_246 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Use a previously recorded hints database for proof replay")))::(((FStar_Getopt.noshort), ("use_native_int"), (FStar_Getopt.ZeroArgs ((fun _24_247 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Extract the \'int\' type to platform-specific native int;\n        (You will need to link the generated code with the appropriate version of the prims library)")))::(((FStar_Getopt.noshort), ("verify_all"), (FStar_Getopt.ZeroArgs ((fun _24_248 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("With automatic dependencies, verify all the dependencies, not just the files passed on the command-line.")))::(((FStar_Getopt.noshort), ("verify_module"), (FStar_Getopt.OneArg (((cons_verify_module), ("[module name]")))), ("Name of the module to verify")))::(((FStar_Getopt.noshort), ("__temp_no_proj"), (FStar_Getopt.OneArg ((((fun x -> (let _117_451 = (let _117_450 = (let _117_448 = (get___temp_no_proj ())
in (x)::_117_448)
in (FStar_All.pipe_right _117_450 (FStar_List.map (fun _117_449 -> String (_117_449)))))
in List (_117_451)))), ("[module name]")))), ("Don\'t generate projectors for this module")))::((('v'), ("version"), (FStar_Getopt.ZeroArgs ((fun _24_250 -> (
# 690 "FStar.Options.fst"
let _24_252 = (display_version ())
in (FStar_All.exit 0))))), ("Display version number")))::(((FStar_Getopt.noshort), ("warn_top_level_effects"), (FStar_Getopt.ZeroArgs ((fun _24_254 -> (match (()) with
| () -> begin
Bool (true)
end)))), ("Top-level effects are ignored by default; turn this flag on to be warned when this happens")))::(((FStar_Getopt.noshort), ("z3timeout"), (FStar_Getopt.OneArg ((((fun s -> (let _117_457 = (FStar_Util.int_of_string s)
in Int (_117_457)))), ("[positive integer]")))), ("Set the Z3 per-query (soft) timeout to [t] seconds (default 5)")))::[]
in (let _117_459 = (FStar_List.map mk_spec specs)
in ((('h'), ("help"), (FStar_Getopt.ZeroArgs ((fun x -> (
# 706 "FStar.Options.fst"
let _24_258 = (display_usage_aux specs)
in (FStar_All.exit 0))))), ("Display this information")))::_117_459))
end))
and parse_codegen : Prims.string  ->  Prims.string = (fun s -> (match (s) with
| ("Kremlin") | ("OCaml") | ("FSharp") -> begin
s
end
| _24_265 -> begin
(
# 715 "FStar.Options.fst"
let _24_266 = (FStar_Util.print_string "Wrong argument to codegen flag\n")
in (
# 716 "FStar.Options.fst"
let _24_268 = (let _117_461 = (specs ())
in (display_usage_aux _117_461))
in (FStar_All.exit 1)))
end))
and validate_cardinality : Prims.string  ->  Prims.string = (fun x -> (match (x) with
| ("warn") | ("check") | ("off") -> begin
x
end
| _24_275 -> begin
(
# 722 "FStar.Options.fst"
let _24_276 = (FStar_Util.print_string "Wrong argument to cardinality flag\n")
in (
# 723 "FStar.Options.fst"
let _24_278 = (let _117_463 = (specs ())
in (display_usage_aux _117_463))
in (FStar_All.exit 1)))
end))
and set_interactive_fsi = (fun _24_280 -> if (get_in ()) then begin
(set_option' (("fsi"), (Bool (true))))
end else begin
(
# 727 "FStar.Options.fst"
let _24_282 = (FStar_Util.print_string "Set interactive flag first before setting interactive fsi flag\n")
in (
# 728 "FStar.Options.fst"
let _24_284 = (let _117_464 = (specs ())
in (display_usage_aux _117_464))
in (FStar_All.exit 1)))
end)

# 728 "FStar.Options.fst"
let settable : Prims.string  ->  Prims.bool = (fun _24_7 -> (match (_24_7) with
| ("admit_smt_queries") | ("cardinality") | ("debug") | ("debug_level") | ("detail_errors") | ("eager_inference") | ("hide_genident_nums") | ("hide_uvar_nums") | ("hint_info") | ("initial_fuel") | ("initial_ifuel") | ("inline_arith") | ("lax") | ("log_types") | ("log_queries") | ("max_fuel") | ("max_ifuel") | ("min_fuel") | ("print_before_norm") | ("print_bound_var_types") | ("print_effect_args") | ("print_fuels") | ("print_implicits") | ("print_universes") | ("prn") | ("show_signatures") | ("silent") | ("split_cases") | ("timing") | ("trace_error") | ("unthrottle_inductives") | ("use_eq_at_higher_order") | ("__temp_no_proj") | ("warn_top_level_effects") | ("reuse_hint_for") -> begin
true
end
| _24_323 -> begin
false
end))

# 768 "FStar.Options.fst"
let resettable : Prims.string  ->  Prims.bool = (fun s -> ((settable s) || (s = "z3timeout")))

# 770 "FStar.Options.fst"
let all_specs : FStar_Getopt.opt Prims.list = (specs ())

# 771 "FStar.Options.fst"
let settable_specs : (FStar_Char.char * Prims.string * Prims.unit FStar_Getopt.opt_variant * Prims.string) Prims.list = (FStar_All.pipe_right all_specs (FStar_List.filter (fun _24_332 -> (match (_24_332) with
| (_24_326, x, _24_329, _24_331) -> begin
(settable x)
end))))

# 772 "FStar.Options.fst"
let resettable_specs : (FStar_Char.char * Prims.string * Prims.unit FStar_Getopt.opt_variant * Prims.string) Prims.list = (FStar_All.pipe_right all_specs (FStar_List.filter (fun _24_340 -> (match (_24_340) with
| (_24_334, x, _24_337, _24_339) -> begin
(resettable x)
end))))

# 773 "FStar.Options.fst"
let display_usage : Prims.unit  ->  Prims.unit = (fun _24_341 -> (match (()) with
| () -> begin
(let _117_473 = (specs ())
in (display_usage_aux _117_473))
end))

# 779 "FStar.Options.fst"
let fstar_home : Prims.unit  ->  Prims.string = (fun _24_342 -> (match (()) with
| () -> begin
(match ((get_fstar_home ())) with
| None -> begin
(
# 784 "FStar.Options.fst"
let x = (FStar_Util.get_exec_dir ())
in (
# 785 "FStar.Options.fst"
let x = (Prims.strcat x "/..")
in (
# 786 "FStar.Options.fst"
let _24_346 = (set_option' (("fstar_home"), (String (x))))
in x)))
end
| Some (x) -> begin
x
end)
end))

# 788 "FStar.Options.fst"
let set_options : options  ->  Prims.string  ->  FStar_Getopt.parse_cmdline_res = (fun o s -> (
# 791 "FStar.Options.fst"
let specs = (match (o) with
| Set -> begin
if (not ((get_stratified ()))) then begin
resettable_specs
end else begin
settable_specs
end
end
| Reset -> begin
resettable_specs
end
| Restore -> begin
all_specs
end)
in (FStar_Getopt.parse_string specs (fun _24_356 -> ()) s)))

# 795 "FStar.Options.fst"
let parse_cmd_line : Prims.unit  ->  (FStar_Getopt.parse_cmdline_res * Prims.string Prims.list) = (fun _24_358 -> (match (()) with
| () -> begin
(
# 798 "FStar.Options.fst"
let file_list = (FStar_Util.mk_ref [])
in (
# 799 "FStar.Options.fst"
let res = (let _117_486 = (specs ())
in (FStar_Getopt.parse_cmdline _117_486 (fun i -> (let _117_485 = (let _117_484 = (FStar_ST.read file_list)
in (FStar_List.append _117_484 ((i)::[])))
in (FStar_ST.op_Colon_Equals file_list _117_485)))))
in (let _117_487 = (FStar_ST.read file_list)
in ((res), (_117_487)))))
end))

# 800 "FStar.Options.fst"
let restore_cmd_line_options : Prims.bool  ->  FStar_Getopt.parse_cmdline_res = (fun should_clear -> (
# 805 "FStar.Options.fst"
let old_verify_module = (get_verify_module ())
in (
# 806 "FStar.Options.fst"
let _24_364 = if should_clear then begin
(clear ())
end else begin
(init ())
end
in (
# 807 "FStar.Options.fst"
let r = (let _117_491 = (specs ())
in (FStar_Getopt.parse_cmdline _117_491 (fun x -> ())))
in (
# 808 "FStar.Options.fst"
let _24_368 = (let _117_495 = (let _117_494 = (let _117_493 = (FStar_List.map (fun _117_492 -> String (_117_492)) old_verify_module)
in List (_117_493))
in (("verify_module"), (_117_494)))
in (set_option' _117_495))
in r)))))

# 809 "FStar.Options.fst"
let should_verify : Prims.string  ->  Prims.bool = (fun m -> if (get_lax ()) then begin
false
end else begin
(match ((get_verify_module ())) with
| [] -> begin
true
end
| l -> begin
(FStar_List.contains (FStar_String.lowercase m) l)
end)
end)

# 816 "FStar.Options.fst"
let dont_gen_projectors : Prims.string  ->  Prims.bool = (fun m -> (let _117_500 = (get___temp_no_proj ())
in (FStar_List.contains m _117_500)))

# 818 "FStar.Options.fst"
let should_print_message : Prims.string  ->  Prims.bool = (fun m -> if (should_verify m) then begin
(m <> "Prims")
end else begin
false
end)

# 823 "FStar.Options.fst"
let include_path : Prims.unit  ->  Prims.string Prims.list = (fun _24_375 -> (match (()) with
| () -> begin
if (get_no_default_includes ()) then begin
(get_include ())
end else begin
(
# 831 "FStar.Options.fst"
let h = (fstar_home ())
in (
# 832 "FStar.Options.fst"
let defs = if (not ((get_stratified ()))) then begin
universe_include_path_base_dirs
end else begin
include_path_base_dirs
end
in (let _117_509 = (let _117_506 = (FStar_All.pipe_right defs (FStar_List.map (fun x -> (Prims.strcat h x))))
in (FStar_All.pipe_right _117_506 (FStar_List.filter FStar_Util.file_exists)))
in (let _117_508 = (let _117_507 = (get_include ())
in (FStar_List.append _117_507 ((".")::[])))
in (FStar_List.append _117_509 _117_508)))))
end
end))

# 833 "FStar.Options.fst"
let find_file : Prims.string  ->  Prims.string Prims.option = (fun filename -> if (FStar_Util.is_path_absolute filename) then begin
if (FStar_Util.file_exists filename) then begin
Some (filename)
end else begin
None
end
end else begin
(let _117_514 = (let _117_512 = (include_path ())
in (FStar_List.rev _117_512))
in (FStar_Util.find_map _117_514 (fun p -> (
# 844 "FStar.Options.fst"
let path = (FStar_Util.join_paths p filename)
in if (FStar_Util.file_exists path) then begin
Some (path)
end else begin
None
end))))
end)

# 848 "FStar.Options.fst"
let prims : Prims.unit  ->  Prims.string = (fun _24_382 -> (match (()) with
| () -> begin
(match ((get_prims ())) with
| None -> begin
(
# 853 "FStar.Options.fst"
let filename = "prims.fst"
in (match ((find_file filename)) with
| Some (result) -> begin
result
end
| None -> begin
(let _117_518 = (let _117_517 = (FStar_Util.format1 "unable to find required file \"%s\" in the module search path.\n" filename)
in FStar_Util.Failure (_117_517))
in (Prims.raise _117_518))
end))
end
| Some (x) -> begin
x
end)
end))

# 860 "FStar.Options.fst"
let prepend_output_dir : Prims.string  ->  Prims.string = (fun fname -> (match ((get_odir ())) with
| None -> begin
fname
end
| Some (x) -> begin
(Prims.strcat x (Prims.strcat "/" fname))
end))

# 865 "FStar.Options.fst"
let __temp_no_proj : Prims.string  ->  Prims.bool = (fun s -> (let _117_523 = (get___temp_no_proj ())
in (FStar_All.pipe_right _117_523 (FStar_List.contains s))))

# 867 "FStar.Options.fst"
let admit_smt_queries : Prims.unit  ->  Prims.bool = (fun _24_395 -> (match (()) with
| () -> begin
(get_admit_smt_queries ())
end))

# 868 "FStar.Options.fst"
let check_cardinality : Prims.unit  ->  Prims.bool = (fun _24_396 -> (match (()) with
| () -> begin
((get_cardinality ()) = "check")
end))

# 869 "FStar.Options.fst"
let codegen : Prims.unit  ->  Prims.string Prims.option = (fun _24_397 -> (match (()) with
| () -> begin
(get_codegen ())
end))

# 870 "FStar.Options.fst"
let codegen_libs : Prims.unit  ->  Prims.string Prims.list Prims.list = (fun _24_398 -> (match (()) with
| () -> begin
(let _117_533 = (get_codegen_lib ())
in (FStar_All.pipe_right _117_533 (FStar_List.map (fun x -> (FStar_Util.split x ".")))))
end))

# 871 "FStar.Options.fst"
let debug_any : Prims.unit  ->  Prims.bool = (fun _24_400 -> (match (()) with
| () -> begin
((get_debug ()) <> [])
end))

# 872 "FStar.Options.fst"
let debug_at_level : Prims.string  ->  debug_level_t  ->  Prims.bool = (fun modul level -> (((modul = "") || (let _117_540 = (get_debug ())
in (FStar_All.pipe_right _117_540 (FStar_List.contains modul)))) && (debug_level_geq level)))

# 873 "FStar.Options.fst"
let dep : Prims.unit  ->  Prims.string Prims.option = (fun _24_403 -> (match (()) with
| () -> begin
(get_dep ())
end))

# 874 "FStar.Options.fst"
let detail_errors : Prims.unit  ->  Prims.bool = (fun _24_404 -> (match (()) with
| () -> begin
(get_detail_errors ())
end))

# 875 "FStar.Options.fst"
let doc : Prims.unit  ->  Prims.bool = (fun _24_405 -> (match (()) with
| () -> begin
(get_doc ())
end))

# 876 "FStar.Options.fst"
let dump_module : Prims.string  ->  Prims.bool = (fun s -> (let _117_549 = (get_dump_module ())
in (FStar_All.pipe_right _117_549 (FStar_List.contains s))))

# 877 "FStar.Options.fst"
let eager_inference : Prims.unit  ->  Prims.bool = (fun _24_407 -> (match (()) with
| () -> begin
(get_eager_inference ())
end))

# 878 "FStar.Options.fst"
let explicit_deps : Prims.unit  ->  Prims.bool = (fun _24_408 -> (match (()) with
| () -> begin
(get_explicit_deps ())
end))

# 879 "FStar.Options.fst"
let fs_typ_app : Prims.unit  ->  Prims.bool = (fun _24_409 -> (match (()) with
| () -> begin
(get_fs_typ_app ())
end))

# 880 "FStar.Options.fst"
let full_context_dependency : Prims.unit  ->  Prims.bool = (fun _24_410 -> (match (()) with
| () -> begin
((get_MLish ()) = false)
end))

# 881 "FStar.Options.fst"
let hide_genident_nums : Prims.unit  ->  Prims.bool = (fun _24_411 -> (match (()) with
| () -> begin
(get_hide_genident_nums ())
end))

# 882 "FStar.Options.fst"
let hide_uvar_nums : Prims.unit  ->  Prims.bool = (fun _24_412 -> (match (()) with
| () -> begin
(get_hide_uvar_nums ())
end))

# 883 "FStar.Options.fst"
let hint_info : Prims.unit  ->  Prims.bool = (fun _24_413 -> (match (()) with
| () -> begin
(get_hint_info ())
end))

# 884 "FStar.Options.fst"
let initial_fuel : Prims.unit  ->  Prims.int = (fun _24_414 -> (match (()) with
| () -> begin
(get_initial_fuel ())
end))

# 885 "FStar.Options.fst"
let initial_ifuel : Prims.unit  ->  Prims.int = (fun _24_415 -> (match (()) with
| () -> begin
(get_initial_ifuel ())
end))

# 886 "FStar.Options.fst"
let inline_arith : Prims.unit  ->  Prims.bool = (fun _24_416 -> (match (()) with
| () -> begin
(get_inline_arith ())
end))

# 887 "FStar.Options.fst"
let interactive : Prims.unit  ->  Prims.bool = (fun _24_417 -> (match (()) with
| () -> begin
(get_in ())
end))

# 888 "FStar.Options.fst"
let interactive_fsi : Prims.unit  ->  Prims.bool = (fun _24_418 -> (match (()) with
| () -> begin
(get_fsi ())
end))

# 889 "FStar.Options.fst"
let lax : Prims.unit  ->  Prims.bool = (fun _24_419 -> (match (()) with
| () -> begin
(get_lax ())
end))

# 890 "FStar.Options.fst"
let log_queries : Prims.unit  ->  Prims.bool = (fun _24_420 -> (match (()) with
| () -> begin
(get_log_queries ())
end))

# 891 "FStar.Options.fst"
let log_types : Prims.unit  ->  Prims.bool = (fun _24_421 -> (match (()) with
| () -> begin
(get_log_types ())
end))

# 892 "FStar.Options.fst"
let max_fuel : Prims.unit  ->  Prims.int = (fun _24_422 -> (match (()) with
| () -> begin
(get_max_fuel ())
end))

# 893 "FStar.Options.fst"
let max_ifuel : Prims.unit  ->  Prims.int = (fun _24_423 -> (match (()) with
| () -> begin
(get_max_ifuel ())
end))

# 894 "FStar.Options.fst"
let min_fuel : Prims.unit  ->  Prims.int = (fun _24_424 -> (match (()) with
| () -> begin
(get_min_fuel ())
end))

# 895 "FStar.Options.fst"
let ml_ish : Prims.unit  ->  Prims.bool = (fun _24_425 -> (match (()) with
| () -> begin
(get_MLish ())
end))

# 896 "FStar.Options.fst"
let n_cores : Prims.unit  ->  Prims.int = (fun _24_426 -> (match (()) with
| () -> begin
(get_n_cores ())
end))

# 897 "FStar.Options.fst"
let no_default_includes : Prims.unit  ->  Prims.bool = (fun _24_427 -> (match (()) with
| () -> begin
(get_no_default_includes ())
end))

# 898 "FStar.Options.fst"
let no_extract : Prims.string  ->  Prims.bool = (fun s -> (let _117_594 = (get_no_extract ())
in (FStar_All.pipe_right _117_594 (FStar_List.contains s))))

# 899 "FStar.Options.fst"
let no_location_info : Prims.unit  ->  Prims.bool = (fun _24_429 -> (match (()) with
| () -> begin
(get_no_location_info ())
end))

# 900 "FStar.Options.fst"
let norm_then_print : Prims.unit  ->  Prims.bool = (fun _24_430 -> (match (()) with
| () -> begin
((get_print_before_norm ()) = false)
end))

# 901 "FStar.Options.fst"
let output_dir : Prims.unit  ->  Prims.string Prims.option = (fun _24_431 -> (match (()) with
| () -> begin
(get_odir ())
end))

# 902 "FStar.Options.fst"
let print_bound_var_types : Prims.unit  ->  Prims.bool = (fun _24_432 -> (match (()) with
| () -> begin
(get_print_bound_var_types ())
end))

# 903 "FStar.Options.fst"
let print_effect_args : Prims.unit  ->  Prims.bool = (fun _24_433 -> (match (()) with
| () -> begin
(get_print_effect_args ())
end))

# 904 "FStar.Options.fst"
let print_fuels : Prims.unit  ->  Prims.bool = (fun _24_434 -> (match (()) with
| () -> begin
(get_print_fuels ())
end))

# 905 "FStar.Options.fst"
let print_implicits : Prims.unit  ->  Prims.bool = (fun _24_435 -> (match (()) with
| () -> begin
(get_print_implicits ())
end))

# 906 "FStar.Options.fst"
let print_real_names : Prims.unit  ->  Prims.bool = (fun _24_436 -> (match (()) with
| () -> begin
(get_prn ())
end))

# 907 "FStar.Options.fst"
let print_universes : Prims.unit  ->  Prims.bool = (fun _24_437 -> (match (()) with
| () -> begin
(get_print_universes ())
end))

# 908 "FStar.Options.fst"
let record_hints : Prims.unit  ->  Prims.bool = (fun _24_438 -> (match (()) with
| () -> begin
(get_record_hints ())
end))

# 909 "FStar.Options.fst"
let reuse_hint_for : Prims.unit  ->  Prims.string Prims.option = (fun _24_439 -> (match (()) with
| () -> begin
(get_reuse_hint_for ())
end))

# 910 "FStar.Options.fst"
let silent : Prims.unit  ->  Prims.bool = (fun _24_440 -> (match (()) with
| () -> begin
(get_silent ())
end))

# 911 "FStar.Options.fst"
let split_cases : Prims.unit  ->  Prims.int = (fun _24_441 -> (match (()) with
| () -> begin
(get_split_cases ())
end))

# 912 "FStar.Options.fst"
let timing : Prims.unit  ->  Prims.bool = (fun _24_442 -> (match (()) with
| () -> begin
(get_timing ())
end))

# 913 "FStar.Options.fst"
let trace_error : Prims.unit  ->  Prims.bool = (fun _24_443 -> (match (()) with
| () -> begin
(get_trace_error ())
end))

# 914 "FStar.Options.fst"
let universes : Prims.unit  ->  Prims.bool = (fun _24_444 -> (match (()) with
| () -> begin
(not ((get_stratified ())))
end))

# 915 "FStar.Options.fst"
let unthrottle_inductives : Prims.unit  ->  Prims.bool = (fun _24_445 -> (match (()) with
| () -> begin
(get_unthrottle_inductives ())
end))

# 916 "FStar.Options.fst"
let use_eq_at_higher_order : Prims.unit  ->  Prims.bool = (fun _24_446 -> (match (()) with
| () -> begin
(get_use_eq_at_higher_order ())
end))

# 917 "FStar.Options.fst"
let use_hints : Prims.unit  ->  Prims.bool = (fun _24_447 -> (match (()) with
| () -> begin
(get_use_hints ())
end))

# 918 "FStar.Options.fst"
let use_native_int : Prims.unit  ->  Prims.bool = (fun _24_448 -> (match (()) with
| () -> begin
(get_use_native_int ())
end))

# 919 "FStar.Options.fst"
let verify_all : Prims.unit  ->  Prims.bool = (fun _24_449 -> (match (()) with
| () -> begin
(get_verify_all ())
end))

# 920 "FStar.Options.fst"
let verify_module : Prims.unit  ->  Prims.string Prims.list = (fun _24_450 -> (match (()) with
| () -> begin
(get_verify_module ())
end))

# 921 "FStar.Options.fst"
let warn_cardinality : Prims.unit  ->  Prims.bool = (fun _24_451 -> (match (()) with
| () -> begin
((get_cardinality ()) = "warn")
end))

# 922 "FStar.Options.fst"
let warn_top_level_effects : Prims.unit  ->  Prims.bool = (fun _24_452 -> (match (()) with
| () -> begin
(get_warn_top_level_effects ())
end))

# 923 "FStar.Options.fst"
let z3_exe : Prims.unit  ->  Prims.string = (fun _24_453 -> (match (()) with
| () -> begin
(match ((get_smt ())) with
| None -> begin
(FStar_Platform.exe "z3")
end
| Some (s) -> begin
s
end)
end))

# 926 "FStar.Options.fst"
let z3_timeout : Prims.unit  ->  Prims.int = (fun _24_457 -> (match (()) with
| () -> begin
(get_z3timeout ())
end))




