import BiochemistryAminoAcidMetabolismCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

sourceRepository : String := "biochemistry-amino-acid-metabolism-canonical-lane"

sourceDescription : String := "Amino Acid Metabolism Pathway Closure"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "unrestricted classical closure",
  constrainedStatement := "constrained theorem closure for amino acid metabolism",
  certificateLane := "metabolic_constrained",
  carriedRemainder := "classical boundary carried"
}

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked : sourceTheoremStatement.certificateLane = "metabolic_constrained" := by
  rfl

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse