import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

def ConstrainedCellBiologyPi3kAktClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_biology_pi3k_akt_endgame (A : AdmissibleClass) :
    ConstrainedCellBiologyPi3kAktClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
