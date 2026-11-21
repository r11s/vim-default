// Testdatei: Zeilenkommentar
package demo.sample

import kotlin.math.PI

const val MAX_ITEMS = 16
const val MASK = 0xFF
private val RATIO = 3.14159

/** Basisschnittstelle. */
interface Shape {
    val name: String
    fun area(): Double
}

data class Point(val x: Double = 0.0, val y: Double = 0.0)

class Circle(private val center: Point, private val r: Double) : Shape {
    override val name = "circle"
    override fun area(): Double = PI * r * r
}

fun total(xs: List<Int>, default: Int? = null): Int {
    var sum = 0
    for (x in xs) {
        if (x > 0) sum += x
    }
    return if (sum == 0) default ?: 0 else sum
}

fun main(args: Array<String>) {
    val label = "Tab\t \"quoted\" und ${args.size} $MAX_ITEMS"
    val letter = 'x'
    val t = when (val n = total(listOf(1, 2, 3))) {
        0 -> -1
        else -> n
    }
    println("$label $letter $t")
}
