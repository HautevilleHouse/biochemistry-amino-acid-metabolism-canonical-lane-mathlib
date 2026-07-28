import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryAminoAcidMetabolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.structureDetermined ∧ A.object.metabolicPosition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryAminoAcidMetabolismCanonicalLaneLean
end HautevilleHouse