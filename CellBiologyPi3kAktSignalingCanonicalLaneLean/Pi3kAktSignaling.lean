import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure Pi3kAktSignalPackage where
  ptenPip3Regulation : Prop
  aktPhosphorylation : Prop
  mtorc1Activation : Prop
  downstreamProteinSynthesis : Prop

structure Pi3kAktSignalEvidence (P : Pi3kAktSignalPackage) where
  ptenPip3RegulationClosed : P.ptenPip3Regulation
  aktPhosphorylationClosed : P.aktPhosphorylation
  mtorc1ActivationClosed : P.mtorc1Activation
  downstreamProteinSynthesisClosed : P.downstreamProteinSynthesis

def Pi3kAktSignalClosed (P : Pi3kAktSignalPackage) : Prop :=
  P.ptenPip3Regulation ∧ P.aktPhosphorylation ∧ P.mtorc1Activation ∧ P.downstreamProteinSynthesis

theorem pi3k_akt_signal_closed_from_evidence (P : Pi3kAktSignalPackage) (E : Pi3kAktSignalEvidence P) :
    Pi3kAktSignalClosed P := by
  exact And.intro E.ptenPip3RegulationClosed
    (And.intro E.aktPhosphorylationClosed
      (And.intro E.mtorc1ActivationClosed E.downstreamProteinSynthesisClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
