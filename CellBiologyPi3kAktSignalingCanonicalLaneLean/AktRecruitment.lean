import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AktRecruitmentPackage where
  pdk1Recruitment : Prop
  mtorc2Recruitment : Prop
  pip3Binding : Prop
  membraneTranslocation : Prop

structure AktRecruitmentEvidence (A : AktRecruitmentPackage) where
  pdk1RecruitmentClosed : A.pdk1Recruitment
  mtorc2RecruitmentClosed : A.mtorc2Recruitment
  pip3BindingClosed : A.pip3Binding
  membraneTranslocationClosed : A.membraneTranslocation

def AktRecruitmentClosed (A : AktRecruitmentPackage) : Prop :=
  A.pdk1Recruitment ∧ A.mtorc2Recruitment ∧ A.pip3Binding ∧ A.membraneTranslocation

theorem akt_recruitment_closed_from_evidence (A : AktRecruitmentPackage) (E : AktRecruitmentEvidence A) :
    AktRecruitmentClosed A := by
  exact And.intro E.pdk1RecruitmentClosed (And.intro E.mtorc2RecruitmentClosed (And.intro E.pip3BindingClosed E.membraneTranslocationClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
