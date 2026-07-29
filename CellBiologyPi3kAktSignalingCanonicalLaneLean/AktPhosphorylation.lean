import canonicalLaneMathlib.AdmissibleClass

/-!
# Akt Phosphorylation Package
-/

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AktPhosphorylationPackage {R : ReceptorActivationPackage}
    (P : Pi3kCatalysisPackage R) where
  pdk1Activation : Prop
  mtorc2Activation : Prop
  thr308Phosphorylation : Prop
  ser473Phosphorylation : Prop
  fullActivation : Prop

structure AktPhosphorylationEvidence {R : ReceptorActivationPackage}
    {P : Pi3kCatalysisPackage R} (A : AktPhosphorylationPackage P) where
  pdk1ActivationClosed : A.pdk1Activation
  mtorc2ActivationClosed : A.mtorc2Activation
  thr308PhosphorylationClosed : A.thr308Phosphorylation
  ser473PhosphorylationClosed : A.ser473Phosphorylation
  fullActivationClosed : A.fullActivation

def AktPhosphorylationClosed {R : ReceptorActivationPackage}
    {P : Pi3kCatalysisPackage R} (A : AktPhosphorylationPackage P) : Prop :=
  A.pdk1Activation ∧ A.mtorc2Activation ∧
  A.thr308Phosphorylation ∧ A.ser473Phosphorylation ∧ A.fullActivation

theorem akt_phosphorylation_closed_from_evidence
    {R : ReceptorActivationPackage} {P : Pi3kCatalysisPackage R}
    (A : AktPhosphorylationPackage P) (E : AktPhosphorylationEvidence A) :
    AktPhosphorylationClosed A := by
  exact And.intro E.pdk1ActivationClosed
    (And.intro E.mtorc2ActivationClosed
      (And.intro E.thr308PhosphorylationClosed
        (And.intro E.ser473PhosphorylationClosed E.fullActivationClosed)))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
