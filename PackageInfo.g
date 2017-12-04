#############################################################################
##  
##  PackageInfo.g for the package `fplsa'
##  
SetPackageInfo( rec(
PackageName := "FPLSA",
Subtitle := "Finitely Presented Lie Algebras",
Version := "1.2.1",
Date := "04/12/2017",

Persons := [
  rec(
    LastName := "Gerdt",
    FirstNames := "Vladimir",
    IsAuthor := true,
    IsMaintainer := false,
    Email := "gerdt@jinr.ru",
    WWWHome  := "http://compalg.jinr.ru/CAGroup/Gerdt/",
  ),
  rec(
    LastName := "Kornyak",
    FirstNames := "Vladimir",
    IsAuthor := true,
    IsMaintainer := false,
    Email := "vkornyak@gmail.com",
    WWWHome  := "http://compalg.jinr.ru/CAGroup/Kornyak",
  ),
  rec(
    LastName      := "Horn",
    FirstNames    := "Max",
    IsAuthor      := false,
    IsMaintainer  := true,
    Email         := "max.horn@math.uni-giessen.de",
    WWWHome       := "http://www.quendi.de/math",
    PostalAddress := Concatenation(
                       "AG Algebra\n",
                       "Mathematisches Institut\n",
                       "Justus-Liebig-Universität Gießen\n",
                       "Arndtstraße 2\n",
                       "35392 Gießen\n",
                       "Germany" ),
    Place         := "Gießen",
    Institution   := "Justus-Liebig-Universität Gießen"
  ),
  ],

Status := "accepted",
CommunicatedBy := "Steve Linton (St Andrews)",
AcceptDate := "07/1999",

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", ~.PackageName ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := Concatenation( "https://gap-packages.github.io/", ~.PackageName ),
README_URL      := Concatenation( ~.PackageWWWHome, "/README.md" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "/PackageInfo.g" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", ~.PackageName, "-", ~.Version ),
ArchiveFormats := ".tar.gz",

AbstractHTML :=
  "The <span class=\"pkgname\">FPLSA</span> package uses \
   the authors' C program (version 4.0) that implements \
   a Lie Todd-Coxeter method for converting \
   finitely presented Lie algebras into isomorphic \
   structure constant algebras. \
   This is called via the GAP function IsomorphismSCTableAlgebra.",


PackageDoc := rec(
  BookName := "fplsa",
  ArchiveURLSubset := [ "doc", "htm" ],
  HTMLStart := "htm/chapters.htm",
  PDFFile := "doc/manual.pdf",
  SixFile := "doc/manual.six",
  LongTitle := "Interface to fast external Lie Todd-Coxeter Program",
  Autoload := true
),

Dependencies := rec(
  GAP := ">= 4.8",
  NeededOtherPackages := [],
  SuggestedOtherPackages := [],
  ExternalConditions := []
),

AvailabilityTest := function()
  local path,file;
    # test for existence of the compiled binary
    path:= DirectoriesPackagePrograms( "fplsa" );
    file:= Filename( path, "fplsa4" );
    if file = fail then
      Info( InfoWarning, 1,
            "Package ``fplsa'': The program `fplsa4' is not compiled" );
    fi;
    return file <> fail;
  end,

Keywords := [
  "Lie algebra",
  "presentation",
  "structure constants"
],

TestFile := "tst/testall.g",

));
