import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBindingDomain : Type u
  receptorTyrosineKinase : Type v
  phosphorylationSites : Nat
  activationState : Prop
  recruitmentAdaptorProteins : Prop

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.activationState ∧ R.recruitmentAdaptorProteins

theorem receptor_activation_closed (R : ReceptorActivationPackage) (h1 : R.activationState) (h2 : R.recruitmentAdaptorProteins) :
    ReceptorActivationClosed R := by
  exact And.intro h1 h2

end HautevilleHouse
end CellBiologyPi3kAktSignalingCanonicalLaneLean