import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure Pi3kActivationPackage where
  p85SubunitBinding : Prop
  p110CatalyticSubunitRecruitment : Prop
  pip2ToPip3Conversion : Prop
  pip3Accumulation : Prop

structure Pi3kActivationEvidence (P : Pi3kActivationPackage) where
  p85SubunitBindingClosed : P.p85SubunitBinding
  p110CatalyticSubunitRecruitmentClosed : P.p110CatalyticSubunitRecruitment
  pip2ToPip3ConversionClosed : P.pip2ToPip3Conversion
  pip3AccumulationClosed : P.pip3Accumulation

def Pi3kActivationClosed (P : Pi3kActivationPackage) : Prop :=
  P.p85SubunitBinding ∧ P.p110CatalyticSubunitRecruitment ∧ P.pip2ToPip3Conversion ∧ P.pip3Accumulation

theorem pi3k_activation_closed_from_evidence (P : Pi3kActivationPackage) (E : Pi3kActivationEvidence P) :
    Pi3kActivationClosed P := by
  exact And.intro E.p85SubunitBindingClosed (And.intro E.p110CatalyticSubunitRecruitmentClosed (And.intro E.pip2ToPip3ConversionClosed E.pip3AccumulationClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
