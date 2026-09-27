import MatterAtAScale.Basic
-- Size and mass cannot scale together: with a₀ m fixed, doubling a₀ halves m (m = 1/2, not 2).
example : (2 : ℝ) * 2 = 1 := by norm_num
