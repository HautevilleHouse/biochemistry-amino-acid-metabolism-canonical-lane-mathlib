import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

structure AdmissibleClass where
  object : AminoAcidMetabolismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AminoAcidMetabolismClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse