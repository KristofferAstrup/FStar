open Prims
let (module_or_interface_name :
  FStar_Syntax_Syntax.modul -> (Prims.bool * FStar_Ident.lident)) =
  fun m  ->
    ((m.FStar_Syntax_Syntax.is_interface), (m.FStar_Syntax_Syntax.name))
  
type uenv = FStar_Extraction_ML_UEnv.uenv
let with_dsenv_of_tcenv :
  'a .
    FStar_TypeChecker_Env.env ->
      'a FStar_Syntax_DsEnv.withenv -> ('a * FStar_TypeChecker_Env.env)
  =
  fun tcenv  ->
    fun f  ->
      let uu____39 = f tcenv.FStar_TypeChecker_Env.dsenv  in
      match uu____39 with
      | (a,dsenv1) ->
          (a,
            (let uu___8_51 = tcenv  in
             {
               FStar_TypeChecker_Env.solver =
                 (uu___8_51.FStar_TypeChecker_Env.solver);
               FStar_TypeChecker_Env.range =
                 (uu___8_51.FStar_TypeChecker_Env.range);
               FStar_TypeChecker_Env.curmodule =
                 (uu___8_51.FStar_TypeChecker_Env.curmodule);
               FStar_TypeChecker_Env.gamma =
                 (uu___8_51.FStar_TypeChecker_Env.gamma);
               FStar_TypeChecker_Env.gamma_sig =
                 (uu___8_51.FStar_TypeChecker_Env.gamma_sig);
               FStar_TypeChecker_Env.gamma_cache =
                 (uu___8_51.FStar_TypeChecker_Env.gamma_cache);
               FStar_TypeChecker_Env.modules =
                 (uu___8_51.FStar_TypeChecker_Env.modules);
               FStar_TypeChecker_Env.expected_typ =
                 (uu___8_51.FStar_TypeChecker_Env.expected_typ);
               FStar_TypeChecker_Env.sigtab =
                 (uu___8_51.FStar_TypeChecker_Env.sigtab);
               FStar_TypeChecker_Env.attrtab =
                 (uu___8_51.FStar_TypeChecker_Env.attrtab);
               FStar_TypeChecker_Env.instantiate_imp =
                 (uu___8_51.FStar_TypeChecker_Env.instantiate_imp);
               FStar_TypeChecker_Env.effects =
                 (uu___8_51.FStar_TypeChecker_Env.effects);
               FStar_TypeChecker_Env.generalize =
                 (uu___8_51.FStar_TypeChecker_Env.generalize);
               FStar_TypeChecker_Env.letrecs =
                 (uu___8_51.FStar_TypeChecker_Env.letrecs);
               FStar_TypeChecker_Env.top_level =
                 (uu___8_51.FStar_TypeChecker_Env.top_level);
               FStar_TypeChecker_Env.check_uvars =
                 (uu___8_51.FStar_TypeChecker_Env.check_uvars);
               FStar_TypeChecker_Env.use_eq =
                 (uu___8_51.FStar_TypeChecker_Env.use_eq);
               FStar_TypeChecker_Env.use_eq_strict =
                 (uu___8_51.FStar_TypeChecker_Env.use_eq_strict);
               FStar_TypeChecker_Env.is_iface =
                 (uu___8_51.FStar_TypeChecker_Env.is_iface);
               FStar_TypeChecker_Env.admit =
                 (uu___8_51.FStar_TypeChecker_Env.admit);
               FStar_TypeChecker_Env.lax =
                 (uu___8_51.FStar_TypeChecker_Env.lax);
               FStar_TypeChecker_Env.lax_universes =
                 (uu___8_51.FStar_TypeChecker_Env.lax_universes);
               FStar_TypeChecker_Env.phase1 =
                 (uu___8_51.FStar_TypeChecker_Env.phase1);
               FStar_TypeChecker_Env.failhard =
                 (uu___8_51.FStar_TypeChecker_Env.failhard);
               FStar_TypeChecker_Env.nosynth =
                 (uu___8_51.FStar_TypeChecker_Env.nosynth);
               FStar_TypeChecker_Env.uvar_subtyping =
                 (uu___8_51.FStar_TypeChecker_Env.uvar_subtyping);
               FStar_TypeChecker_Env.tc_term =
                 (uu___8_51.FStar_TypeChecker_Env.tc_term);
               FStar_TypeChecker_Env.type_of =
                 (uu___8_51.FStar_TypeChecker_Env.type_of);
               FStar_TypeChecker_Env.universe_of =
                 (uu___8_51.FStar_TypeChecker_Env.universe_of);
               FStar_TypeChecker_Env.check_type_of =
                 (uu___8_51.FStar_TypeChecker_Env.check_type_of);
               FStar_TypeChecker_Env.use_bv_sorts =
                 (uu___8_51.FStar_TypeChecker_Env.use_bv_sorts);
               FStar_TypeChecker_Env.qtbl_name_and_index =
                 (uu___8_51.FStar_TypeChecker_Env.qtbl_name_and_index);
               FStar_TypeChecker_Env.normalized_eff_names =
                 (uu___8_51.FStar_TypeChecker_Env.normalized_eff_names);
               FStar_TypeChecker_Env.fv_delta_depths =
                 (uu___8_51.FStar_TypeChecker_Env.fv_delta_depths);
               FStar_TypeChecker_Env.proof_ns =
                 (uu___8_51.FStar_TypeChecker_Env.proof_ns);
               FStar_TypeChecker_Env.synth_hook =
                 (uu___8_51.FStar_TypeChecker_Env.synth_hook);
               FStar_TypeChecker_Env.try_solve_implicits_hook =
                 (uu___8_51.FStar_TypeChecker_Env.try_solve_implicits_hook);
               FStar_TypeChecker_Env.splice =
                 (uu___8_51.FStar_TypeChecker_Env.splice);
               FStar_TypeChecker_Env.mpreprocess =
                 (uu___8_51.FStar_TypeChecker_Env.mpreprocess);
               FStar_TypeChecker_Env.postprocess =
                 (uu___8_51.FStar_TypeChecker_Env.postprocess);
               FStar_TypeChecker_Env.is_native_tactic =
                 (uu___8_51.FStar_TypeChecker_Env.is_native_tactic);
               FStar_TypeChecker_Env.identifier_info =
                 (uu___8_51.FStar_TypeChecker_Env.identifier_info);
               FStar_TypeChecker_Env.tc_hooks =
                 (uu___8_51.FStar_TypeChecker_Env.tc_hooks);
               FStar_TypeChecker_Env.dsenv = dsenv1;
               FStar_TypeChecker_Env.nbe =
                 (uu___8_51.FStar_TypeChecker_Env.nbe);
               FStar_TypeChecker_Env.strict_args_tab =
                 (uu___8_51.FStar_TypeChecker_Env.strict_args_tab);
               FStar_TypeChecker_Env.erasable_types_tab =
                 (uu___8_51.FStar_TypeChecker_Env.erasable_types_tab)
             }))
  
let with_tcenv_of_env :
  'a .
    uenv ->
      (FStar_TypeChecker_Env.env -> ('a * FStar_TypeChecker_Env.env)) ->
        ('a * uenv)
  =
  fun e  ->
    fun f  ->
      let uu____87 =
        let uu____92 = FStar_Extraction_ML_UEnv.tcenv_of_uenv e  in
        f uu____92  in
      match uu____87 with
      | (a,t') ->
          let uu____99 = FStar_Extraction_ML_UEnv.set_tcenv e t'  in
          (a, uu____99)
  
let with_dsenv_of_env :
  'a . uenv -> 'a FStar_Syntax_DsEnv.withenv -> ('a * uenv) =
  fun e  ->
    fun f  ->
      let uu____128 =
        let uu____133 = FStar_Extraction_ML_UEnv.tcenv_of_uenv e  in
        with_dsenv_of_tcenv uu____133 f  in
      match uu____128 with
      | (a,tcenv) ->
          let uu____140 = FStar_Extraction_ML_UEnv.set_tcenv e tcenv  in
          (a, uu____140)
  
let (push_env : uenv -> uenv) =
  fun env  ->
    let uu____147 =
      with_tcenv_of_env env
        (fun tcenv  ->
           let uu____155 =
             let uu____156 = FStar_Extraction_ML_UEnv.tcenv_of_uenv env  in
             FStar_TypeChecker_Env.push uu____156 "top-level: push_env"  in
           ((), uu____155))
       in
    FStar_Pervasives_Native.snd uu____147
  
let (pop_env : uenv -> uenv) =
  fun env  ->
    let uu____164 =
      with_tcenv_of_env env
        (fun tcenv  ->
           let uu____172 =
             FStar_TypeChecker_Env.pop tcenv "top-level: pop_env"  in
           ((), uu____172))
       in
    FStar_Pervasives_Native.snd uu____164
  
let with_env : 'a . uenv -> (uenv -> 'a) -> 'a =
  fun env  ->
    fun f  ->
      let env1 = push_env env  in
      let res = f env1  in let uu____199 = pop_env env1  in res
  
let (env_of_tcenv :
  FStar_TypeChecker_Env.env -> FStar_Extraction_ML_UEnv.uenv) =
  fun env  -> FStar_Extraction_ML_UEnv.mkContext env 
let (parse :
  uenv ->
    Prims.string FStar_Pervasives_Native.option ->
      Prims.string -> (FStar_Syntax_Syntax.modul * uenv))
  =
  fun env  ->
    fun pre_fn  ->
      fun fn  ->
        let uu____238 = FStar_Parser_Driver.parse_file fn  in
        match uu____238 with
        | (ast,uu____255) ->
            let uu____270 =
              match pre_fn with
              | FStar_Pervasives_Native.None  -> (ast, env)
              | FStar_Pervasives_Native.Some pre_fn1 ->
                  let uu____283 = FStar_Parser_Driver.parse_file pre_fn1  in
                  (match uu____283 with
                   | (pre_ast,uu____300) ->
                       (match (pre_ast, ast) with
                        | (FStar_Parser_AST.Interface
                           (lid1,decls1,uu____321),FStar_Parser_AST.Module
                           (lid2,decls2)) when
                            FStar_Ident.lid_equals lid1 lid2 ->
                            let uu____334 =
                              let uu____339 =
                                FStar_ToSyntax_Interleave.initialize_interface
                                  lid1 decls1
                                 in
                              with_dsenv_of_env env uu____339  in
                            (match uu____334 with
                             | (uu____348,env1) ->
                                 let uu____350 =
                                   FStar_ToSyntax_Interleave.interleave_module
                                     ast true
                                    in
                                 with_dsenv_of_env env1 uu____350)
                        | uu____356 ->
                            FStar_Errors.raise_err
                              (FStar_Errors.Fatal_PreModuleMismatch,
                                "mismatch between pre-module and module\n")))
               in
            (match uu____270 with
             | (ast1,env1) ->
                 let uu____373 =
                   FStar_ToSyntax_ToSyntax.ast_modul_to_modul ast1  in
                 with_dsenv_of_env env1 uu____373)
  
let (init_env : FStar_Parser_Dep.deps -> FStar_TypeChecker_Env.env) =
  fun deps  ->
    let solver1 =
      let uu____385 = FStar_Options.lax ()  in
      if uu____385
      then FStar_SMTEncoding_Solver.dummy
      else
        (let uu___64_390 = FStar_SMTEncoding_Solver.solver  in
         {
           FStar_TypeChecker_Env.init =
             (uu___64_390.FStar_TypeChecker_Env.init);
           FStar_TypeChecker_Env.push =
             (uu___64_390.FStar_TypeChecker_Env.push);
           FStar_TypeChecker_Env.pop =
             (uu___64_390.FStar_TypeChecker_Env.pop);
           FStar_TypeChecker_Env.snapshot =
             (uu___64_390.FStar_TypeChecker_Env.snapshot);
           FStar_TypeChecker_Env.rollback =
             (uu___64_390.FStar_TypeChecker_Env.rollback);
           FStar_TypeChecker_Env.encode_sig =
             (uu___64_390.FStar_TypeChecker_Env.encode_sig);
           FStar_TypeChecker_Env.preprocess =
             FStar_Tactics_Interpreter.preprocess;
           FStar_TypeChecker_Env.solve =
             (uu___64_390.FStar_TypeChecker_Env.solve);
           FStar_TypeChecker_Env.finish =
             (uu___64_390.FStar_TypeChecker_Env.finish);
           FStar_TypeChecker_Env.refresh =
             (uu___64_390.FStar_TypeChecker_Env.refresh)
         })
       in
    let env =
      let uu____392 =
        let uu____407 = FStar_Tactics_Interpreter.primitive_steps ()  in
        FStar_TypeChecker_NBE.normalize uu____407  in
      FStar_TypeChecker_Env.initial_env deps FStar_TypeChecker_TcTerm.tc_term
        FStar_TypeChecker_TcTerm.type_of_tot_term
        FStar_TypeChecker_TcTerm.universe_of
        FStar_TypeChecker_TcTerm.check_type_of_well_typed_term solver1
        FStar_Parser_Const.prims_lid uu____392
       in
    let env1 =
      let uu___68_411 = env  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___68_411.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___68_411.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___68_411.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___68_411.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___68_411.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___68_411.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___68_411.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___68_411.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___68_411.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___68_411.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___68_411.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___68_411.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___68_411.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___68_411.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___68_411.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___68_411.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___68_411.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___68_411.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___68_411.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___68_411.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___68_411.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___68_411.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___68_411.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___68_411.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___68_411.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___68_411.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___68_411.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___68_411.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___68_411.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___68_411.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___68_411.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___68_411.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___68_411.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___68_411.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___68_411.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          FStar_Tactics_Interpreter.synthesize;
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          (uu___68_411.FStar_TypeChecker_Env.try_solve_implicits_hook);
        FStar_TypeChecker_Env.splice =
          (uu___68_411.FStar_TypeChecker_Env.splice);
        FStar_TypeChecker_Env.mpreprocess =
          (uu___68_411.FStar_TypeChecker_Env.mpreprocess);
        FStar_TypeChecker_Env.postprocess =
          (uu___68_411.FStar_TypeChecker_Env.postprocess);
        FStar_TypeChecker_Env.is_native_tactic =
          (uu___68_411.FStar_TypeChecker_Env.is_native_tactic);
        FStar_TypeChecker_Env.identifier_info =
          (uu___68_411.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___68_411.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___68_411.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___68_411.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___68_411.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___68_411.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    let env2 =
      let uu___71_413 = env1  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___71_413.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___71_413.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___71_413.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___71_413.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___71_413.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___71_413.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___71_413.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___71_413.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___71_413.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___71_413.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___71_413.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___71_413.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___71_413.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___71_413.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___71_413.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___71_413.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___71_413.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___71_413.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___71_413.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___71_413.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___71_413.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___71_413.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___71_413.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___71_413.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___71_413.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___71_413.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___71_413.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___71_413.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___71_413.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___71_413.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___71_413.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___71_413.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___71_413.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___71_413.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___71_413.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          (uu___71_413.FStar_TypeChecker_Env.synth_hook);
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          FStar_Tactics_Interpreter.solve_implicits;
        FStar_TypeChecker_Env.splice =
          (uu___71_413.FStar_TypeChecker_Env.splice);
        FStar_TypeChecker_Env.mpreprocess =
          (uu___71_413.FStar_TypeChecker_Env.mpreprocess);
        FStar_TypeChecker_Env.postprocess =
          (uu___71_413.FStar_TypeChecker_Env.postprocess);
        FStar_TypeChecker_Env.is_native_tactic =
          (uu___71_413.FStar_TypeChecker_Env.is_native_tactic);
        FStar_TypeChecker_Env.identifier_info =
          (uu___71_413.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___71_413.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___71_413.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___71_413.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___71_413.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___71_413.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    let env3 =
      let uu___74_415 = env2  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___74_415.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___74_415.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___74_415.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___74_415.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___74_415.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___74_415.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___74_415.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___74_415.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___74_415.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___74_415.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___74_415.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___74_415.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___74_415.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___74_415.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___74_415.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___74_415.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___74_415.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___74_415.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___74_415.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___74_415.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___74_415.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___74_415.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___74_415.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___74_415.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___74_415.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___74_415.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___74_415.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___74_415.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___74_415.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___74_415.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___74_415.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___74_415.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___74_415.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___74_415.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___74_415.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          (uu___74_415.FStar_TypeChecker_Env.synth_hook);
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          (uu___74_415.FStar_TypeChecker_Env.try_solve_implicits_hook);
        FStar_TypeChecker_Env.splice = FStar_Tactics_Interpreter.splice;
        FStar_TypeChecker_Env.mpreprocess =
          (uu___74_415.FStar_TypeChecker_Env.mpreprocess);
        FStar_TypeChecker_Env.postprocess =
          (uu___74_415.FStar_TypeChecker_Env.postprocess);
        FStar_TypeChecker_Env.is_native_tactic =
          (uu___74_415.FStar_TypeChecker_Env.is_native_tactic);
        FStar_TypeChecker_Env.identifier_info =
          (uu___74_415.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___74_415.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___74_415.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___74_415.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___74_415.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___74_415.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    let env4 =
      let uu___77_417 = env3  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___77_417.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___77_417.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___77_417.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___77_417.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___77_417.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___77_417.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___77_417.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___77_417.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___77_417.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___77_417.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___77_417.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___77_417.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___77_417.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___77_417.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___77_417.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___77_417.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___77_417.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___77_417.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___77_417.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___77_417.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___77_417.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___77_417.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___77_417.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___77_417.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___77_417.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___77_417.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___77_417.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___77_417.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___77_417.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___77_417.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___77_417.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___77_417.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___77_417.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___77_417.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___77_417.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          (uu___77_417.FStar_TypeChecker_Env.synth_hook);
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          (uu___77_417.FStar_TypeChecker_Env.try_solve_implicits_hook);
        FStar_TypeChecker_Env.splice =
          (uu___77_417.FStar_TypeChecker_Env.splice);
        FStar_TypeChecker_Env.mpreprocess =
          FStar_Tactics_Interpreter.mpreprocess;
        FStar_TypeChecker_Env.postprocess =
          (uu___77_417.FStar_TypeChecker_Env.postprocess);
        FStar_TypeChecker_Env.is_native_tactic =
          (uu___77_417.FStar_TypeChecker_Env.is_native_tactic);
        FStar_TypeChecker_Env.identifier_info =
          (uu___77_417.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___77_417.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___77_417.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___77_417.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___77_417.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___77_417.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    let env5 =
      let uu___80_419 = env4  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___80_419.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___80_419.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___80_419.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___80_419.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___80_419.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___80_419.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___80_419.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___80_419.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___80_419.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___80_419.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___80_419.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___80_419.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___80_419.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___80_419.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___80_419.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___80_419.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___80_419.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___80_419.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___80_419.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___80_419.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___80_419.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___80_419.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___80_419.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___80_419.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___80_419.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___80_419.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___80_419.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___80_419.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___80_419.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___80_419.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___80_419.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___80_419.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___80_419.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___80_419.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___80_419.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          (uu___80_419.FStar_TypeChecker_Env.synth_hook);
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          (uu___80_419.FStar_TypeChecker_Env.try_solve_implicits_hook);
        FStar_TypeChecker_Env.splice =
          (uu___80_419.FStar_TypeChecker_Env.splice);
        FStar_TypeChecker_Env.mpreprocess =
          (uu___80_419.FStar_TypeChecker_Env.mpreprocess);
        FStar_TypeChecker_Env.postprocess =
          FStar_Tactics_Interpreter.postprocess;
        FStar_TypeChecker_Env.is_native_tactic =
          (uu___80_419.FStar_TypeChecker_Env.is_native_tactic);
        FStar_TypeChecker_Env.identifier_info =
          (uu___80_419.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___80_419.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___80_419.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___80_419.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___80_419.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___80_419.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    let env6 =
      let uu___83_421 = env5  in
      {
        FStar_TypeChecker_Env.solver =
          (uu___83_421.FStar_TypeChecker_Env.solver);
        FStar_TypeChecker_Env.range =
          (uu___83_421.FStar_TypeChecker_Env.range);
        FStar_TypeChecker_Env.curmodule =
          (uu___83_421.FStar_TypeChecker_Env.curmodule);
        FStar_TypeChecker_Env.gamma =
          (uu___83_421.FStar_TypeChecker_Env.gamma);
        FStar_TypeChecker_Env.gamma_sig =
          (uu___83_421.FStar_TypeChecker_Env.gamma_sig);
        FStar_TypeChecker_Env.gamma_cache =
          (uu___83_421.FStar_TypeChecker_Env.gamma_cache);
        FStar_TypeChecker_Env.modules =
          (uu___83_421.FStar_TypeChecker_Env.modules);
        FStar_TypeChecker_Env.expected_typ =
          (uu___83_421.FStar_TypeChecker_Env.expected_typ);
        FStar_TypeChecker_Env.sigtab =
          (uu___83_421.FStar_TypeChecker_Env.sigtab);
        FStar_TypeChecker_Env.attrtab =
          (uu___83_421.FStar_TypeChecker_Env.attrtab);
        FStar_TypeChecker_Env.instantiate_imp =
          (uu___83_421.FStar_TypeChecker_Env.instantiate_imp);
        FStar_TypeChecker_Env.effects =
          (uu___83_421.FStar_TypeChecker_Env.effects);
        FStar_TypeChecker_Env.generalize =
          (uu___83_421.FStar_TypeChecker_Env.generalize);
        FStar_TypeChecker_Env.letrecs =
          (uu___83_421.FStar_TypeChecker_Env.letrecs);
        FStar_TypeChecker_Env.top_level =
          (uu___83_421.FStar_TypeChecker_Env.top_level);
        FStar_TypeChecker_Env.check_uvars =
          (uu___83_421.FStar_TypeChecker_Env.check_uvars);
        FStar_TypeChecker_Env.use_eq =
          (uu___83_421.FStar_TypeChecker_Env.use_eq);
        FStar_TypeChecker_Env.use_eq_strict =
          (uu___83_421.FStar_TypeChecker_Env.use_eq_strict);
        FStar_TypeChecker_Env.is_iface =
          (uu___83_421.FStar_TypeChecker_Env.is_iface);
        FStar_TypeChecker_Env.admit =
          (uu___83_421.FStar_TypeChecker_Env.admit);
        FStar_TypeChecker_Env.lax = (uu___83_421.FStar_TypeChecker_Env.lax);
        FStar_TypeChecker_Env.lax_universes =
          (uu___83_421.FStar_TypeChecker_Env.lax_universes);
        FStar_TypeChecker_Env.phase1 =
          (uu___83_421.FStar_TypeChecker_Env.phase1);
        FStar_TypeChecker_Env.failhard =
          (uu___83_421.FStar_TypeChecker_Env.failhard);
        FStar_TypeChecker_Env.nosynth =
          (uu___83_421.FStar_TypeChecker_Env.nosynth);
        FStar_TypeChecker_Env.uvar_subtyping =
          (uu___83_421.FStar_TypeChecker_Env.uvar_subtyping);
        FStar_TypeChecker_Env.tc_term =
          (uu___83_421.FStar_TypeChecker_Env.tc_term);
        FStar_TypeChecker_Env.type_of =
          (uu___83_421.FStar_TypeChecker_Env.type_of);
        FStar_TypeChecker_Env.universe_of =
          (uu___83_421.FStar_TypeChecker_Env.universe_of);
        FStar_TypeChecker_Env.check_type_of =
          (uu___83_421.FStar_TypeChecker_Env.check_type_of);
        FStar_TypeChecker_Env.use_bv_sorts =
          (uu___83_421.FStar_TypeChecker_Env.use_bv_sorts);
        FStar_TypeChecker_Env.qtbl_name_and_index =
          (uu___83_421.FStar_TypeChecker_Env.qtbl_name_and_index);
        FStar_TypeChecker_Env.normalized_eff_names =
          (uu___83_421.FStar_TypeChecker_Env.normalized_eff_names);
        FStar_TypeChecker_Env.fv_delta_depths =
          (uu___83_421.FStar_TypeChecker_Env.fv_delta_depths);
        FStar_TypeChecker_Env.proof_ns =
          (uu___83_421.FStar_TypeChecker_Env.proof_ns);
        FStar_TypeChecker_Env.synth_hook =
          (uu___83_421.FStar_TypeChecker_Env.synth_hook);
        FStar_TypeChecker_Env.try_solve_implicits_hook =
          (uu___83_421.FStar_TypeChecker_Env.try_solve_implicits_hook);
        FStar_TypeChecker_Env.splice =
          (uu___83_421.FStar_TypeChecker_Env.splice);
        FStar_TypeChecker_Env.mpreprocess =
          (uu___83_421.FStar_TypeChecker_Env.mpreprocess);
        FStar_TypeChecker_Env.postprocess =
          (uu___83_421.FStar_TypeChecker_Env.postprocess);
        FStar_TypeChecker_Env.is_native_tactic =
          FStar_Tactics_Native.is_native_tactic;
        FStar_TypeChecker_Env.identifier_info =
          (uu___83_421.FStar_TypeChecker_Env.identifier_info);
        FStar_TypeChecker_Env.tc_hooks =
          (uu___83_421.FStar_TypeChecker_Env.tc_hooks);
        FStar_TypeChecker_Env.dsenv =
          (uu___83_421.FStar_TypeChecker_Env.dsenv);
        FStar_TypeChecker_Env.nbe = (uu___83_421.FStar_TypeChecker_Env.nbe);
        FStar_TypeChecker_Env.strict_args_tab =
          (uu___83_421.FStar_TypeChecker_Env.strict_args_tab);
        FStar_TypeChecker_Env.erasable_types_tab =
          (uu___83_421.FStar_TypeChecker_Env.erasable_types_tab)
      }  in
    (env6.FStar_TypeChecker_Env.solver).FStar_TypeChecker_Env.init env6; env6
  
let (tc_one_fragment :
  FStar_Syntax_Syntax.modul FStar_Pervasives_Native.option ->
    FStar_TypeChecker_Env.env_t ->
      FStar_Parser_ParseIt.input_frag ->
        (FStar_Syntax_Syntax.modul FStar_Pervasives_Native.option *
          FStar_TypeChecker_Env.env))
  =
  fun curmod  ->
    fun env  ->
      fun frag  ->
        let fname env1 =
          let uu____456 = FStar_Options.lsp_server ()  in
          if uu____456
          then
            let uu____460 = FStar_TypeChecker_Env.get_range env1  in
            FStar_Range.file_of_range uu____460
          else
            (let uu____463 = FStar_Options.file_list ()  in
             FStar_List.hd uu____463)
           in
        let acceptable_mod_name modul =
          let uu____475 =
            let uu____477 = fname env  in
            FStar_Parser_Dep.lowercase_module_name uu____477  in
          let uu____479 =
            let uu____481 =
              FStar_Ident.string_of_lid modul.FStar_Syntax_Syntax.name  in
            FStar_String.lowercase uu____481  in
          uu____475 = uu____479  in
        let range_of_first_mod_decl modul =
          match modul with
          | FStar_Parser_AST.Module
              (uu____490,{ FStar_Parser_AST.d = uu____491;
                           FStar_Parser_AST.drange = d;
                           FStar_Parser_AST.quals = uu____493;
                           FStar_Parser_AST.attrs = uu____494;_}::uu____495)
              -> d
          | FStar_Parser_AST.Interface
              (uu____500,{ FStar_Parser_AST.d = uu____501;
                           FStar_Parser_AST.drange = d;
                           FStar_Parser_AST.quals = uu____503;
                           FStar_Parser_AST.attrs = uu____504;_}::uu____505,uu____506)
              -> d
          | uu____513 -> FStar_Range.dummyRange  in
        let uu____514 = FStar_Parser_Driver.parse_fragment frag  in
        match uu____514 with
        | FStar_Parser_Driver.Empty  -> (curmod, env)
        | FStar_Parser_Driver.Decls [] -> (curmod, env)
        | FStar_Parser_Driver.Modul ast_modul ->
            let uu____526 =
              let uu____531 =
                FStar_ToSyntax_Interleave.interleave_module ast_modul false
                 in
              FStar_All.pipe_left (with_dsenv_of_tcenv env) uu____531  in
            (match uu____526 with
             | (ast_modul1,env1) ->
                 let uu____552 =
                   let uu____557 =
                     FStar_ToSyntax_ToSyntax.partial_ast_modul_to_modul
                       curmod ast_modul1
                      in
                   FStar_All.pipe_left (with_dsenv_of_tcenv env1) uu____557
                    in
                 (match uu____552 with
                  | (modul,env2) ->
                      ((let uu____578 =
                          let uu____580 = acceptable_mod_name modul  in
                          Prims.op_Negation uu____580  in
                        if uu____578
                        then
                          let msg =
                            let uu____585 =
                              let uu____587 = fname env2  in
                              FStar_Parser_Dep.module_name_of_file uu____587
                               in
                            FStar_Util.format1
                              "Interactive mode only supports a single module at the top-level. Expected module %s"
                              uu____585
                             in
                          FStar_Errors.raise_error
                            (FStar_Errors.Fatal_NonSingletonTopLevelModule,
                              msg) (range_of_first_mod_decl ast_modul1)
                        else ());
                       (let uu____593 =
                          let uu____604 =
                            FStar_Syntax_DsEnv.syntax_only
                              env2.FStar_TypeChecker_Env.dsenv
                             in
                          if uu____604
                          then ((modul, []), env2)
                          else
                            (let uu____627 =
                               FStar_TypeChecker_Tc.tc_partial_modul env2
                                 modul
                                in
                             match uu____627 with | (m,i,e) -> ((m, i), e))
                           in
                        match uu____593 with
                        | ((modul1,uu____668),env3) ->
                            ((FStar_Pervasives_Native.Some modul1), env3)))))
        | FStar_Parser_Driver.Decls ast_decls ->
            (match curmod with
             | FStar_Pervasives_Native.None  ->
                 let uu____691 = FStar_List.hd ast_decls  in
                 (match uu____691 with
                  | { FStar_Parser_AST.d = uu____698;
                      FStar_Parser_AST.drange = rng;
                      FStar_Parser_AST.quals = uu____700;
                      FStar_Parser_AST.attrs = uu____701;_} ->
                      FStar_Errors.raise_error
                        (FStar_Errors.Fatal_ModuleFirstStatement,
                          "First statement must be a module declaration") rng)
             | FStar_Pervasives_Native.Some modul ->
                 let uu____711 =
                   FStar_Util.fold_map
                     (fun env1  ->
                        fun a_decl  ->
                          let uu____729 =
                            let uu____736 =
                              FStar_ToSyntax_Interleave.prefix_with_interface_decls
                                a_decl
                               in
                            FStar_All.pipe_left (with_dsenv_of_tcenv env1)
                              uu____736
                             in
                          match uu____729 with
                          | (decls,env2) -> (env2, decls)) env ast_decls
                    in
                 (match uu____711 with
                  | (env1,ast_decls_l) ->
                      let uu____786 =
                        let uu____791 =
                          FStar_ToSyntax_ToSyntax.decls_to_sigelts
                            (FStar_List.flatten ast_decls_l)
                           in
                        FStar_All.pipe_left (with_dsenv_of_tcenv env1)
                          uu____791
                         in
                      (match uu____786 with
                       | (sigelts,env2) ->
                           let uu____811 =
                             let uu____820 =
                               FStar_Syntax_DsEnv.syntax_only
                                 env2.FStar_TypeChecker_Env.dsenv
                                in
                             if uu____820
                             then (modul, [], env2)
                             else
                               FStar_TypeChecker_Tc.tc_more_partial_modul
                                 env2 modul sigelts
                              in
                           (match uu____811 with
                            | (modul1,uu____842,env3) ->
                                ((FStar_Pervasives_Native.Some modul1), env3)))))
  
let (load_interface_decls :
  FStar_TypeChecker_Env.env -> Prims.string -> FStar_TypeChecker_Env.env_t) =
  fun env  ->
    fun interface_file_name  ->
      let r =
        FStar_Parser_ParseIt.parse
          (FStar_Parser_ParseIt.Filename interface_file_name)
         in
      match r with
      | FStar_Parser_ParseIt.ASTFragment
          (FStar_Util.Inl (FStar_Parser_AST.Interface
           (l,decls,uu____866)),uu____867)
          ->
          let uu____890 =
            let uu____895 =
              FStar_ToSyntax_Interleave.initialize_interface l decls  in
            FStar_All.pipe_left (with_dsenv_of_tcenv env) uu____895  in
          FStar_Pervasives_Native.snd uu____890
      | FStar_Parser_ParseIt.ASTFragment uu____907 ->
          let uu____919 =
            let uu____925 =
              FStar_Util.format1
                "Unexpected result from parsing %s; expected a single interface"
                interface_file_name
               in
            (FStar_Errors.Fatal_ParseErrors, uu____925)  in
          FStar_Errors.raise_err uu____919
      | FStar_Parser_ParseIt.ParseError (err,msg,rng) ->
          FStar_Exn.raise (FStar_Errors.Error (err, msg, rng))
      | FStar_Parser_ParseIt.Term uu____935 ->
          failwith
            "Impossible: parsing a Toplevel always results in an ASTFragment"
  
let (emit : FStar_Extraction_ML_Syntax.mllib Prims.list -> unit) =
  fun mllibs  ->
    let opt = FStar_Options.codegen ()  in
    if opt <> FStar_Pervasives_Native.None
    then
      let ext =
        match opt with
        | FStar_Pervasives_Native.Some (FStar_Options.FSharp ) -> ".fs"
        | FStar_Pervasives_Native.Some (FStar_Options.OCaml ) -> ".ml"
        | FStar_Pervasives_Native.Some (FStar_Options.Plugin ) -> ".ml"
        | FStar_Pervasives_Native.Some (FStar_Options.Kremlin ) -> ".krml"
        | uu____960 -> failwith "Unrecognized option"  in
      match opt with
      | FStar_Pervasives_Native.Some (FStar_Options.FSharp ) ->
          let outdir = FStar_Options.output_dir ()  in
          FStar_List.iter (FStar_Extraction_ML_PrintML.print outdir ext)
            mllibs
      | FStar_Pervasives_Native.Some (FStar_Options.OCaml ) ->
          let outdir = FStar_Options.output_dir ()  in
          FStar_List.iter (FStar_Extraction_ML_PrintML.print outdir ext)
            mllibs
      | FStar_Pervasives_Native.Some (FStar_Options.Plugin ) ->
          let outdir = FStar_Options.output_dir ()  in
          FStar_List.iter (FStar_Extraction_ML_PrintML.print outdir ext)
            mllibs
      | FStar_Pervasives_Native.Some (FStar_Options.Kremlin ) ->
          let programs =
            FStar_List.collect FStar_Extraction_Kremlin.translate mllibs  in
          let bin = (FStar_Extraction_Kremlin.current_version, programs)  in
          (match programs with
           | (name,uu____985)::[] ->
               let uu____988 =
                 FStar_Options.prepend_output_dir (Prims.op_Hat name ext)  in
               FStar_Util.save_value_to_file uu____988 bin
           | uu____990 ->
               let uu____993 = FStar_Options.prepend_output_dir "out.krml"
                  in
               FStar_Util.save_value_to_file uu____993 bin)
      | uu____996 -> failwith "Unrecognized option"
    else ()
  
let (tc_one_file :
  uenv ->
    Prims.string FStar_Pervasives_Native.option ->
      Prims.string ->
        FStar_Parser_Dep.parsing_data ->
          (FStar_CheckedFiles.tc_result * FStar_Extraction_ML_Syntax.mllib
            FStar_Pervasives_Native.option * uenv))
  =
  fun env  ->
    fun pre_fn  ->
      fun fn  ->
        fun parsing_data  ->
          FStar_Ident.reset_gensym ();
          (let maybe_restore_opts uu____1053 =
             let uu____1054 =
               let uu____1056 = FStar_Options.interactive ()  in
               Prims.op_Negation uu____1056  in
             if uu____1054
             then
               let uu____1059 = FStar_Options.restore_cmd_line_options true
                  in
               FStar_All.pipe_right uu____1059 (fun a1  -> ())
             else ()  in
           let post_smt_encoding uu____1068 = FStar_SMTEncoding_Z3.refresh ()
              in
           let maybe_extract_mldefs tcmod env1 =
             let uu____1087 =
               (let uu____1091 = FStar_Options.codegen ()  in
                uu____1091 = FStar_Pervasives_Native.None) ||
                 (let uu____1097 =
                    FStar_Options.should_extract
                      (tcmod.FStar_Syntax_Syntax.name).FStar_Ident.str
                     in
                  Prims.op_Negation uu____1097)
                in
             if uu____1087
             then (FStar_Pervasives_Native.None, Prims.int_zero)
             else
               FStar_Util.record_time
                 (fun uu____1116  ->
                    with_env env1
                      (fun env2  ->
                         let uu____1124 =
                           FStar_Extraction_ML_Modul.extract env2 tcmod  in
                         match uu____1124 with | (uu____1133,defs) -> defs))
              in
           let maybe_extract_ml_iface tcmod env1 =
             let uu____1155 =
               let uu____1157 = FStar_Options.codegen ()  in
               uu____1157 = FStar_Pervasives_Native.None  in
             if uu____1155
             then (env1, Prims.int_zero)
             else
               FStar_Util.record_time
                 (fun uu____1176  ->
                    let uu____1177 =
                      with_env env1
                        (fun env2  ->
                           FStar_Extraction_ML_Modul.extract_iface env2 tcmod)
                       in
                    match uu____1177 with | (env2,uu____1189) -> env2)
              in
           let tc_source_file uu____1203 =
             let uu____1204 = parse env pre_fn fn  in
             match uu____1204 with
             | (fmod,env1) ->
                 let mii =
                   let uu____1220 =
                     let uu____1221 =
                       FStar_Extraction_ML_UEnv.tcenv_of_uenv env1  in
                     uu____1221.FStar_TypeChecker_Env.dsenv  in
                   FStar_Syntax_DsEnv.inclusion_info uu____1220
                     fmod.FStar_Syntax_Syntax.name
                    in
                 let check_mod uu____1235 =
                   let check1 env2 =
                     with_tcenv_of_env env2
                       (fun tcenv  ->
                          (match tcenv.FStar_TypeChecker_Env.gamma with
                           | [] -> ()
                           | uu____1275 ->
                               failwith
                                 "Impossible: gamma contains leaked names");
                          (let uu____1279 =
                             FStar_TypeChecker_Tc.check_module tcenv fmod
                               (FStar_Util.is_some pre_fn)
                              in
                           match uu____1279 with
                           | (modul,env3) ->
                               (maybe_restore_opts ();
                                (let smt_decls =
                                   let uu____1309 =
                                     let uu____1311 = FStar_Options.lax ()
                                        in
                                     Prims.op_Negation uu____1311  in
                                   if uu____1309
                                   then
                                     let smt_decls =
                                       FStar_SMTEncoding_Encode.encode_modul
                                         env3 modul
                                        in
                                     (post_smt_encoding (); smt_decls)
                                   else ([], [])  in
                                 ((modul, smt_decls), env3)))))
                      in
                   let uu____1348 =
                     FStar_Profiling.profile (fun uu____1378  -> check1 env1)
                       (FStar_Pervasives_Native.Some
                          ((fmod.FStar_Syntax_Syntax.name).FStar_Ident.str))
                       "FStar.Universal.tc_source_file"
                      in
                   match uu____1348 with
                   | ((tcmod,smt_decls),env2) ->
                       let tc_time = Prims.int_zero  in
                       let uu____1417 = maybe_extract_mldefs tcmod env2  in
                       (match uu____1417 with
                        | (extracted_defs,extract_time) ->
                            let uu____1441 =
                              maybe_extract_ml_iface tcmod env2  in
                            (match uu____1441 with
                             | (env3,iface_extraction_time) ->
                                 ({
                                    FStar_CheckedFiles.checked_module = tcmod;
                                    FStar_CheckedFiles.mii = mii;
                                    FStar_CheckedFiles.smt_decls = smt_decls;
                                    FStar_CheckedFiles.tc_time = tc_time;
                                    FStar_CheckedFiles.extraction_time =
                                      (extract_time + iface_extraction_time)
                                  }, extracted_defs, env3)))
                    in
                 let uu____1461 =
                   (FStar_Options.should_verify
                      (fmod.FStar_Syntax_Syntax.name).FStar_Ident.str)
                     &&
                     ((FStar_Options.record_hints ()) ||
                        (FStar_Options.use_hints ()))
                    in
                 if uu____1461
                 then
                   let uu____1472 = FStar_Parser_ParseIt.find_file fn  in
                   FStar_SMTEncoding_Solver.with_hints_db uu____1472
                     check_mod
                 else check_mod ()
              in
           let uu____1484 =
             let uu____1486 = FStar_Options.cache_off ()  in
             Prims.op_Negation uu____1486  in
           if uu____1484
           then
             let uu____1497 =
               FStar_CheckedFiles.load_module_from_cache env fn  in
             match uu____1497 with
             | FStar_Pervasives_Native.None  ->
                 ((let uu____1509 =
                     let uu____1511 = FStar_Parser_Dep.module_name_of_file fn
                        in
                     FStar_Options.should_be_already_cached uu____1511  in
                   if uu____1509
                   then
                     let uu____1514 =
                       let uu____1520 =
                         FStar_Util.format1
                           "Expected %s to already be checked" fn
                          in
                       (FStar_Errors.Error_AlreadyCachedAssertionFailure,
                         uu____1520)
                        in
                     FStar_Errors.raise_err uu____1514
                   else ());
                  (let uu____1527 =
                     (let uu____1531 = FStar_Options.codegen ()  in
                      FStar_Option.isSome uu____1531) &&
                       (FStar_Options.cmi ())
                      in
                   if uu____1527
                   then
                     let uu____1535 =
                       let uu____1541 =
                         FStar_Util.format1
                           "Cross-module inlining expects all modules to be checked first; %s was not checked"
                           fn
                          in
                       (FStar_Errors.Error_AlreadyCachedAssertionFailure,
                         uu____1541)
                        in
                     FStar_Errors.raise_err uu____1535
                   else ());
                  (let uu____1547 = tc_source_file ()  in
                   match uu____1547 with
                   | (tc_result,mllib,env1) ->
                       ((let uu____1572 =
                           (let uu____1576 = FStar_Errors.get_err_count ()
                               in
                            uu____1576 = Prims.int_zero) &&
                             ((FStar_Options.lax ()) ||
                                (FStar_Options.should_verify
                                   ((tc_result.FStar_CheckedFiles.checked_module).FStar_Syntax_Syntax.name).FStar_Ident.str))
                            in
                         if uu____1572
                         then
                           FStar_CheckedFiles.store_module_to_cache env1 fn
                             parsing_data tc_result
                         else ());
                        (tc_result, mllib, env1))))
             | FStar_Pervasives_Native.Some tc_result ->
                 let tcmod = tc_result.FStar_CheckedFiles.checked_module  in
                 let smt_decls = tc_result.FStar_CheckedFiles.smt_decls  in
                 ((let uu____1595 =
                     FStar_Options.dump_module
                       (tcmod.FStar_Syntax_Syntax.name).FStar_Ident.str
                      in
                   if uu____1595
                   then
                     let uu____1598 =
                       FStar_Syntax_Print.modul_to_string tcmod  in
                     FStar_Util.print1 "Module after type checking:\n%s\n"
                       uu____1598
                   else ());
                  (let extend_tcenv tcmod1 tcenv =
                     let uu____1618 =
                       let uu____1623 =
                         FStar_ToSyntax_ToSyntax.add_modul_to_env tcmod1
                           tc_result.FStar_CheckedFiles.mii
                           (FStar_TypeChecker_Normalize.erase_universes tcenv)
                          in
                       FStar_All.pipe_left (with_dsenv_of_tcenv tcenv)
                         uu____1623
                        in
                     match uu____1618 with
                     | (uu____1639,tcenv1) ->
                         let env1 =
                           FStar_TypeChecker_Tc.load_checked_module tcenv1
                             tcmod1
                            in
                         (maybe_restore_opts ();
                          (let uu____1644 =
                             let uu____1646 = FStar_Options.lax ()  in
                             Prims.op_Negation uu____1646  in
                           if uu____1644
                           then
                             (FStar_SMTEncoding_Encode.encode_modul_from_cache
                                env1 tcmod1 smt_decls;
                              post_smt_encoding ())
                           else ());
                          ((), env1))
                      in
                   let env1 =
                     FStar_Profiling.profile
                       (fun uu____1655  ->
                          let uu____1656 =
                            with_tcenv_of_env env (extend_tcenv tcmod)  in
                          FStar_All.pipe_right uu____1656
                            FStar_Pervasives_Native.snd)
                       FStar_Pervasives_Native.None
                       "FStar.Universal.extend_tcenv"
                      in
                   let mllib =
                     let uu____1670 =
                       ((let uu____1674 = FStar_Options.codegen ()  in
                         uu____1674 <> FStar_Pervasives_Native.None) &&
                          (FStar_Options.should_extract
                             (tcmod.FStar_Syntax_Syntax.name).FStar_Ident.str))
                         &&
                         ((Prims.op_Negation
                             tcmod.FStar_Syntax_Syntax.is_interface)
                            ||
                            (let uu____1680 = FStar_Options.codegen ()  in
                             uu____1680 =
                               (FStar_Pervasives_Native.Some
                                  FStar_Options.Kremlin)))
                        in
                     if uu____1670
                     then
                       let uu____1688 = maybe_extract_mldefs tcmod env1  in
                       match uu____1688 with
                       | (extracted_defs,_extraction_time) -> extracted_defs
                     else FStar_Pervasives_Native.None  in
                   let uu____1708 = maybe_extract_ml_iface tcmod env1  in
                   match uu____1708 with
                   | (env2,_time) -> (tc_result, mllib, env2)))
           else
             (let uu____1730 = tc_source_file ()  in
              match uu____1730 with
              | (tc_result,mllib,env1) -> (tc_result, mllib, env1)))
  
let (tc_one_file_for_ide :
  FStar_TypeChecker_Env.env_t ->
    Prims.string FStar_Pervasives_Native.option ->
      Prims.string ->
        FStar_Parser_Dep.parsing_data ->
          (FStar_CheckedFiles.tc_result * FStar_TypeChecker_Env.env_t))
  =
  fun env  ->
    fun pre_fn  ->
      fun fn  ->
        fun parsing_data  ->
          let env1 = env_of_tcenv env  in
          let uu____1794 = tc_one_file env1 pre_fn fn parsing_data  in
          match uu____1794 with
          | (tc_result,uu____1808,env2) ->
              let uu____1814 = FStar_Extraction_ML_UEnv.tcenv_of_uenv env2
                 in
              (tc_result, uu____1814)
  
let (needs_interleaving : Prims.string -> Prims.string -> Prims.bool) =
  fun intf  ->
    fun impl  ->
      let m1 = FStar_Parser_Dep.lowercase_module_name intf  in
      let m2 = FStar_Parser_Dep.lowercase_module_name impl  in
      ((m1 = m2) &&
         (let uu____1837 = FStar_Util.get_file_extension intf  in
          FStar_List.mem uu____1837 ["fsti"; "fsi"]))
        &&
        (let uu____1846 = FStar_Util.get_file_extension impl  in
         FStar_List.mem uu____1846 ["fst"; "fs"])
  
let (tc_one_file_from_remaining :
  Prims.string Prims.list ->
    uenv ->
      FStar_Parser_Dep.deps ->
        (Prims.string Prims.list * FStar_CheckedFiles.tc_result *
          FStar_Extraction_ML_Syntax.mllib FStar_Pervasives_Native.option *
          uenv))
  =
  fun remaining  ->
    fun env  ->
      fun deps  ->
        let uu____1889 =
          match remaining with
          | intf::impl::remaining1 when needs_interleaving intf impl ->
              let uu____1930 =
                let uu____1939 =
                  FStar_All.pipe_right impl
                    (FStar_Parser_Dep.parsing_data_of deps)
                   in
                tc_one_file env (FStar_Pervasives_Native.Some intf) impl
                  uu____1939
                 in
              (match uu____1930 with
               | (m,mllib,env1) -> (remaining1, (m, mllib, env1)))
          | intf_or_impl::remaining1 ->
              let uu____1984 =
                let uu____1993 =
                  FStar_All.pipe_right intf_or_impl
                    (FStar_Parser_Dep.parsing_data_of deps)
                   in
                tc_one_file env FStar_Pervasives_Native.None intf_or_impl
                  uu____1993
                 in
              (match uu____1984 with
               | (m,mllib,env1) -> (remaining1, (m, mllib, env1)))
          | [] -> failwith "Impossible: Empty remaining modules"  in
        match uu____1889 with
        | (remaining1,(nmods,mllib,env1)) -> (remaining1, nmods, mllib, env1)
  
let rec (tc_fold_interleave :
  FStar_Parser_Dep.deps ->
    (FStar_CheckedFiles.tc_result Prims.list *
      FStar_Extraction_ML_Syntax.mllib Prims.list * uenv) ->
      Prims.string Prims.list ->
        (FStar_CheckedFiles.tc_result Prims.list *
          FStar_Extraction_ML_Syntax.mllib Prims.list * uenv))
  =
  fun deps  ->
    fun acc  ->
      fun remaining  ->
        let as_list uu___0_2149 =
          match uu___0_2149 with
          | FStar_Pervasives_Native.None  -> []
          | FStar_Pervasives_Native.Some l -> [l]  in
        match remaining with
        | [] -> acc
        | uu____2166 ->
            let uu____2170 = acc  in
            (match uu____2170 with
             | (mods,mllibs,env) ->
                 let uu____2202 =
                   tc_one_file_from_remaining remaining env deps  in
                 (match uu____2202 with
                  | (remaining1,nmod,mllib,env1) ->
                      ((let uu____2241 =
                          let uu____2243 =
                            FStar_Options.profile_group_by_decls ()  in
                          Prims.op_Negation uu____2243  in
                        if uu____2241
                        then
                          let uu____2246 =
                            FStar_Ident.string_of_lid
                              (nmod.FStar_CheckedFiles.checked_module).FStar_Syntax_Syntax.name
                             in
                          FStar_Profiling.report_and_clear uu____2246
                        else ());
                       tc_fold_interleave deps
                         ((FStar_List.append mods [nmod]),
                           (FStar_List.append mllibs (as_list mllib)), env1)
                         remaining1)))
  
let (batch_mode_tc :
  Prims.string Prims.list ->
    FStar_Parser_Dep.deps ->
      (FStar_CheckedFiles.tc_result Prims.list * uenv * (uenv -> uenv)))
  =
  fun filenames  ->
    fun dep_graph1  ->
      (let uu____2283 = FStar_Options.debug_any ()  in
       if uu____2283
       then
         (FStar_Util.print_endline "Auto-deps kicked in; here's some info.";
          FStar_Util.print1
            "Here's the list of filenames we will process: %s\n"
            (FStar_String.concat " " filenames);
          (let uu____2291 =
             let uu____2293 =
               FStar_All.pipe_right filenames
                 (FStar_List.filter FStar_Options.should_verify_file)
                in
             FStar_String.concat " " uu____2293  in
           FStar_Util.print1
             "Here's the list of modules we will verify: %s\n" uu____2291))
       else ());
      (let env =
         let uu____2309 = init_env dep_graph1  in
         FStar_Extraction_ML_UEnv.mkContext uu____2309  in
       let uu____2310 = tc_fold_interleave dep_graph1 ([], [], env) filenames
          in
       match uu____2310 with
       | (all_mods,mllibs,env1) ->
           (emit mllibs;
            (let solver_refresh env2 =
               let uu____2354 =
                 with_tcenv_of_env env2
                   (fun tcenv  ->
                      (let uu____2363 =
                         (FStar_Options.interactive ()) &&
                           (let uu____2366 = FStar_Errors.get_err_count ()
                               in
                            uu____2366 = Prims.int_zero)
                          in
                       if uu____2363
                       then
                         (tcenv.FStar_TypeChecker_Env.solver).FStar_TypeChecker_Env.refresh
                           ()
                       else
                         (tcenv.FStar_TypeChecker_Env.solver).FStar_TypeChecker_Env.finish
                           ());
                      ((), tcenv))
                  in
               FStar_All.pipe_left FStar_Pervasives_Native.snd uu____2354  in
             (all_mods, env1, solver_refresh))))
  