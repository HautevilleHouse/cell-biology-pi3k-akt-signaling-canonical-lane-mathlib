import canonicalLaneMathlib.AdmissibleClass

/-!
# PI3K Catalysis Package
-/

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure Pi3kCatalysisPackage (R : ReceptorActivationPackage) where
  p85Recruitment : Prop
  p110Activation : Prop
  pip3Production : Prop
  membraneLocalization : Prop

structure Pi3kCatalysisEvidence {R : ReceptorActivationPackage}
    (P : Pi3kCatalysisPackage R) where
  p85RecruitmentClosed : P.p85Recruitment
  p110ActivationClosed : P.p110Activation
  pip3ProductionClosed : P.pip3Production
  membraneLocalizationClosed : P.membraneLocalization

def Pi3kCatalysisClosed {R : ReceptorActivationPackage}
    (P : Pi3kCatalysisPackage R) : Prop :=
  P.p85Recruitment ∧ P.p110Activation ∧ P.pip3Production ∧ P.membraneLocalization

theorem pi3k_catalysis_closed_from_evidence
    {R : ReceptorActivationPackage} (P : Pi3kCatalysisPackage R)
    (E : Pi3kCatalysisEvidence P) : Pi3kCatalysisClosed P := by
  exact And.intro E.p85RecruitmentClosed
    (And.intro E.p110ActivationClosed
      (And.intro E.pip3ProductionClosed E.membraneLocalizationClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
