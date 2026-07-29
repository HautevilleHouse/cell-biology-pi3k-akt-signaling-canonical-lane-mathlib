import canonicalLaneMathlib.AdmissibleClass
import CellBiologyPi3kAktSignalingCanonicalLaneLean.CellSignalingObject

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure SignalingCascadePackage where
  receptorActivation : Prop
  pi3kRecruitment : Prop
  pip3Production : Prop
  aktPhosphorylation : Prop
  targetActivation : Prop

structure SignalingCascadeEvidence (C : SignalingCascadePackage) where
  receptorActivationClosed : C.receptorActivation
  pi3kRecruitmentClosed : C.pi3kRecruitment
  pip3ProductionClosed : C.pip3Production
  aktPhosphorylationClosed : C.aktPhosphorylation
  targetActivationClosed : C.targetActivation

def SignalingCascadeClosed (C : SignalingCascadePackage) : Prop :=
  C.receptorActivation ∧ C.pi3kRecruitment ∧ C.pip3Production ∧ C.aktPhosphorylation ∧ C.targetActivation

theorem signaling_cascade_closed_from_evidence (C : SignalingCascadePackage) (E : SignalingCascadeEvidence C) :
    SignalingCascadeClosed C := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.pi3kRecruitmentClosed
      (And.intro E.pip3ProductionClosed
        (And.intro E.aktPhosphorylationClosed E.targetActivationClosed)))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse