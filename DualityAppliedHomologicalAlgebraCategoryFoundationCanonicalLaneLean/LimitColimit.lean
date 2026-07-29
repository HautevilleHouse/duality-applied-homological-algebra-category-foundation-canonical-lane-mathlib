import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean

structure LimitColimit (C : Type u) [Category C] where
  limit : (J : Type u) → [SmallCategory J] → (diagram : Functor J C) → C
  limitCone : ∀ (J : Type u) [SmallCategory J] (diagram : Functor J C), Cone diagram (limit J diagram)
  universalProperty : ∀ (J : Type u) [SmallCategory J] (diagram : Functor J C) (X : C) (c : Cone diagram X),
    ∃! f : X ⟶ limit J diagram, ∀ j : J, (limitCone J diagram).π.app j ∘ f = c.π.app j
  colimit : (J : Type u) → [SmallCategory J] → (diagram : Functor J C) → C
  colimitCocone : ∀ (J : Type u) [SmallCategory J] (diagram : Functor J C), Cocone diagram (colimit J diagram)
  universalPropertyColimit : ∀ (J : Type u) [SmallCategory J] (diagram : Functor J C) (X : C) (c : Cocone diagram X),
    ∃! f : colimit J diagram ⟶ X, ∀ j : J, f ∘ (colimitCocone J diagram).ι.app j = c.ι.app j

def LimitColimitClosed {C : Type u} [Category C] (L : LimitColimit C) : Prop :=
  L.universalProperty ∧ L.universalPropertyColimit

end DualityAppliedHomologicalAlgebraCategoryFoundationCanonicalLaneLean
end HautevilleHouse