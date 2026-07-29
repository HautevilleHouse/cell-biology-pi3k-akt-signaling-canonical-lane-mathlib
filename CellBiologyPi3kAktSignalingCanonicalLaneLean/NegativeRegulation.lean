import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure NegativeRegulationPackage where
  ptenPhosphataseActivity : Prop
  shipPhosphataseActivity : Prop
  ppp2r1aDephosphorylation : Prop
  trib3Inhibition : Prop
  signalingAttenuation : Prop

def NegativeRegulationClosed (N : NegativeRegulationPackage) : Prop :=
  N.ptenPhosphataseActivity ∧ N.shipPhosphataseActivity ∧ N.signalingAttenuation

theorem negative_regulation_closed (N : NegativeRegulationPackage) (h1 : N.ptenPhosphataseActivity) (h2 : N.shipPhosphataseActivity) (h3 : N.signalingAttenuation) :
    NegativeRegulationClosed N := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean