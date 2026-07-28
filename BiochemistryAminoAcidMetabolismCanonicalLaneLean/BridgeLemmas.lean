import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BiochemistryAminoAcidMetabolismCanonicalLaneLean.AminoAcidMetabolism

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AminoAcidMetabolismClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse