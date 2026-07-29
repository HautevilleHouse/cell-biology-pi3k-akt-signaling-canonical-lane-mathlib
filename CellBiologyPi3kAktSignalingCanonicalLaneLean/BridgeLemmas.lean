import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Pi3kAktWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
