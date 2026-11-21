// Testdatei: Zeilenkommentar
#include <iostream>
#include <memory>
#include <string>
#include <vector>

namespace geometry {

constexpr double kRatio = 3.14159;

class Shape {
public:
    virtual ~Shape() = default;
    virtual double area() const = 0;
    virtual std::string name() const { return "shape"; }
};

class Circle final : public Shape {
    double r_;
public:
    explicit Circle(double r) : r_(r) {}
    double area() const override { return kRatio * r_ * r_; }
};

template <typename T>
T total(const std::vector<T>& xs, T init = T{}) {
    for (const auto& x : xs) init += x;
    return init;
}

}  // namespace geometry
int main() {
    using namespace geometry;
    std::vector<std::unique_ptr<Shape>> shapes;
    shapes.push_back(std::make_unique<Circle>(2.0));
    auto print = [](const Shape& s) { std::cout << s.name() << " " << s.area() << '\n'; };
    for (const auto& s : shapes) print(*s);
    std::string label = "Tab\t \"quoted\" \x41";
    return shapes.empty() ? 1 : static_cast<int>(label.size() & 0xFF);
}
