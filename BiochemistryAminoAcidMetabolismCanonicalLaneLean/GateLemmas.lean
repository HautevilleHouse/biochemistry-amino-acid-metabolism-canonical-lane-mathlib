import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse