package StringConcat

import "testing"

// Test Benchmark
func BenchmarkSelfConcatOperator1000(b *testing.B) {
	for n := 0; n < b.N; n++ {
		SelfConcatOperator("test", 1000)
	}
}
