package StringConcatNew

import "testing"

const TEST_STRING = "test"

// check Benchmark
func benchmarkConcat(size int, SelfConcat func(string, int) string, b *testing.B) {
	for n := 0; n < b.N; n++ {
		SelfConcat(TEST_STRING, size)
	}
}

// BenchmarkConcatOperator2
func BenchmarkConcatOperator2(b *testing.B)      { benchmarkConcat(2, SelfConcatOperator, b) }
// BenchmarkConcatOperator10
func BenchmarkConcatOperator10(b *testing.B)     { benchmarkConcat(10, SelfConcatOperator, b) }
// BenchmarkConcatOperator100
func BenchmarkConcatOperator100(b *testing.B)    { benchmarkConcat(100, SelfConcatOperator, b) }
// BenchmarkConcatOperator1000
func BenchmarkConcatOperator1000(b *testing.B)   { benchmarkConcat(1000, SelfConcatOperator, b) }
// BenchmarkConcatOperator10000
func BenchmarkConcatOperator10000(b *testing.B)  { benchmarkConcat(10000, SelfConcatOperator, b) }
// BenchmarkConcatOperator100000
func BenchmarkConcatOperator100000(b *testing.B) { benchmarkConcat(100000, SelfConcatOperator, b) }

// BenchmarkConcatBuffer2
func BenchmarkConcatBuffer2(b *testing.B)      { benchmarkConcat(2, SelfConcatBuffer, b) }
// BenchmarkConcatBuffer10
func BenchmarkConcatBuffer10(b *testing.B)     { benchmarkConcat(10, SelfConcatBuffer, b) }
// BenchmarkConcatBuffer100
func BenchmarkConcatBuffer100(b *testing.B)    { benchmarkConcat(100, SelfConcatBuffer, b) }
// BenchmarkConcatBuffer1000
func BenchmarkConcatBuffer1000(b *testing.B)   { benchmarkConcat(1000, SelfConcatBuffer, b) }
// BenchmarkConcatBuffer10000
func BenchmarkConcatBuffer10000(b *testing.B)  { benchmarkConcat(10000, SelfConcatBuffer, b) }
// BenchmarkConcatBuffer100000
func BenchmarkConcatBuffer100000(b *testing.B) { benchmarkConcat(100000, SelfConcatBuffer, b) }