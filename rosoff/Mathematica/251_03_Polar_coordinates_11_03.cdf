(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     29143,        843]
NotebookOptionsPosition[     27780,        789]
NotebookOutlinePosition[     28221,        806]
CellTagsIndexPosition[     28178,        803]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Become a polar explorer\n",
 StyleBox["D. Rosoff", "Section"]
}], "Title",
 CellFrame->{{0, 0}, {3, 0}},
 CellChangeTimes->{{3.5579369513061953`*^9, 3.557936982279769*^9}}],

Cell[TextData[{
 StyleBox["In this worksheet you will learn how to work with polar \
coordinates in ",
  FontSize->18],
 StyleBox["Mathematica",
  FontSize->18,
  FontSlant->"Italic"],
 StyleBox[". Many of these techniques and ideas carry over to the \
three-dimensional alternative coordinate systems we\[CloseCurlyQuote]ll meet \
in Section 12.7.\n\nRemember the things you have learned about using ",
  FontSize->18],
 StyleBox["Mathematica",
  FontSize->18,
  FontSlant->"Italic"],
 StyleBox[" already: the document is organized into cells, some of which \
contain text and some of which contain mathematics. Mathematical cells can be \
",
  FontSize->18],
 StyleBox["evaluated",
  FontSize->18,
  FontSlant->"Italic"],
 StyleBox[" by hitting Shift+Enter while the cursor is in the cell. These \
cells are color-coded to help you avoid syntax errors. The most common things \
people forget are: use parentheses () for grouping, square brackets [] for \
functions, and curly braces {} for lists; you can omit the asterisk * for \
multiplication, but you need to put a space between factors; and built-in \
functions always get capital letters.",
  FontSize->18]
}], "Text",
 CellChangeTimes->{{3.5579370002885675`*^9, 3.5579371721888385`*^9}, {
  3.5579407502004538`*^9, 3.5579407744430094`*^9}}],

Cell[CellGroupData[{

Cell["Polar Coordinates: A Manipulator", "Subtitle",
 CellFrame->{{0, 0}, {2, 0}},
 CellChangeTimes->{{3.557838425020811*^9, 3.557838430466011*^9}}],

Cell[TextData[{
 StyleBox["This command looks complicated (I had to type it vertically, so \
that I could find all the brackets without going (further) off my rocker), \
but the object it generates is easy to use. Evaluate the cell below by \
placing the cursor anywhere in it and hitting Shift+Enter (or Enter on the \
numeric keypad). Then, move the sliders to watch how the location of the \
point changes as its polar coordinates change. If you click the small plus \
signs to the right of the sliders, you will see windows displaying current \
values of ",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" and \[Theta] as well as more advanced controls that let you \
control an animation. Play with it. The text in the figure shows the current ",
  FontSize->16],
 StyleBox["x",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["- and ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["-coordinates of the moving point. By default, the manipulator \
sliders let ",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" range from 0 to 3 and \[Theta] range from ",
  FontSize->16],
 StyleBox["\[Dash]",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["2\[Pi] to 2\[Pi]. You can change these ranges by modifying the \
last two lines. ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.557838436356411*^9, 3.557838451472411*^9}, {
  3.5578393340864077`*^9, 3.557839336488408*^9}, {3.557839576481608*^9, 
  3.557839589096408*^9}, {3.5578488883080783`*^9, 3.5578490285493813`*^9}, {
  3.5578490924872475`*^9, 3.557849128616153*^9}, {3.557867747798756*^9, 
  3.557867755957033*^9}, {3.557936933295396*^9, 3.557936938652608*^9}}],

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"PolarPlot", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"1", ",", "2", ",", "3"}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"t", ",", "0", ",", 
          RowBox[{"2", "*", "Pi"}]}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}], ",", 
        RowBox[{"PolarAxes", "\[Rule]", "True"}], ",", 
        RowBox[{"PolarGridLines", "\[Rule]", "True"}], ",", 
        RowBox[{"Epilog", "\[Rule]", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Point", "[", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"r", "*", 
               RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
              RowBox[{"r", "*", 
               RowBox[{"Sin", "[", "\[Theta]", "]"}]}]}], "}"}], 
            "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}]}]}], 
       "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Text", "[", 
          RowBox[{"\"\<x =\>\"", " ", ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "6"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"r", " ", 
            RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"5", ",", "6"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<y =\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"4", ",", "5.5"}], "}"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Text", "[", 
          RowBox[{
           RowBox[{"r", " ", 
            RowBox[{"Sin", "[", "\[Theta]", "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"5", ",", "5.5"}], "}"}]}], "]"}]}], 
        "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", "]"}]}], 
     "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"r", ",", "0", ",", "3"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", 
     RowBox[{
      RowBox[{"-", "2"}], "*", "Pi"}], ",", 
     RowBox[{"2", "*", "Pi"}], ",", "0.001"}], "}"}]}], "\[IndentingNewLine]",
   "]"}]], "Input",
 CellChangeTimes->{{3.5578280088408513`*^9, 3.5578280689640217`*^9}, {
   3.557828123564722*^9, 3.5578281476670313`*^9}, {3.5578281784930267`*^9, 
   3.557828181176261*^9}, {3.557828266524955*^9, 3.5578285220242357`*^9}, {
   3.5578291594955482`*^9, 3.557829168574748*^9}, {3.557838201315611*^9, 
   3.5578382587978106`*^9}, {3.557838296279411*^9, 3.5578383816012106`*^9}, {
   3.5578384827396107`*^9, 3.557838518202211*^9}, {3.5578386004242105`*^9, 
   3.5578387296859255`*^9}, {3.557839596418408*^9, 3.557839606761608*^9}, {
   3.5578396393406076`*^9, 3.5578396397926083`*^9}, {3.5578397867140083`*^9, 
   3.557839959018008*^9}, {3.5578481375668507`*^9, 3.5578483766524506`*^9}, {
   3.5578488063884506`*^9, 3.55784880758965*^9}, {3.5578664860373936`*^9, 
   3.5578665112359133`*^9}, {3.557866546645454*^9, 3.5578666562614145`*^9}, {
   3.55786693114233*^9, 3.5578669753218136`*^9}, {3.5578670108900414`*^9, 
   3.5578670951929817`*^9}, 3.5578674039606333`*^9, {3.557867472493851*^9, 
   3.5578675204745293`*^9}, {3.557867556040249*^9, 3.557867574384673*^9}, {
   3.5578676524576683`*^9, 3.557867713012986*^9}, {3.5579367852904406`*^9, 
   3.557936820424441*^9}, {3.5579371985891175`*^9, 3.5579372138581705`*^9}, 
   3.5580139738891125`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Exploring polar curves", "Subtitle",
 CellChangeTimes->{{3.5578491804132643`*^9, 3.557849184562838*^9}}],

Cell[TextData[{
 StyleBox["It\[CloseCurlyQuote]s easy to ask ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" to plot one or more polar curves. Usually, such curves are \
expressed as equations ",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" = ",
  FontSize->16],
 StyleBox["g",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["(\[Theta]), so that ",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is the dependent variable, like ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is often the dependent variable when we plot functions in the \
usual rectangular coordinate system. Remember, when you are defining a \
function, you must use the underscore _ one, and only one, time: at \
definition. To obtain a \[Theta] you can use the Special Characters palette \
in the Palettes menu, or using the keyboard enter: Esc t h Esc. (Or you can \
just use a Roman letter instead of a Greek one.) If you enter \[Theta] on the \
keyboard this way, you won\[CloseCurlyQuote]t see it appear until you\
\[CloseCurlyQuote]ve entered all four keystrokes, Esc, then \
\[OpenCurlyQuote]t\[CloseCurlyQuote], then \[OpenCurlyQuote]h\
\[CloseCurlyQuote], then Esc again. You can produce other letters in the \
Greek alphabet this way, too. \
\[Alpha]\[Beta]\[Gamma]\[Delta]\[Epsilon]\[Zeta]\[Eta]\[Theta]\[Iota]\[Kappa]\
\[Lambda]\[Mu]\[Nu]\[Omicron]\[Pi]\[Rho]\[Sigma]\[Tau]\[Upsilon]\[Phi]\[Chi]\
\[Psi]\[Omega], yo.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578491892584076`*^9, 3.5578493518214264`*^9}, {
  3.557849820494666*^9, 3.557849858246666*^9}, {3.5580199072103853`*^9, 
  3.558020010785742*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"r1", "[", "\[Theta]_", "]"}], "=", 
  RowBox[{"2", "*", 
   RowBox[{"Cos", "[", "\[Theta]", "]"}]}]}]], "Input",
 CellChangeTimes->{{3.557849265860713*^9, 3.5578492668747063`*^9}, {
   3.5578493568133945`*^9, 3.557849374363282*^9}, 3.5578696659222307`*^9}],

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", ",

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", " ", "0", ",", " ", 
     RowBox[{"2", "*", "Pi"}]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.557849523706066*^9, 3.557849533300066*^9}}],

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", "Size->16,
  FontSlant->"Italic"],
 StyleBox[" is the dependent variable, like ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is often the dependent variable when we plot fu,

Cell[BoxData[
 RowBox[{"PolarPlot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", "0", ",", 
     RowBox[{"2", "*", "Pi"}]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5578493796516485`*^9, 3.5578493831460257`*^9}, {
  3.557849583409666*^9, 3.557849593081666*^9}}],

Cell[TextData[StyleBox["At the end of the worksheet, there is another \
Manipulate object that will show you in vivid detail how the cosine curve and \
circle are related. For now, let\[CloseCurlyQuote]s talk more about plots.",
 FontSize->16]], "Text",
 CellChangeTimes->{{3.557937357305855*^9, 3.557937388397072*^9}}],

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", "Size->16,
  FontSlant->"Italic"],
 StyleBox[" is the dependent variable, like ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is often the dependent variable when we plot functions in the \
usual rectangular coordinate system. Remember, when you are defining a \
function, you must use the underscore _ one, and only one, time: at \
definition. To obtain a \[Theta] you can use the Special Characters palette \
in the Palettes menu, or using the keyboard enter: Esc t h Esc. (Or you can \
just use a Roman letter instead of a Greek one.) If you enter \[Theta] on the \
keyboard this way, you won\[CloseCurlyQuote]t see it appear until you\
\[CloseCurlyQuote]ve entered all four keystrokes, Esc, then \
\[OpenCurlyQuote]t\[CloseCurlyQuote], then \[OpenCurlyQuote]h\
\[CloseCurlyQuote], then Esc ag,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use th,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Thet,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[,

Cell[TextData[{
 StyleBox["Have ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" plot all these functions. If you want several plots on the same \
set of axes, call the PolarPlot function on a list such as {",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["1[\[Theta]], ",
  FontSize->16],
 StyleBox["r",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["2[\[Theta]]}. You can include any number of functions in your \
list. ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" will color the curves differently automatically.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5579372485281034`*^9, 3.5579373173368626`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use ,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", "Size->16,
  FontSlant->"Italic"],
 StyleBox[" is the dependent variable, like ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is often the dependent variable when we plot functions in the \
usual rectangular coordinate system. Remember, when you are defining a \
function, you must use the underscore _ one, and only one, time: at \
definition. To obtain a \[Theta] you can use the Special Characters pale,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) ,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
  3.557849434359541*^9, 3.557849521288066*^9}}],

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"r1", "[", "\[Theta]", "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"\[Theta]", ",", "Size->16,
  FontSlant->"Italic"],
 StyleBox[" is the dependent variable, like ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" is often the dependent variable when we plot functions in the \
usual rectangular coordinate system. Remember, when you are defining a \
function, you must use the underscore _ one, and only one, time: at \
definition. To obtain a \[Theta] you can use the Special Characters palette \
in the Palettes menu, or using the keyboard enter: Esc t h Esc. (Or you can \
just use a Roman letter instead of a Greek one.) If you enter \[Theta] on the \
keyboard this way, you won\[CloseCurlyQ,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.557849398511927*^9}, {
 ,

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm",
  FontSize->16],
 StyleBox["(\[Theta]) = 2 cos(\[Theta]). But if we try to use the usual Plot \
command . . . ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578493894483852`*^9, 3.5578493
}, Open  ]],

Cell[CellGroupData[{

ze->16],
 Cell[BoxData[
  FormBox[
   SubscriptBox["r", "1"], TraditionalForm]],
  FormatType->"TraditionalForm,

Cell[BoxData[
 RowBox[{
  RowBox[{"r", "[", 
   RowBox[{"x_", ",", "y_"}], "]"}], ":=", 
  SqrtBox[
   RowBox[{
    SuperscriptBox["x", "2"], "+", 
    SuperscriptBox["y", "2"]}]]}]], "Input",
 CellChangeTimes->{{3.5578697685867443`*^9, 3.557869790665495*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Theta]", "[", 
   RowBox[{"x_", ",", "y_"}], "]"}], ":=", " ", 
  RowBox[{"ArcTan", "[", 
   RowBox[{"x", ",", "y"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5578697959091873`*^9, 3.5578698156966257`*^9}, {
  3.557875019546438*^9, 3.557875019827238*^9}}],

Cell[TextData[StyleBox["Sorry, what? Arctangent is not a function of two \
variables.",
 FontSize->16]], "Text",
 CellChangeTimes->{{3.557938037001603*^9, 3.5579380526301656`*^9}}],

Cell[BoxData[
 RowBox[{"?", "ArcTan"}]], "Input",
 CellChangeTimes->{{3.5578698293099284`*^9, 3.557869839900674*^9}}],

Cell[TextData[{
 StyleBox["When using a calculator, we must decide based on the location of \
the point (",
  FontSize->16],
 StyleBox["x",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[",",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[") whether its angular coordinate is equal to ArcTan(y/x) or equal \
to the opposite angle on the left half of the plane. In ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" (and many modern programming languages), there is a variant of \
ArcTan that will make this decision for us. Instead of invoking ArcTan with a \
single argument we call it with ",
  FontSize->16],
 StyleBox["x",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" and ",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" separately (in that order). ",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.55786982127011*^9, 3.5578698274102345`*^9}, {
  3.557876819748604*^9, 3.5578770367148037`*^9}, {3.5578771971954036`*^9, 
  3.557877199976804*^9}}],

Cell[TextData[{
 StyleBox["This next cell will give the angle of the point whose coordinates \
are ",
  FontSize->16],
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       SqrtBox["2"], "2"], ",", 
      FractionBox[
       SqrtBox["2"], "2"]}], ")"}],
    FontSize->16], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ". ",
 StyleBox["Think about the angle of this point before you evaluate the cell. \
Predict the answer.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5579380728721895`*^9, 3.5579381409109926`*^9}}],

Cell[BoxData[
 RowBox[{"ArcTan", "[", 
  RowBox[{
   RowBox[{
    SqrtBox["2"], "/", "2"}], ",", 
   RowBox[{
    SqrtBox["2"], "/", "2"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5578770395874033`*^9, 3.5578770475384035`*^9}}],

Cell[TextData[StyleBox["Were you right? Try again with this next point.",
 FontSize->16]], "Text",
 CellChangeTimes->{{3.557938144435345*^9, 3.5579381527641783`*^9}}],

Cell[BoxData[
 RowBox[{"ArcTan", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "1"}], "/", "2"}], ",", 
   RowBox[{
    SqrtBox["3"], "/", "2"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5578770496034036`*^9, 3.5578770575212035`*^9}}],

Cell[TextData[{
 StyleBox["In ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" these two functions have the same name, but in many other \
languages this last function is known as arctan2(",
  FontSize->16],
 StyleBox["x",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[",",
  FontSize->16],
 StyleBox["y",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[") or similar.",
  FontSize->16],
 StyleBox[" ",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox["The point is that the transformation relating the angular \
coordinate to the usual Cartesian coordinates is common and useful enough \
that it is built in to the system. Don\[CloseCurlyQuote]t get complacent\
\[LongDash]you must know how to perform this calculation yourself.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.5578770689744034`*^9, 3.557877184844804*^9}, {
  3.5579289718753653`*^9, 3.557928995713132*^9}}],

Cell[TextData[{
 StyleBox["We\[CloseCurlyQuote]ve seen how to have ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" plot several curves on the same set of axes. But I want to \
combine a regular rectangular plot with a polar plot in the same Manipulate \
object. We can combine graphics objects (like the output of the Plot family \
of commands) by listing them.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.557937470902999*^9, 3.557937524102318*^9}, {
  3.557937581276035*^9, 3.557937590748982*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"\[Theta]", ",", " ", "0", ",", " ", 
       RowBox[{"2", "*", "Pi"}]}], "}"}]}], "]"}], ",", " ", 
   RowBox[{"PolarPlot", "[", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"\[Theta]", ",", "0", ",", 
       RowBox[{"2", "*", "Pi"}]}], "}"}]}], "]"}]}], "}"}]], "Input",
 CellChangeTimes->{{3.557937521432051*^9, 3.5579375775506625`*^9}}],

Cell[TextData[{
 StyleBox["Observe that the output is a list of plots: they are enclosed in \
curly braces and separated by commas, like the elements of all ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" lists. Once again, the vertical typing of the command is so that \
it\[CloseCurlyQuote]s easier to spot bracket mismatches. ",
  FontSize->16],
 StyleBox["Mathematica",
  FontSize->16,
  FontSlant->"Italic"],
 StyleBox[" handles the indentation automagically, so that the programmer can \
focus on the command she is typing.",
  FontSize->16]
}], "Text",
 CellChangeTimes->{{3.557937614353342*^9, 3.5579376556504717`*^9}, {
  3.5579378882027245`*^9, 3.5579379260525093`*^9}}],

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Plot", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\[Theta]", ",", " ", "0", ",", " ", 
         RowBox[{"2", "*", "Pi"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Epilog", "\[Rule]", "\[IndentingNewLine]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"PointSize", "[", "0.02", "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Point", "[", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"t", ",", 
             RowBox[{"2", " ", 
              RowBox[{"Cos", "[", "t", "]"}]}]}], "}"}], 
           "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}]}]}], 
      "\[IndentingNewLine]", "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"PolarPlot", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"Cos", "[", "\[Theta]", "]"}]}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"\[Theta]", ",", "0", ",", 
         RowBox[{"2", "*", "Pi"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Epilog", "\[Rule]", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"PointSize", "[", "0.02", "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Point", "[", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"1", "+", 
              RowBox[{"Cos", "[", "t", "]"}]}], ",", " ", 
             RowBox[{"Sin", "[", "t", "]"}]}], "}"}], "\[IndentingNewLine]", 
           "]"}]}], "\[IndentingNewLine]", "}"}]}]}], "\[IndentingNewLine]", 
      "]"}]}], "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{"t", ",", "0", ",", 
     RowBox[{"2", "*", "Pi"}]}], "}"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 CellChangeTimes->{{3.557937677315638*^9, 3.557937881234028*^9}, {
  3.5579379466565695`*^9, 3.557937979675871*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 633},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
WindowOLEData->{"Content" -> {33760, 24315}, "InPlaceRect" -> {1276, 919}},
ShowSelection->True,
FrontEndVersion->"8.0 for Microsoft Windows (32-bit) (February 23, 2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 190, 5, 120, "Title"],
Cell[1450, 39, 1299, 30, 172, "Text"],
Cell[CellGroupData[{
Cell[2774, 73, 148, 2, 59, "Subtitle"],
Cell[2925, 77, 1733, 43, 121, "Text"],
Cell[4661, 122, 4002, 83, 532, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8700, 210, 110, 1, 49, "Subtitle"],
Cell[8813, 213, 1765, 45, 99, "Text"],
Cell[10581, 260, 291, 6, 31, "Input"],
Cell[10875, 268, 521, 18, 33, "Text"],
Cell[11399, 288, 291, 7, 31, "Input"],
Cell[11693, 297, 732, 26, 55, "Text"],
Cell[12428, 325, 334, 8, 31, "Input"],
Cell[12765, 335, 319, 4, 33, "Text"],
Cell[13087, 341, 1363, 27, 121, "Text"],
Cell[14453, 370, 197, 4, 31, "Input"],
Cell[14653, 376, 152, 3, 31, "Input"],
Cell[14808, 381, 148, 3, 31, "Input"],
Cell[14959, 386, 755, 26, 55, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15751, 417, 195, 4, 49, "Subtitle"],
Cell[15949, 423, 964, 29, 55, "Text"],
Cell[16916, 454, 156, 3, 31, "Input"],
Cell[17075, 459, 521, 13, 52, "Input"],
Cell[17599, 474, 1155, 44, 40, "Text"],
Cell[18757, 520, 328, 8, 52, "Input"],
Cell[19088, 530, 314, 4, 33, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19439, 539, 114, 1, 49, "Subtitle"],
Cell[19556, 542, 260, 8, 39, "Input"],
Cell[19819, 552, 292, 7, 31, "Input"],
Cell[20114, 561, 180, 3, 33, "Text"],
Cell[20297, 566, 117, 2, 31, "Input"],
Cell[20417, 570, 1081, 35, 77, "Text"],
Cell[21501, 607, 574, 20, 46, "Text"],
Cell[22078, 629, 228, 7, 40, "Input"],
Cell[22309, 638, 166, 2, 33, "Text"],
Cell[22478, 642, 234, 7, 40, "Input"],
Cell[22715, 651, 933, 29, 55, "Text"],
Cell[23651, 682, 555, 13, 55, "Text"],
Cell[24209, 697, 616, 17, 31, "Input"],
Cell[24828, 716, 729, 18, 55, "Text"],
Cell[25560, 736, 2192, 49, 532, "Input"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ovpDszQ6ui1MJBw93LbQmoaP *)
