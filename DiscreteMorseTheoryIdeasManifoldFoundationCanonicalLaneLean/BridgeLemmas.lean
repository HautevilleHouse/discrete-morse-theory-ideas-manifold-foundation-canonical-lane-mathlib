import DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MorseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscreteMorseTheoryIdeasManifoldFoundationCanonicalLaneLean
end HautevilleHouse