import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure PathwayCrossTalkPackage where
  rasMapkInteraction : Prop
  wntBetaCateninModulation : Prop
  ampkEnergySensing : Prop
  jakStatSignaling : Prop
  integratedCellularResponse : Prop

def PathwayCrossTalkClosed (P : PathwayCrossTalkPackage) : Prop :=
  P.rasMapkInteraction ∧ P.wntBetaCateninModulation ∧ P.ampkEnergySensing ∧ P.jakStatSignaling ∧ P.integratedCellularResponse

theorem pathway_cross_talk_closed (P : PathwayCrossTalkPackage) (h1 : P.rasMapkInteraction) (h2 : P.wntBetaCateninModulation) (h3 : P.ampkEnergySensing) (h4 : P.jakStatSignaling) (h5 : P.integratedCellularResponse) :
    PathwayCrossTalkClosed P := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean