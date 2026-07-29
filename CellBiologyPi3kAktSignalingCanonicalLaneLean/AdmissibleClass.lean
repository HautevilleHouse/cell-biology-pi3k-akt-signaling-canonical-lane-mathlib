import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AdmissibleClass where
  object : Pi3kAktAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Pi3kAktWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
