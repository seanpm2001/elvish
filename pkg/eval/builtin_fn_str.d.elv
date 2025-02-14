# Outputs whether `$string`s in the given order are strictly increasing. Outputs
# `$true` when given fewer than two strings.
#
#doc:id str-lt
fn '<s' {|@string| }

# Outputs whether `$string`s in the given order are strictly non-decreasing.
# Outputs `$true` when given fewer than two strings.
#
#doc:id str-le
fn '<=s' {|@string| }

# Outputs whether `$string`s are all the same string. Outputs `$true` when given
# fewer than two strings.
#
#doc:id str-eq
fn '==s' {|@string| }

# Outputs whether `$a` and `$b` are not the same string. Equivalent to `not (==s
# $a $b)`.
#
#doc:id str-ne
fn '!=s' {|a b| }

# Outputs whether `$string`s in the given order are strictly decreasing. Outputs
# `$true` when given fewer than two strings.
#
#doc:id str-gt
fn '>s' {|@string| }

# Outputs whether `$string`s in the given order are strictly non-increasing.
# Outputs `$true` when given fewer than two strings.
#
#doc:id str-ge
fn '>=s' {|@string| }

# Output the width of `$string` when displayed on the terminal. Examples:
#
# ```elvish-transcript
# ~> wcswidth a
# ▶ 1
# ~> wcswidth lorem
# ▶ 5
# ~> wcswidth 你好，世界
# ▶ 10
# ```
fn wcswidth {|string| }

# Convert arguments to string values.
#
# ```elvish-transcript
# ~> to-string foo [a] [&k=v]
# ▶ foo
# ▶ '[a]'
# ▶ '[&k=v]'
# ```
fn to-string {|@value| }

# Outputs a string for each `$number` written in `$base`. The `$base` must be
# between 2 and 36, inclusive. Examples:
#
# ```elvish-transcript
# ~> base 2 1 3 4 16 255
# ▶ 1
# ▶ 11
# ▶ 100
# ▶ 10000
# ▶ 11111111
# ~> base 16 1 3 4 16 255
# ▶ 1
# ▶ 3
# ▶ 4
# ▶ 10
# ▶ ff
# ```
fn base {|base @number| }

# Deprecated alias for [`re:awk`](). Will be removed in 0.21.0.
fn eawk {|&sep='[ \t]+' &sep-posix=$false &sep-longest=$false f inputs?| }
