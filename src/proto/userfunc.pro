/* userfunc.c */
void func_init(void);
int get_lambda_tv(char_u **arg, typval_T *rettv, int evaluate);
char_u *deref_func_name(char_u *name, int *lenp, partial_T **partialp, int no_autoload);
int get_func_tv(char_u *name, int len, typval_T *rettv, char_u **arg, linenr_T firstline, linenr_T lastline, int *doesrange, int evaluate, partial_T *partial, dict_T *selfdict);
void free_all_functions(void);
int func_call(char_u *name, typval_T *args, partial_T *partial, dict_T *selfdict, typval_T *rettv);
int call_func(char_u *funcname, int len, typval_T *rettv, int argcount_in, typval_T *argvars_in, int (*argv_func)(int, typval_T *, int), linenr_T firstline, linenr_T lastline, int *doesrange, int evaluate, partial_T *partial, dict_T *selfdict_in);
void ex_function(exarg_T *eap);
int eval_fname_script(char_u *p);
int translated_function_exists(char_u *name);
int function_exists(char_u *name);
char_u *get_expanded_name(char_u *name, int check);
void func_dump_profile(FILE *fd);
void prof_child_enter(proftime_T *tm);
void prof_child_exit(proftime_T *tm);
char_u *get_user_func_name(expand_T *xp, int idx);
void ex_delfunction(exarg_T *eap);
void func_unref(char_u *name);
void func_ref(char_u *name);
void ex_return(exarg_T *eap);
void ex_call(exarg_T *eap);
int do_return(exarg_T *eap, int reanimate, int is_cmd, void *rettv);
void discard_pending_return(void *rettv);
char_u *get_return_cmd(void *rettv);
char_u *get_func_line(int c, void *cookie, int indent);
void func_line_start(void *cookie);
void func_line_exec(void *cookie);
void func_line_end(void *cookie);
int func_has_ended(void *cookie);
int func_has_abort(void *cookie);
dict_T *make_partial(dict_T *selfdict_in, typval_T *rettv);
char_u *func_name(void *cookie);
linenr_T *func_breakpoint(void *cookie);
int *func_dbg_tick(void *cookie);
int func_level(void *cookie);
int current_func_returned(void);
void *save_funccal(void);
void restore_funccal(void *vfc);
int free_unref_funccal(int copyID, int testing);
hashtab_T *get_funccal_local_ht(void);
dictitem_T *get_funccal_local_var(void);
hashtab_T *get_funccal_args_ht(void);
dictitem_T *get_funccal_args_var(void);
void *clear_current_funccal(void);
void restore_current_funccal(void *f);
void list_func_vars(int *first);
dict_T *get_current_funccal_dict(hashtab_T *ht);
int set_ref_in_previous_funccal(int copyID);
int set_ref_in_call_stack(int copyID);
int set_ref_in_func_args(int copyID);
/* vim: set ft=c : */
