import canonicalLaneMathlib.AdmissibleClass
import CellBiologyPi3kAktSignalingCanonicalLaneLean.Pi3kAktReceptorActivation
import CellBiologyPi3kAktSignalingCanonicalLaneLean.Pi3kLipidKinaseCatalysis
import CellBiologyPi3kAktSignalingCanonicalLaneLean.AktPhosphorylationActivation
import CellBiologyPi3kAktSignalingCanonicalLaneLean.AktDownstreamEffectors
import CellBiologyPi3kAktSignalingCanonicalLaneLean.NegativeFeedbackRegulation

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure Pi3kAktSignalingDagPackage where
  receptorActivation : ReceptorActivationPackage
  lipidKinaseCatalysis : LipidKinaseCatalysisPackage
  aktPhosphorylation : AktPhosphorylationActivationPackage
  downstreamEffectors : AktDownstreamEffectorsPackage
  feedbackRegulation : NegativeFeedbackRegulationPackage

structure Pi3kAktSignalingDagEvidence (P : Pi3kAktSignalingDagPackage) where
  receptorActivationEvidence : ReceptorActivationEvidence P.receptorActivation
  lipidKinaseCatalysisEvidence : LipidKinaseCatalysisEvidence P.lipidKinaseCatalysis
  aktPhosphorylationEvidence : AktPhosphorylationActivationEvidence P.aktPhosphorylation
  downstreamEffectorsEvidence : AktDownstreamEffectorsEvidence P.downstreamEffectors
  feedbackRegulationEvidence : NegativeFeedbackRegulationEvidence P.feedbackRegulation

def Pi3kAktSignalingDagClosed (P : Pi3kAktSignalingDagPackage) : Prop :=
  ReceptorActivationClosed P.receptorActivation ∧
  LipidKinaseCatalysisClosed P.lipidKinaseCatalysis ∧
  AktPhosphorylationActivationClosed P.aktPhosphorylation ∧
  AktDownstreamEffectorsClosed P.downstreamEffectors ∧
  NegativeFeedbackRegulationClosed P.feedbackRegulation

theorem pi3k_akt_signaling_dag_closed_from_evidence (P : Pi3kAktSignalingDagPackage) (E : Pi3kAktSignalingDagEvidence P) : Pi3kAktSignalingDagClosed P := by
  exact And.intro (receptor_activation_closed_from_evidence P.receptorActivation E.receptorActivationEvidence)
    (And.intro (lipid_kinase_catalysis_closed_from_evidence P.lipidKinaseCatalysis E.lipidKinaseCatalysisEvidence)
      (And.intro (akt_phosphorylation_activation_closed_from_evidence P.aktPhosphorylation E.aktPhosphorylationEvidence)
        (And.intro (akt_downstream_effectors_closed_from_evidence P.downstreamEffectors E.downstreamEffectorsEvidence)
          (negative_feedback_regulation_closed_from_evidence P.feedbackRegulation E.feedbackRegulationEvidence))))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse