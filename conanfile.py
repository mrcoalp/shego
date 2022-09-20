from conans import ConanFile


class ShegoMain(ConanFile):
    requires = "imgui/1.88"
    generators = "cmake"
