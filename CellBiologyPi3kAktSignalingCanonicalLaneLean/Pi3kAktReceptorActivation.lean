import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  recruitmentOfPi3k : Prop
  activationOfPi3k : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  receptorDimerizationClosed : R.receptorDimerization
  recruitmentOfPi3kClosed : R.recruitmentOfPi3k
  activationOfPi3kClosed : R.activationOfPi3k

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.receptorDimerization ∧ R.recruitmentOfPi3k ∧ R.activationOfPi3k

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed (And.intro E.receptorDimerizationClosed (And.intro E.recruitmentOfPi3kClosed E.activationOfPi3kClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse