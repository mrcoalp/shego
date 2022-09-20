// #include <imgui.h>
#include <iostream>
#include <writer.hpp>

int main() {
  // ImGui::Text("Hello, world %d", 123);
  std::cout << shego::write_iso() << std::endl;
  return 0;
}
