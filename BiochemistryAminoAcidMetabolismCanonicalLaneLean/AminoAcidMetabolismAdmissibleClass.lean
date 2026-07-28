import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AminoAcidAdmittedObject where
  aminoAcid : Type
  structureDetermined : Prop
  metabolicPosition : Prop
  conclusion : structureDetermined ∧ metabolicPosition

structure AdmissibleClass where
  object : AminoAcidAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.structureDetermined ∧ A.object.metabolicPosition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse