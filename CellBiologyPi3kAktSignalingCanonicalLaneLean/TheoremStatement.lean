import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyPi3kAktSignalingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "cell-biology-pi3k-akt-signaling-canonical-lane-lean"

def sourceDescription : String := "PI3K-Akt signaling pathway: phosphorylation cascade from PIP3 to Akt activation"

def baselineCertificateLane : String := "constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen",
  constrainedStatement := "PI3K-Akt signaling cascade closed under admissible class",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end CellBiologyPi3kAktSignalingCanonicalLaneLean
end HautevilleHouse
