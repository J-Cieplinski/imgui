project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp"
    }

    includedirs
    {
        "."
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"

    filter "system:linux"
        systemversion "latest"
        cppdialect "C++20"
        staticruntime "On"
        pic "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"