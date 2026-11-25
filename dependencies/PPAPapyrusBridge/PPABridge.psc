Scriptname PPABridge Hidden
{Accurate Penetration (PPA) confirmed penetration sites, from PPAPapyrusBridge.dll.
Check SKSE.GetPluginVersion("PPAPapyrusBridge") > 0 before calling, so a missing DLL logs no errors.}

; Site bits returned by GetLastSite and GetSiteMask: 1 mouth, 2 anus, 4 vagina, 8 hands

; True once PPA's API was found and the bridge listens to it
bool Function IsReady() global native

; PPA's [General] FutasUseAnus setting, read from accurate-penetration.toml at startup
bool Function FutasUseAnus() global native

; Most recent site akPartner (None = any partner) was confirmed in on akReceiver, within afMaxAge
; real seconds. 1 mouth, 2 anus, 4 vagina, 6 both, 8 hands, 0 nothing confirmed
int Function GetLastSite(Actor akReceiver, Actor akPartner, float afMaxAge) global native

; Every site confirmed within afMaxAge real seconds, as a mask of the bits above
int Function GetSiteMask(Actor akReceiver, Actor akPartner, float afMaxAge) global native
