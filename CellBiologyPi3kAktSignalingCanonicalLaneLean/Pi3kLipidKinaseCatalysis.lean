import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure LipidKinaseCatalysisPackage where
  catalyticSubunitP110 : Prop
  regulatorySubunitP85 : Prop
  pip2ToPip3Conversion : Prop
  membraneLocalization : Prop

structure LipidKinaseCatalysisEvidence (L : LipidKinaseCatalysisPackage) where
  catalyticSubunitP110Closed : L.catalyticSubunitP110
  regulatorySubunitP85Closed : L.regulatorySubunitP85
  pip2ToPip3ConversionClosed : L.pip2ToPip3Conversion
  membraneLocalizationClosed : L.membraneLocalization

def LipidKinaseCatalysisClosed (L : LipidKinaseCatalysisPackage) : Prop :=
  L.catalyticSubunitP110 ∧ L.regulatorySubunitP85 ∧ L.pip2ToPip3Conversion ∧ L.membraneLocalization

theorem lipid_kinase_catalysis_closed_from_evidence (L : LipidKinaseCatalysisPackage) (E : LipidKinaseCatalysisEvidence L) : LipidKinaseCatalysisClosed L := by
  exact And.intro E.catalyticSubunitP110Closed (And.intro E.regulatorySubunitP85Closed (And.intro E.pip2ToPip3ConversionClosed E.membraneLocalizationClosed))

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse