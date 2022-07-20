workspace "OpenGLApp"
	architecture "x64"
	startproject "OpenGLApp"

	configurations 
	{ 
		"Debug",
		"Release",
		"Dist"
	}

	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "OpenGLApp/vendor/GLFW"
	include "OpenGLApp/vendor/Glad"
	include "OpenGLApp/vendor/ImGui"
group ""

include "OpenGLApp"