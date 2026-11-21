// Testdatei: Zeilenkommentar
import { readFile } from 'node:fs/promises';

const MAX_ITEMS = 16;
const RATIO = 3.14159;
const LABEL = "Tab\t \"quoted\" und ${MAX_ITEMS}";

/** Basisklasse. */
class Shape {

  constructor(name) {
    this.name = name;
  }

  area() {
    throw new Error(`${this.name}: nicht implementiert`);
  }
}

class Circle extends Shape {
  constructor(r) {
    super('circle');
    this.r = r;
  }

  area() { return RATIO * this.r ** 2; }
}

const total = (xs, init = 0) => xs.reduce((a, b) => a + b, init);
async function load(path) {
  try {
    const text = await readFile(path, 'utf8');
    const [first, ...rest] = text.split(/\r?\n/);
    return { first, rest, ok: true };
  } catch (err) {
    console.error(err.message);
    return undefined;
  }
}
export { Shape, Circle, total, load };
