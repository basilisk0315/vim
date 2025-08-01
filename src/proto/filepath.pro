/* filepath.c */
int modify_fname(char_u *src, int tilde_file, size_t *usedlen, char_u **fnamep, char_u **bufp, size_t *fnamelen);
void shorten_dir(char_u *str);
int file_is_readable(char_u *fname);
void f_chdir(typval_T *argvars, typval_T *rettv);
void f_delete(typval_T *argvars, typval_T *rettv);
void f_executable(typval_T *argvars, typval_T *rettv);
void f_exepath(typval_T *argvars, typval_T *rettv);
void f_filereadable(typval_T *argvars, typval_T *rettv);
void f_filewritable(typval_T *argvars, typval_T *rettv);
void f_finddir(typval_T *argvars, typval_T *rettv);
void f_findfile(typval_T *argvars, typval_T *rettv);
void f_fnamemodify(typval_T *argvars, typval_T *rettv);
void f_getcwd(typval_T *argvars, typval_T *rettv);
char_u *getfpermst(stat_T *st, char_u *perm);
void f_getfperm(typval_T *argvars, typval_T *rettv);
void f_getfsize(typval_T *argvars, typval_T *rettv);
void f_getftime(typval_T *argvars, typval_T *rettv);
char_u *getftypest(stat_T *st);
void f_getftype(typval_T *argvars, typval_T *rettv);
void f_glob(typval_T *argvars, typval_T *rettv);
void f_glob2regpat(typval_T *argvars, typval_T *rettv);
void f_globpath(typval_T *argvars, typval_T *rettv);
void f_isdirectory(typval_T *argvars, typval_T *rettv);
void f_isabsolutepath(typval_T *argvars, typval_T *rettv);
void f_mkdir(typval_T *argvars, typval_T *rettv);
void f_pathshorten(typval_T *argvars, typval_T *rettv);
void f_readdir(typval_T *argvars, typval_T *rettv);
void f_readdirex(typval_T *argvars, typval_T *rettv);
void f_readblob(typval_T *argvars, typval_T *rettv);
void f_readfile(typval_T *argvars, typval_T *rettv);
void f_resolve(typval_T *argvars, typval_T *rettv);
void f_tempname(typval_T *argvars, typval_T *rettv);
void f_writefile(typval_T *argvars, typval_T *rettv);
char_u *do_browse(int flags, char_u *title, char_u *dflt, char_u *ext, char_u *initdir, char_u *filter, buf_T *buf);
void f_browse(typval_T *argvars, typval_T *rettv);
void f_browsedir(typval_T *argvars, typval_T *rettv);
void f_filecopy(typval_T *argvars, typval_T *rettv);
size_t home_replace(buf_T *buf, char_u *src, char_u *dst, size_t dstsize, int one);
char_u *home_replace_save(buf_T *buf, char_u *src);
int fullpathcmp(char_u *s1, char_u *s2, int checkname, int expandenv);
char_u *gettail(char_u *fname);
char_u *gettail_sep(char_u *fname);
char_u *getnextcomp(char_u *fname);
char_u *get_past_head(char_u *path);
int vim_ispathsep(int c);
int vim_ispathsep_nocolon(int c);
int dir_of_file_exists(char_u *fname);
int vim_fnamecmp(char_u *x, char_u *y);
int vim_fnamencmp(char_u *x, char_u *y, size_t len);
char_u *concat_fnames(char_u *fname1, char_u *fname2, int sep);
void add_pathsep(char_u *p);
char_u *FullName_save(char_u *fname, int force);
int vim_fexists(char_u *fname);
int expand_wildcards_eval(char_u **pat, int *num_file, char_u ***file, int flags);
int expand_wildcards(int num_pat, char_u **pat, int *num_files, char_u ***files, int flags);
int match_suffix(char_u *fname);
int unix_expandpath(garray_T *gap, char_u *path, size_t wildoff, int flags, int didstar);
int gen_expand_wildcards(int num_pat, char_u **pat, int *num_file, char_u ***file, int flags);
void addfile(garray_T *gap, char_u *f, int flags);
void FreeWild(int count, char_u **files);
int pathcmp(const char *p, const char *q, int maxlen);
int vim_isAbsName(char_u *name);
int vim_FullName(char_u *fname, char_u *buf, int len, int force);
/* vim: set ft=c : */
