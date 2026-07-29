import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure Pi3kRecruitmentPackage where
  pip2SubstrateAvailable : Prop
  pi3kCatalyticSubunit : Type u
  regulatorySubunitBinding : Prop
  membraneLocalization : Prop
  phosphatidylinositolConversion : Prop

def Pi3kRecruitmentClosed (P : Pi3kRecruitmentPackage) : Prop :=
  P.pip2SubstrateAvailable ∧ P.membraneLocalization ∧ P.phosphatidylinositolConversion

theorem pi3k_recruitment_closed (P : Pi3kRecruitmentPackage) (h1 : P.pip2SubstrateAvailable) (h2 : P.membraneLocalization) (h3 : P.phosphatidylinositolConversion) :
    Pi3kRecruitmentClosed P := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean