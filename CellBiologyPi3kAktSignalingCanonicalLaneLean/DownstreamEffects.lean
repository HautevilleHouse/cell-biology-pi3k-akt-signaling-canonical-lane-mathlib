import canonicalLaneMathlib.AdmissibleClass
import CellBiologyPi3kAktSignalingCanonicalLaneLean.Pi3kAktCascade

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure DownstreamEffectsPackage {C : SignalingCascadePackage} (cascadeClosed : SignalingCascadeClosed C) where
  mtorc1Activation : Prop
  foxoInhibition : Prop
  gsk3Inhibition : Prop
  cellSurvival : Prop
  cellGrowth : Prop

structure DownstreamEffectsEvidence {C : SignalingCascadePackage} {cascadeClosed : SignalingCascadeClosed C} (D : DownstreamEffectsPackage cascadeClosed) where
  mtorc1ActivationClosed : D.mtorc1Activation
  foxoInhibitionClosed : D.foxoInhibition
  gsk3InhibitionClosed : D.gsk3Inhibition
  cellSurvivalClosed : D.cellSurvival
  cellGrowthClosed : D.cellGrowth

def DownstreamEffectsClosed {C : SignalingCascadePackage} {cascadeClosed : SignalingCascadeClosed C} (D : DownstreamEffectsPackage cascadeClosed) : Prop :=
  D.mtorc1Activation ∧ D.foxoInhibition ∧ D.gsk3Inhibition ∧ D.cellSurvival ∧ D.cellGrowth

theorem downstream_effects_closed_from_evidence {C : SignalingCascadePackage} {cascadeClosed : SignalingCascadeClosed C} (D : DownstreamEffectsPackage cascadeClosed) (E : DownstreamEffectsEvidence D) :
    DownstreamEffectsClosed D := by
  exact And.intro E.mtorc1ActivationClosed
    (And.intro E.foxoInhibitionClosed
      (And.intro E.gsk3InhibitionClosed
        (And.intro E.cellSurvivalClosed E.cellGrowthClosed)))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse