import canonicalLaneMathlib.AdmissibleClass

/-!
# Haar Measure Structure Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure HaarMeasurePackage (G : GroupType) where
  group : G
  topology : TopologicalSpace G
  haarMeasure : MeasureTheory.Measure G
  haarExists : Prop
  haarUnique : Prop
  haarexistsClosed : haarExists
  haarUniqueClosed : haarUnique

structure HaarMeasureEvidence {G : GroupType} (H : HaarMeasurePackage G) where
  haarexistsClosed : H.haarExists
  haarUniqueClosed : H.haarUnique

def HaarMeasureClosed {G : GroupType} (H : HaarMeasurePackage G) : Prop :=
  H.haarExists ∧ H.haarUnique

theorem haar_measure_closed_from_evidence
    {G : GroupType} (H : HaarMeasurePackage G) (E : HaarMeasureEvidence H) :
    HaarMeasureClosed H := by
  exact And.intro E.haarexistsClosed E.haarUniqueClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse