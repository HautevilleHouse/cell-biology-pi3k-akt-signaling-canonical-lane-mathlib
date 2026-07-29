import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure NegativeFeedbackRegulationPackage where
  ptenLipidPhosphatase : Prop
  s6k1Inhibition : Prop
  irs1Degradation : Prop
  aktMembraneDissociation : Prop

structure NegativeFeedbackRegulationEvidence (N : NegativeFeedbackRegulationPackage) where
  ptenLipidPhosphataseClosed : N.ptenLipidPhosphatase
  s6k1InhibitionClosed : N.s6k1Inhibition
  irs1DegradationClosed : N.irs1Degradation
  aktMembraneDissociationClosed : N.aktMembraneDissociation

def NegativeFeedbackRegulationClosed (N : NegativeFeedbackRegulationPackage) : Prop :=
  N.ptenLipidPhosphatase ∧ N.s6k1Inhibition ∧ N.irs1Degradation ∧ N.aktMembraneDissociation

theorem negative_feedback_regulation_closed_from_evidence (N : NegativeFeedbackRegulationPackage) (E : NegativeFeedbackRegulationEvidence N) : NegativeFeedbackRegulationClosed N := by
  exact And.intro E.ptenLipidPhosphataseClosed (And.intro E.s6k1InhibitionClosed (And.intro E.irs1DegradationClosed E.aktMembraneDissociationClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse