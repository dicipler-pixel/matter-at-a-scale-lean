<div align="center">

# Matter at a Scale: Zero, Span, and the Logarithm Between Them — Lean proofs

[![Lean proof check](https://github.com/dicipler-pixel/matter-at-a-scale-lean/actions/workflows/build.yml/badge.svg)](https://github.com/dicipler-pixel/matter-at-a-scale-lean/actions/workflows/build.yml)
![Lean](https://img.shields.io/badge/Lean-v4.34.1-blue)
![Theorems](https://img.shields.io/badge/theorems-17-2EA043)
![sorry](https://img.shields.io/badge/sorry-0-2EA043)
![Code: MIT](https://img.shields.io/badge/code-MIT-lightgrey)
![Text: CC BY 4.0](https://img.shields.io/badge/text-CC%20BY%204.0-lightgrey)
[![Paper DOI](https://img.shields.io/badge/paper-10.5281%2Fzenodo.22019892-blue)](https://doi.org/10.5281/zenodo.22019892)

Jeromie Beasley

</div>

---

## The idea in one line

Only ratios are measured. The Bohr rod `a₀ m = ħ/(αc)` ties size and mass together, so if
atoms were larger in the past then matter was lighter, and the units dictionary closes one way
only. In operator form the same demand is exact: stretching or shifting an operator leaves its
eigenspaces untouched, and its departure from normality is a pure ratio.

## What is proved

| Paper | Result | Theorem |
| :--- | :--- | :--- |
| Eq. (1) | The rigid rod `a₀ m = ħ/(αc)` | `rigid_rod` |
| Theorem 1 | With `ħ, α, c` fixed, `a₀(s) = s·a₀(1)` forces `m(s) = m(1)/s` (`s = 1+z`) | `closure_mass` |
| Theorem 1 | Mass ratios are invariant; the Rydberg–second product `Ry·T` is invariant | `closure_mass_ratio`, `closure_rydberg_second` |
| Theorem 1 | Rejected assignment: charge and mass scaling as `s` give `α ∝ s²`, `a₀ ∝ s⁻³`, a miss of `s⁴` | `rejected_alpha`, `rejected_bohr`, `rejected_miss` |
| Theorem 2 | `M_Pl ∝ 1/s` gives `G = ħc/M_Pl² ∝ s²`; `α_G = Gm²/ħc = (m/M_Pl)²` is invariant | `gravitational_G`, `alphaG_eq`, `alphaG_invariant` |
| Lemma 1 | `K ↦ cK` (`c ≠ 0`) maps each eigenspace to itself; positive `c` keeps the spectral order, negative `c` reverses it | `eigenspace_smul`, `dilation_order` |
| Sec. 3 | Offset invariance: `K ↦ K + a` maps each eigenspace to itself | `eigenspace_add_scalar` |
| Sec. 3 | Stress scales as `c⁴`, energy as `c²`; the relative departure `‖[K,K†]‖²/‖K‖⁴` is span-free | `energy_smul`, `selfComm_smul`, `stress_scales`, `departure_span_free` |

The file is [`MatterAtAScale/Basic.lean`](MatterAtAScale/Basic.lean). What is not proved is in
[`LIMITATIONS.md`](LIMITATIONS.md).

## How it is checked

Every push runs [the proof check](.github/workflows/build.yml): build against Lean v4.34.1 and
Mathlib v4.34.1, independent replay in Lean's kernel checker, an axiom audit (only `propext`,
`Classical.choice`, `Quot.sound`), and three deliberately false statements that must fail.

## The paper

*Matter at a Scale: Zero, Span, and the Logarithm Between Them*, Jeromie Beasley. DOI
[10.5281/zenodo.22019892](https://doi.org/10.5281/zenodo.22019892) (always opens the newest version).

## Licence

Copyright (c) 2026 Jeromie Beasley. Code and proofs: [MIT](LICENSE). Written text:
[CC BY 4.0](LICENSE-CC-BY-4.0.md). See [`LICENSING.md`](LICENSING.md). Citation metadata is in
[`CITATION.cff`](CITATION.cff); how AI tools were used is stated in [`AI_USE.md`](AI_USE.md).
