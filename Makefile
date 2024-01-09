# Makefile generated by MakefileGenerator.cs
# *DO NOT EDIT*

UNREALROOTPATH = /opt/unreal-engine
GAMEPROJECTFILE =/home/apm/School/GameMechanics_UnrealEngine/Weeping/Weeping.uproject

TARGETS = \
	Weeping-Linux-Debug  \
	Weeping-Linux-DebugGame  \
	Weeping-Linux-Test  \
	Weeping-Linux-Shipping  \
	Weeping \
	WeepingEditor-Linux-Debug  \
	WeepingEditor-Linux-DebugGame  \
	WeepingEditor-Linux-Test  \
	WeepingEditor-Linux-Shipping  \
	WeepingEditor\
	configure

BUILD = bash "$(UNREALROOTPATH)/Engine/Build/BatchFiles/Linux/Build.sh"
PROJECTBUILD = "$(UNREALROOTPATH)/Engine/Binaries/ThirdParty/DotNet/6.0.302/linux/dotnet" "$(UNREALROOTPATH)/Engine/Binaries/DotNET/UnrealBuildTool/UnrealBuildTool.dll"

all: StandardSet

RequiredTools: CrashReportClient-Linux-Shipping CrashReportClientEditor-Linux-Shipping ShaderCompileWorker UnrealLightmass EpicWebHelper-Linux-Shipping

StandardSet: RequiredTools UnrealFrontend WeepingEditor UnrealInsights

DebugSet: RequiredTools UnrealFrontend-Linux-Debug WeepingEditor-Linux-Debug


Weeping-Linux-Debug:
	 $(PROJECTBUILD) Weeping Linux Debug  -project="$(GAMEPROJECTFILE)" $(ARGS)

Weeping-Linux-DebugGame:
	 $(PROJECTBUILD) Weeping Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

Weeping-Linux-Test:
	 $(PROJECTBUILD) Weeping Linux Test  -project="$(GAMEPROJECTFILE)" $(ARGS)

Weeping-Linux-Shipping:
	 $(PROJECTBUILD) Weeping Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

Weeping:
	 $(PROJECTBUILD) Weeping Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

WeepingEditor-Linux-Debug:
	 $(PROJECTBUILD) WeepingEditor Linux Debug  -project="$(GAMEPROJECTFILE)" $(ARGS)

WeepingEditor-Linux-DebugGame:
	 $(PROJECTBUILD) WeepingEditor Linux DebugGame  -project="$(GAMEPROJECTFILE)" $(ARGS)

WeepingEditor-Linux-Test:
	 $(PROJECTBUILD) WeepingEditor Linux Test  -project="$(GAMEPROJECTFILE)" $(ARGS)

WeepingEditor-Linux-Shipping:
	 $(PROJECTBUILD) WeepingEditor Linux Shipping  -project="$(GAMEPROJECTFILE)" $(ARGS)

WeepingEditor:
	 $(PROJECTBUILD) WeepingEditor Linux Development  -project="$(GAMEPROJECTFILE)" $(ARGS)

configure:
	xbuild /property:Configuration=Development /verbosity:quiet /nologo "$(UNREALROOTPATH)/Engine/Source/Programs/UnrealBuildTool/UnrealBuildTool.csproj"
	$(PROJECTBUILD) -projectfiles -project="\"$(GAMEPROJECTFILE)\"" -game -engine 

.PHONY: $(TARGETS)