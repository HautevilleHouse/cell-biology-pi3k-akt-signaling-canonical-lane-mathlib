import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AktPhosphorylationActivationPackage where
  pdk1PhosphorylationThr308 : Prop
  mtorc2PhosphorylationSer473 : Prop
  aktConformationalChange : Prop
  fullKinaseActivity : Prop

structure AktPhosphorylationActivationEvidence (A : AktPhosphorylationActivationPackage) where
  pdk1PhosphorylationThr308Closed : A.pdk1PhosphorylationThr308
  mtorc2PhosphorylationSer473Closed : A.mtorc2PhosphorylationSer473
  aktConformationalChangeClosed : A.aktConformationalChange
  fullKinaseActivityClosed : A.fullKinaseActivity

def AktPhosphorylationActivationClosed (A : AktPhosphorylationActivationPackage) : Prop :=
  A.pdk1PhosphorylationThr308 ∧ A.mtorc2PhosphorylationSer473 ∧ A.aktConformationalChange ∧ A.fullKinaseActivity

theorem akt_phosphorylation_activation_closed_from_evidence (A : AktPhosphorylationActivationPackage) (E : AktPhosphorylationActivationEvidence A) : AktPhosphorylationActivationClosed A := by
  exact And.intro E.pdk1PhosphorylationThr308Closed (And.intro E.mtorc2PhosphorylationSer473Closed (And.intro E.aktConformationalChangeClosed E.fullKinaseActivityClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse