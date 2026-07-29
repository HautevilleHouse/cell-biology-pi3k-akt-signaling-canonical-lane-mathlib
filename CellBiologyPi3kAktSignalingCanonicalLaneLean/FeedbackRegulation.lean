import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure FeedbackRegulationPackage where
  s6k1Inhibition : Prop
  irs1Degradation : Prop
  ptenActivation : Prop
  negativeFeedbackLoop : Prop

structure FeedbackRegulationEvidence (F : FeedbackRegulationPackage) where
  s6k1InhibitionClosed : F.s6k1Inhibition
  irs1DegradationClosed : F.irs1Degradation
  ptenActivationClosed : F.ptenActivation
  negativeFeedbackLoopClosed : F.negativeFeedbackLoop

def FeedbackRegulationClosed (F : FeedbackRegulationPackage) : Prop :=
  F.s6k1Inhibition ∧ F.irs1Degradation ∧ F.ptenActivation ∧ F.negativeFeedbackLoop

theorem feedback_regulation_closed_from_evidence (F : FeedbackRegulationPackage) (E : FeedbackRegulationEvidence F) :
    FeedbackRegulationClosed F := by
  exact And.intro E.s6k1InhibitionClosed (And.intro E.irs1DegradationClosed (And.intro E.ptenActivationClosed E.negativeFeedbackLoopClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
