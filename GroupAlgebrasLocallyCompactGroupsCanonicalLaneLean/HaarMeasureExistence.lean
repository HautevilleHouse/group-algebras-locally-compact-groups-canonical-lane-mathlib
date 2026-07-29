import canonicalLaneMathlib.AdmissibleClass

/-!
# Haar Measure Existence Package
-/

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure HaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  groupWithTopology : TopologicalGroup group
  haarMeasureExists : Prop

structure HaarMeasureEvidence (H : HaarMeasurePackage) where
  haarMeasureExistsClosed : H.haarMeasureExists

def HaarMeasureClosed (H : HaarMeasurePackage) : Prop :=
  H.haarMeasureExists

theorem haar_measure_closed_from_evidence (H : HaarMeasurePackage) (E : HaarMeasureEvidence H) : HaarMeasureClosed H := by
  exact E.haarMeasureExistsClosed

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse