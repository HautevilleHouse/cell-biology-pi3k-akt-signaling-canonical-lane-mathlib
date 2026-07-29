import canonicalLaneMathlib.AdmissibleClass

/-!
# Downstream Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure DownstreamSignalingPackage {R : ReceptorActivationPackage}
    {P : Pi3kCatalysisPackage R} {A : AktPhosphorylationPackage P} where
  gsk3Phosphorylation : Prop
  foxoPhosphorylation : Prop
  mtorc1Activation : Prop
  cellGrowthRegulation : Prop
  survivalSignaling : Prop

structure DownstreamSignalingEvidence {R : ReceptorActivationPackage}
    {P : Pi3kCatalysisPackage R} {A : AktPhosphorylationPackage P}
    (D : DownstreamSignalingPackage A) where
  gsk3PhosphorylationClosed : D.gsk3Phosphorylation
  foxoPhosphorylationClosed : D.foxoPhosphorylation
  mtorc1ActivationClosed : D.mtorc1Activation
  cellGrowthRegulationClosed : D.cellGrowthRegulation
  survivalSignalingClosed : D.survivalSignaling

def DownstreamSignalingClosed {R : ReceptorActivationPackage}
    {P : Pi3kCatalysisPackage R} {A : AktPhosphorylationPackage P}
    (D : DownstreamSignalingPackage A) : Prop :=
  D.gsk3Phosphorylation ∧ D.foxoPhosphorylation ∧
  D.mtorc1Activation ∧ D.cellGrowthRegulation ∧ D.survivalSignaling

theorem downstream_signaling_closed_from_evidence
    {R : ReceptorActivationPackage} {P : Pi3kCatalysisPackage R}
    {A : AktPhosphorylationPackage P} (D : DownstreamSignalingPackage A)
    (E : DownstreamSignalingEvidence D) : DownstreamSignalingClosed D := by
  exact And.intro E.gsk3PhosphorylationClosed
    (And.intro E.foxoPhosphorylationClosed
      (And.intro E.mtorc1ActivationClosed
        (And.intro E.cellGrowthRegulationClosed E.survivalSignalingClosed)))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
