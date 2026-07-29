import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure DownstreamEffectorPackage where
  gsk3BetaInhibition : Prop
  foxoTranscriptionFactors : Prop
  mtorc1Activation : Prop
  cellGrowthSurvival : Prop
  metabolismRegulation : Prop

def DownstreamEffectorClosed (D : DownstreamEffectorPackage) : Prop :=
  D.gsk3BetaInhibition ∧ D.foxoTranscriptionFactors ∧ D.mtorc1Activation ∧ D.cellGrowthSurvival ∧ D.metabolismRegulation

theorem downstream_effector_closed (D : DownstreamEffectorPackage) (h1 : D.gsk3BetaInhibition) (h2 : D.foxoTranscriptionFactors) (h3 : D.mtorc1Activation) (h4 : D.cellGrowthSurvival) (h5 : D.metabolismRegulation) :
    DownstreamEffectorClosed D := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean