import canonicalLaneMathlib.AdmissibleClass
import CellBiologyPi3kAktSignalingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse