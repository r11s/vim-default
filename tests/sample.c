/* Testdatei: Blockkommentar */
#include <stdio.h>
#include <stdlib.h>

#define MAX_ITEMS 16
#define SQUARE(x) ((x) * (x))

// Zeilenkommentar
typedef enum { RED, GREEN, BLUE } Color;

typedef struct {
    double x, y;
    const char *name;
} Point;

static const double RATIO = 3.14159;
static unsigned long mask = 0xFFUL;

static double area(const Point *p, double r)
{
    return RATIO * SQUARE(r) + p->x * 0.5f;
}

int main(int argc, char **argv)
{
    Point p = { 1.0, 2.0, "origin" };
    char letter = 'x', nl = '\n';
    Color c = GREEN;

    for (int i = 0; i < MAX_ITEMS; i++) {
        if (i % 2 == 0) continue;
        printf("Tab\t%d \"quoted\" %.2f%c%c", i, area(&p, i), letter, nl);
    }
    switch (c) {
        case RED:   return EXIT_FAILURE;
        default:    break;
    }
    return argc > 1 && argv[1] != NULL ? 1 : 0;
}
