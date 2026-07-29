import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure AktDownstreamEffectorsPackage where
  tsc2Inhibition : Prop
  mtorc1Activation : Prop
  foxoInhibition : Prop
  gsk3Inhibition : Prop
  cellSurvival : Prop
  cellGrowth : Prop
  cellProliferation : Prop

structure AktDownstreamEffectorsEvidence (A : AktDownstreamEffectorsPackage) where
  tsc2InhibitionClosed : A.tsc2Inhibition
  mtorc1ActivationClosed : A.mtorc1Activation
  foxoInhibitionClosed : A.foxoInhibition
  gsk3InhibitionClosed : A.gsk3Inhibition
  cellSurvivalClosed : A.cellSurvival
  cellGrowthClosed : A.cellGrowth
  cellProliferationClosed : A.cellProliferation

def AktDownstreamEffectorsClosed (A : AktDownstreamEffectorsPackage) : Prop :=
  A.tsc2Inhibition ∧ A.mtorc1Activation ∧ A.foxoInhibition ∧ A.gsk3Inhibition ∧ A.cellSurvival ∧ A.cellGrowth ∧ A.cellProliferation

theorem akt_downstream_effectors_closed_from_evidence (A : AktDownstreamEffectorsPackage) (E : AktDownstreamEffectorsEvidence A) : AktDownstreamEffectorsClosed A := by
  exact And.intro E.tsc2InhibitionClosed (And.intro E.mtorc1ActivationClosed (And.intro E.foxoInhibitionClosed (And.intro E.gsk3InhibitionClosed (And.intro E.cellSurvivalClosed (And.intro E.cellGrowthClosed E.cellProliferationClosed)))))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse