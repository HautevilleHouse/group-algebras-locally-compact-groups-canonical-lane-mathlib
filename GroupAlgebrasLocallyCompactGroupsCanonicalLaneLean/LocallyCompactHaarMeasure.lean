import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean

structure LocallyCompactHaarMeasurePackage where
  group : Type u
  topology : TopologicalSpace group
  haarMeasure : Measure group
  leftInvariant : Prop
  rightInvariant : Prop
  regularity : Prop
  integrableFunctions : Type v
  convolution : Type w
  groupAlgebra : Type x
  haarmeasureExists : Prop
  convolutionDefined : Prop
  groupAlgebraComplete : Prop

structure LocallyCompactHaarMeasureEvidence (L : LocallyCompactHaarMeasurePackage) where
  haarmeasureExistsClosed : L.haarmeasureExists
  convolutionDefinedClosed : L.convolutionDefined
  groupAlgebraCompleteClosed : L.groupAlgebraComplete

def LocallyCompactHaarMeasureClosed (L : LocallyCompactHaarMeasurePackage) : Prop :=
  L.haarmeasureExists ∧ L.convolutionDefined ∧ L.groupAlgebraComplete

theorem locally_compact_haar_measure_closed_from_evidence
    (L : LocallyCompactHaarMeasurePackage) (E : LocallyCompactHaarMeasureEvidence L) :
    LocallyCompactHaarMeasureClosed L := by
  exact And.intro E.haarmeasureExistsClosed
    (And.intro E.convolutionDefinedClosed E.groupAlgebraCompleteClosed)

end GroupAlgebrasLocallyCompactGroupsCanonicalLaneLean
end HautevilleHouse