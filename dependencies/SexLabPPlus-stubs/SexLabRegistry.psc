Scriptname SexLabRegistry Hidden
{Compile-only stub of SexLab P+ SexLabRegistry (the real script ships with SexLab P+).
Only call after checking SKSE.GetPluginVersion("SexLabUtil") > 0.}

; Mapping: Male = 0 | Female = 1 | Futa = 2 | CrtMale = 3 | CrtFemale = 4
int Function GetSex(Actor akActor, bool abIgnoreOverwrite) native global
