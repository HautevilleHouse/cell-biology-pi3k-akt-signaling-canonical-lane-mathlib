import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyPi3kAktSignalingCanonicalLaneLean.Pi3kAktSignaling

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Pi3kAktSignalClosed (A.object : Pi3kAktSignalPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedPi3kAktClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_pi3k_akt_endgame (A : AdmissibleClass) :
    ConstrainedPi3kAktClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
