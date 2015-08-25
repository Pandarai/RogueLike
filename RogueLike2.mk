##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=RogueLike2
ConfigurationName      :=Debug
WorkspacePath          := "C:\Users\Charley_Micu.GPKUK\Documents\Arc"
ProjectPath            := "C:\Users\Charley_Micu.GPKUK\Documents\Arc\RogueLike2"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Charley_Micu
Date                   :=25/08/2015
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="RogueLike2.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/ConfigurationManager.cpp$(ObjectSuffix) $(IntermediateDirectory)/RenderEngine.cpp$(ObjectSuffix) $(IntermediateDirectory)/MapLoader.cpp$(ObjectSuffix) $(IntermediateDirectory)/Utilities.cpp$(ObjectSuffix) $(IntermediateDirectory)/Image.cpp$(ObjectSuffix) $(IntermediateDirectory)/Command.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/ConfigurationManager.cpp$(ObjectSuffix): ConfigurationManager.cpp $(IntermediateDirectory)/ConfigurationManager.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/ConfigurationManager.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ConfigurationManager.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ConfigurationManager.cpp$(DependSuffix): ConfigurationManager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ConfigurationManager.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/ConfigurationManager.cpp$(DependSuffix) -MM "ConfigurationManager.cpp"

$(IntermediateDirectory)/ConfigurationManager.cpp$(PreprocessSuffix): ConfigurationManager.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ConfigurationManager.cpp$(PreprocessSuffix) "ConfigurationManager.cpp"

$(IntermediateDirectory)/RenderEngine.cpp$(ObjectSuffix): RenderEngine.cpp $(IntermediateDirectory)/RenderEngine.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/RenderEngine.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/RenderEngine.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/RenderEngine.cpp$(DependSuffix): RenderEngine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/RenderEngine.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/RenderEngine.cpp$(DependSuffix) -MM "RenderEngine.cpp"

$(IntermediateDirectory)/RenderEngine.cpp$(PreprocessSuffix): RenderEngine.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/RenderEngine.cpp$(PreprocessSuffix) "RenderEngine.cpp"

$(IntermediateDirectory)/MapLoader.cpp$(ObjectSuffix): MapLoader.cpp $(IntermediateDirectory)/MapLoader.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/MapLoader.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/MapLoader.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/MapLoader.cpp$(DependSuffix): MapLoader.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/MapLoader.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/MapLoader.cpp$(DependSuffix) -MM "MapLoader.cpp"

$(IntermediateDirectory)/MapLoader.cpp$(PreprocessSuffix): MapLoader.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/MapLoader.cpp$(PreprocessSuffix) "MapLoader.cpp"

$(IntermediateDirectory)/Utilities.cpp$(ObjectSuffix): Utilities.cpp $(IntermediateDirectory)/Utilities.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/Utilities.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Utilities.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Utilities.cpp$(DependSuffix): Utilities.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Utilities.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Utilities.cpp$(DependSuffix) -MM "Utilities.cpp"

$(IntermediateDirectory)/Utilities.cpp$(PreprocessSuffix): Utilities.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Utilities.cpp$(PreprocessSuffix) "Utilities.cpp"

$(IntermediateDirectory)/Image.cpp$(ObjectSuffix): Image.cpp $(IntermediateDirectory)/Image.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/Image.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Image.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Image.cpp$(DependSuffix): Image.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Image.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Image.cpp$(DependSuffix) -MM "Image.cpp"

$(IntermediateDirectory)/Image.cpp$(PreprocessSuffix): Image.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Image.cpp$(PreprocessSuffix) "Image.cpp"

$(IntermediateDirectory)/Command.cpp$(ObjectSuffix): Command.cpp $(IntermediateDirectory)/Command.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Charley_Micu.GPKUK/Documents/Arc/RogueLike2/Command.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Command.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Command.cpp$(DependSuffix): Command.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Command.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Command.cpp$(DependSuffix) -MM "Command.cpp"

$(IntermediateDirectory)/Command.cpp$(PreprocessSuffix): Command.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Command.cpp$(PreprocessSuffix) "Command.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


