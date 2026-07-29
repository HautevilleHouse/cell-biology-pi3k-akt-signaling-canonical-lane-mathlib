import canonicalLaneMathlib.AdmissibleClass

/-!
# Signaling Analytic Foundation
-/

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure SignalingAnalyticFoundation where
  receptor : ReceptorActivationPackage
  receptorEvidence : ReceptorActivationEvidence receptor
  pi3k : Pi3kCatalysisPackage receptor
  pi3kEvidence : Pi3kCatalysisEvidence pi3k
  akt : AktPhosphorylationPackage pi3k
  aktEvidence : AktPhosphorylationEvidence akt
  downstream : DownstreamSignalingPackage akt
  downstreamEvidence : DownstreamSignalingEvidence downstream

def SignalingAnalyticFoundationClosed (S : SignalingAnalyticFoundation) : Prop :=
  ReceptorActivationClosed S.receptor ∧
  Pi3kCatalysisClosed S.pi3k ∧
  AktPhosphorylationClosed S.akt ∧
  DownstreamSignalingClosed S.downstream

theorem signaling_analytic_foundation_closed_from_evidence
    (S : SignalingAnalyticFoundation) : SignalingAnalyticFoundationClosed S := by
  exact And.intro (receptor_activation_closed_from_evidence S.receptor S.receptorEvidence)
    (And.intro (pi3k_catalysis_closed_from_evidence S.pi3k S.pi3kEvidence)
      (And.intro (akt_phosphorylation_closed_from_evidence S.akt S.aktEvidence)
        (downstream_signaling_closed_from_evidence S.downstream S.downstreamEvidence)))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
