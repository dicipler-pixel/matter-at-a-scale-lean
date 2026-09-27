import MatterAtAScale.Basic
-- At z = 1 (s = 2) the rejected assignment misses by s⁴ = 16, not by s = 2.
example : (2 : ℝ) ^ 4 = 2 := by norm_num
