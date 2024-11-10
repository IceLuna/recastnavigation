project "DebugUtils"
	language "C++"
	kind "StaticLib"

	floatingpoint "Fast"
	exceptionhandling "Off"
	rtti "Off"
	symbols "On"
	flags { "FatalCompileWarnings" }
	cppdialect "C++98"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs { 
		"DebugUtils/Include",
		"Detour/Include",
		"DetourTileCache/Include",
		"Recast/Include"
	}
	files {
		"DebugUtils/Include/*.h",
		"DebugUtils/Source/*.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	filter "configurations:Dist"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	-- windows specific
	filter "system:windows"
		platforms { "Win32", "Win64" }
		defines { "WIN32", "_WINDOWS", "_CRT_SECURE_NO_WARNINGS", "_HAS_EXCEPTIONS=0" }
		-- warnings "Extra" uses /W4 which is too aggressive for us, so use W3 instead.
		-- Disable:
		-- * C4351: new behavior for array initialization
		buildoptions { "/W3", "/wd4351" }

project "Detour"
	language "C++"
	kind "StaticLib"

	floatingpoint "Fast"
	exceptionhandling "Off"
	rtti "Off"
	symbols "On"
	flags { "FatalCompileWarnings" }
	cppdialect "C++98"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs { 
		"Detour/Include" 
	}
	files { 
		"Detour/Include/*.h", 
		"Detour/Source/*.cpp" 
	}
	-- linux library cflags and libs
	filter {"system:linux", "toolset:gcc"}
		buildoptions {
			"-Wno-error=class-memaccess",
			"-Wno-error=maybe-uninitialized"
		}
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	filter "configurations:Dist"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	-- windows specific
	filter "system:windows"
		platforms { "Win32", "Win64" }
		defines { "WIN32", "_WINDOWS", "_CRT_SECURE_NO_WARNINGS", "_HAS_EXCEPTIONS=0" }
		-- warnings "Extra" uses /W4 which is too aggressive for us, so use W3 instead.
		-- Disable:
		-- * C4351: new behavior for array initialization
		buildoptions { "/W3", "/wd4351" }

project "DetourCrowd"
	language "C++"
	kind "StaticLib"

	floatingpoint "Fast"
	exceptionhandling "Off"
	rtti "Off"
	symbols "On"
	flags { "FatalCompileWarnings" }
	cppdialect "C++98"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {
		"DetourCrowd/Include",
		"Detour/Include",
		"Recast/Include"
	}
	files {
		"DetourCrowd/Include/*.h",
		"DetourCrowd/Source/*.cpp"
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	filter "configurations:Dist"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	-- windows specific
	filter "system:windows"
		platforms { "Win32", "Win64" }
		defines { "WIN32", "_WINDOWS", "_CRT_SECURE_NO_WARNINGS", "_HAS_EXCEPTIONS=0" }
		-- warnings "Extra" uses /W4 which is too aggressive for us, so use W3 instead.
		-- Disable:
		-- * C4351: new behavior for array initialization
		buildoptions { "/W3", "/wd4351" }

project "DetourTileCache"
	language "C++"
	kind "StaticLib"

	floatingpoint "Fast"
	exceptionhandling "Off"
	rtti "Off"
	symbols "On"
	flags { "FatalCompileWarnings" }
	cppdialect "C++98"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs {
		"DetourTileCache/Include",
		"Detour/Include",
		"Recast/Include"
	}
	files {
		"DetourTileCache/Include/*.h",
		"DetourTileCache/Source/*.cpp"
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	filter "configurations:Dist"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	-- windows specific
	filter "system:windows"
		platforms { "Win32", "Win64" }
		defines { "WIN32", "_WINDOWS", "_CRT_SECURE_NO_WARNINGS", "_HAS_EXCEPTIONS=0" }
		-- warnings "Extra" uses /W4 which is too aggressive for us, so use W3 instead.
		-- Disable:
		-- * C4351: new behavior for array initialization
		buildoptions { "/W3", "/wd4351" }

project "Recast"
	language "C++"
	kind "StaticLib"

	floatingpoint "Fast"
	exceptionhandling "Off"
	rtti "Off"
	symbols "On"
	flags { "FatalCompileWarnings" }
	cppdialect "C++98"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs { 
		"Recast/Include" 
	}
	files { 
		"Recast/Include/*.h",
		"Recast/Source/*.cpp" 
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	filter "configurations:Dist"
		defines { "RC_DISABLE_ASSERTS" }
		runtime "Release"
		optimize "Speed"

	-- windows specific
	filter "system:windows"
		platforms { "Win32", "Win64" }
		defines { "WIN32", "_WINDOWS", "_CRT_SECURE_NO_WARNINGS", "_HAS_EXCEPTIONS=0" }
		-- warnings "Extra" uses /W4 which is too aggressive for us, so use W3 instead.
		-- Disable:
		-- * C4351: new behavior for array initialization
		buildoptions { "/W3", "/wd4351" }
