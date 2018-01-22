package StringConcat

import "testing"

func BenchmarkSelfConcatOperator1000(b *testing.B) {
	for n := 0; n < b.N; n++ {
		SelfConcatOperator("test", 1000)
	}
}
