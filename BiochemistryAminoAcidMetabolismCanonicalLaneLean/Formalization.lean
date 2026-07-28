import BiochemistryAminoAcidMetabolismCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

/-!
# Formalization Layer
-/

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "biochemistry-amino-acid-metabolism-canonical-lane",
  theoremObject := "Amino Acid Metabolism Constrained Closure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedAminoAcidMetabolismClosure A) := by
  intro A
  exact constrained_amino_acid_metabolism_endgame A

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse