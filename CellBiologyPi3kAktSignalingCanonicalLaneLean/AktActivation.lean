import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AktActivationPackage where
  pdk1Recruitment : Prop
  thr308Phosphorylation : Prop
  mtorc2Activity : Prop
  ser473Phosphorylation : Prop
  fullActivation : Prop

def AktActivationClosed (A : AktActivationPackage) : Prop :=
  A.thr308Phosphorylation ∧ A.ser473Phosphorylation ∧ A.fullActivation

theorem akt_activation_closed (A : AktActivationPackage) (h1 : A.thr308Phosphorylation) (h2 : A.ser473Phosphorylation) (h3 : A.fullActivation) :
    AktActivationClosed A := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean