import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AminoAcidStructurePackage where
  centralCarbon : Type
  aminoGroup : Type
  carboxylGroup : Type
  sideChain : Type
  chirality : Prop
  peptideBondFormation : Prop
  structureDetermined : Prop

structure AminoAcidStructureEvidence (P : AminoAcidStructurePackage) where
  chiralityClosed : P.chirality
  peptideBondFormationClosed : P.peptideBondFormation
  structureDeterminedClosed : P.structureDetermined

def AminoAcidStructureClosed (P : AminoAcidStructurePackage) : Prop :=
  P.chirality ∧ P.peptideBondFormation ∧ P.structureDetermined

theorem amino_acid_structure_closed_from_evidence
    (P : AminoAcidStructurePackage) (E : AminoAcidStructureEvidence P) :
    AminoAcidStructureClosed P := by
  exact And.intro E.chiralityClosed
    (And.intro E.peptideBondFormationClosed E.structureDeterminedClosed)

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse