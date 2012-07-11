﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>README.txt - Ext.NET Examples</title>
    <link href="../../../../resources/css/examples.css"  rel="stylesheet" type="text/css" />
</head>
<body>
<pre>
**************************************************************************
*                       Version 1.5.0 CHANGELOG                          *
**************************************************************************

Release Date     : 2012-07-10
Current Version  : 1.5.0
Previous Version : 1.4.0

NEW
	[r4090]	Added new /Getting_Started/Introduction/SVN_Log sample
	[r4166]	Added .pdb file generation for /Release build. Now Ext.NET v1.x will be distributed with full .pdb files.

FIX	
	[r4084]	A non-editable CheckColumn should not break the SelectionModel functionality.
	[r4133]	Fixed the paging on first expand in the Form/ComboBox/Two_Columns example.
	[r4145]	DropDownField with ReadOnly="true" has wrong width.
	[r4150]	Fixed the Element Update method. The HTML should be passed as a JRawValue instance.
	[r4151]	Now the TreePanel SelectionSubmitConfig with just Encode="true" is rendered on client.
	[r4158]	Fix in the BorderLayout/Complex_in_Markup example.
	[r4167]	fixes an issue in IE only with the HtmlEditor where a bulleted list is not created properly.

UPDATE
	[r4085]	Source formatting to API Parser
	[r4086]	Minor revisions to Sandbox. Added sample /App_Themes/ for testing.
	[r4089]	Added "Version" column to SVN Log viewer
	[r4091]	Revised Examples Explorer 'NEW' list to include new SVN_Log sample
	[r4116]	New constructor for ItemsCollection (with SingleItemMode argument)



**************************************************************************
*                       Version 1.4.0 CHANGELOG                          *
**************************************************************************

Release Date     : 2012-05-24
Current Version  : 1.4.0
Previous Version : 1.3.0

FIX	
	[r3845]	AutoLoad doesn't always parse url correctly
	[r3847]	MVC Demo: fixed the "Report a Defect" tab.
	[r3853]	Json date converters don't support nullable datetime
	[r3854]	Fixed defect where .GetIconClassName does not properly convert string .ToLower if tr-TR culture is set on Thread. Passed "CultureInfo.InvariantCulture" parameter into .ToLower Method call.
	[r3855]	ScriptBuilder doesn't check PathEmbeddedDebug on null
	[r3856]	Incorrect deserialization of DateTime? (if value is null)
	[r3865]	ComboBox: added the ListEmptyText property.
	[r3867]	Now TreeEditor is destroyed when TreePanel is destroyed.
	[r3869]	Dynamic controls don't register own resources
	[r3878]	Url can be incorrectly resolved for dynamic controls
	[r3881]	Reverted the changes of the revision #3821 since it might cause a "stack overflow" JavaScript error.
	[r3886]	CtorDateTimeJsonConverter ignores nullable datetime
	[r3894]	Fixed the HyperLink example: corrected the ImageUrl value.
	[r3895]	Now DirectEventHandlerJsonConverter can apply a function name with a dot.
	[r3914]	CurrentLocale property of ResourceManager should return exact locale is defined in Locale property
	[r3921]	HtmlEditor: added the DefaultFont property.
	[r3922]	Now Panel FormGroup option doesn't transform title to be upper-case by default.
	[r3926]	Reverted back the changes of the revision #3812 since it breaks the functionality in another aspect:
	[r3931]	Fixed the layout of the CustomerDetails page.
	[r3933]	Calendar shows some events incorrectly
	[r3934]	PagingStore should not reread data from MemoryProxy
	[r3938]	BaseParams is rendered incorrectly if control is dynamic
	[r3941]	UserControl direct method proxy can be incorrect if user control in ASP.NET repeater
	[r3943]	AutoDataBind="true" of GridPanel (or its parent control) caused its Store to be reloaded during an AJAX request (DirectEvent/DirectMethod).
	[r3955]	CommandColumn destroys shared menus during view refresh
	[r3964]	NetServiceTreeLoader: corrected calling a callback. Now it is called with a proper scope.
	[r3976]	Fixed the Panel AutoLoad Merge Mode example.
	[r3995]	CommandMenu EnableScrolling: changed the default value to false according to the default value of the JavaScript Menu class.
	[r3997]	HttpProxy Url is not resolved within a partial view.
	[r3998]	Renamed mistyped "ValidatioEventOwner" to "ValidationEventOwner".
	[r4003]	TreePanel CheckedNodes must be updated just after rendering.
	[r4019]	X.GetCmp controls don't respect script sequence
	[r4024]	Chrome 19 breaks autoexpand column
	[r4032]	Date record field renders milliseconds if RenderMilliseconds is true only (works with JsonReader only)


**************************************************************************
*                       Version 1.3.0 CHANGELOG                          *
**************************************************************************

1. [NEW] [#3840] Added new /Examples/Events/DirectEvents/Async sample. Demonstrates running multiple DirectEvents and returning values asynchronously. 

2. [NEW] [#3824] MultiSelect: added the SubmitIndexes property.  

	Generally, the same as the SubmitText property, but affects to submitting the indexes of selected items.

	To don't submit indexes, please set up false. Defaults to true.

	http://forums.ext.net/showthread.php?17181

3. [NEW] [#3810] Added a new example how to load a custom XML file to Store.

4. [NEW] [#3769] Added new .Tag property to Component.cs. The .Tag property can be set to an Object that contains data about the Component. The default is a null reference. Both simple (string, int, bool, DateTime) and complex (Person, etc) objects can be used. 

5. [NEW] [#3768] Added new JsonMode.Serialize option to ClientConfig. 

6. [NEW] [#3735] Add new Browser, OS and Device detection properties to 'X'. 

	Example

		X.Msg.Notify("UserAgent", X.IsIPad).Show();


	Full list of new properties include:

	User Agent Detection (browser)
		IsOpera
		IsChrome
		IsWebKit
		IsSafari
		IsSafari3
		IsSafari4
		IsIE
		IsIE6
		IsIE7
		IsIE8
		IsIE9
		IsGecko
		IsGecko3

	User Agent Detection (operating system)
		IsWindows
		IsMac
		IsIOS
		IsLinux

	User Agent Detection (device)
		IsIPad
		IsIPhone
		IsIPod
		
7. [NEW] [#3733] Added the "NoTheme" enum option to the list of "Theme" choices
	https://extnet.lighthouseapp.com/projects/50558/tickets/100

8. [NEW] [#3731] Calendar DayView and WeekView: added .DDResizeEventText
	http://forums.ext.net/showthread.php?15713
	https://extnet.lighthouseapp.com/projects/50558-features/tickets/102

9. [NEW] [#3730] Calendar WeekView: added .StartDay
	http://forums.ext.net/showthread.php?15711
	https://extnet.lighthouseapp.com/projects/50558-features/tickets/101


----


10. [UPDATE] [#3839] Json.NET was updated to 4.0 R8

11. [UPDATE] [#3834] Added attribution to Silk companion icon set #1 - "More Silk!" provided by Damien Guard, see http://www.damieng.com/icons/silkcompanion. The pages /Examples/Miscellaneous/Icon/Icon_Summary/Default.aspx and /Examples/Getting_Started/Introduction/README/Default.aspx have both been updated with attribution to Silk Companion Icon set. 

12. [UPDATE] [#3833] Added attribution to Silk companion icon set #1 - "More Silk!" provided by Damien Guard, see http://www.damieng.com/icons/silkcompanion. The SilkCompanionIcon.txt license file has been added to /Build/Ext.Net/Licenses/. README.txt also updated with attribution to Silk Companion Icon Set. 

13. [UPDATE] [#3828] Minor source formatting revisions

14. [UPDATE] [#3819] Reverted some changes of the revision #3801: the methods should stay protected and a developer should use respective properties to update things.

15. [UPDATE] [#3813] Minor revision in the GridPanel XML file loading examples.

16. [UPDATE] [#3811] "Xml_File_Loading" example has been renamed to "XML_File_Loading".

17. [UPDATE] [#3801] Label, DisplayField, TextArea: added the Append and AppendLine methods.
	http://forums.ext.net/showthread.php?16842

18. [UPDATE] [#3800] Simple Task example: replaced two missed icons with standard ones.

19. [UPDATE] [#3790] The sample web.config: updated the ajaxViewStateMode options. Now they are Inherit|Disabled|Enabled. The default is Disabled.

20. [UPDATE] [#3785] Minor revision to StringUtils.cs to ensure all calls to string type instance methods are prefixed with 'String."

21. [UPDATE] [#3782] Minor syntax and formatting revisions to various samples in the Examples Explorer. 

22. [UPDATE] [#3781] Two minor changes:
	1. Tip: marked AutoHeight with new modifier
	2. StringUtils: a bit refactored FormatRegexPattern.

23. [UPDATE] [#3765] Field: added a css pointer cursor for indicator if defined an IndicatorIconClick listener or DirectEvent.
	http://forums.ext.net/showthread.php?16134
	https://extnet.lighthouseapp.com/projects/50558/tickets/104

24. [UPDATE] [#3764] Spelling mistake in a common "selectionChaged" event handler. Updated to "selectionChanged".

25. [UPDATE] [#3763] Field: added IndicatorIconClick listener and DirectEvent
	http://forums.ext.net/showthread.php?16134
	https://extnet.lighthouseapp.com/projects/50558-features/tickets/104

26. [UPDATE] [#3750] Minor revision in the TreePanel Refresh Static Tree example.

27. [UPDATE] [#3749] DirectResponse: "text/html" ContentType is automatically applied if IsUpload="true"
	http://forums.ext.net/showthread.php?15908

28. [UPDATE] [#3748] Updated the SysApplication template.

29. [UPDATE] [#3747] The fix in the revision #3746 has been improved, now the typeof operator is used for checking on undefined.

30. [UPDATE] [#3740] GridFilters.ListFilter: added a possibility to set up a store client id for the .StoreID property.
	http://forums.ext.net/showthread.php?15856
	https://extnet.lighthouseapp.com/projects/50558-features/tickets/103

31. [UPDATE] [#3739] The Ext.Net.MVC and Ext.Net.MVC.Demo projects has been included to the solutions.


----


32. [FIX] [#3838] Now the CheckColumn destroy method doesn't cause a JS error when a GridPanel is not rendered.
	http://forums.ext.net/showthread.php?17231
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/249

33. [FIX] [#3837] Alignment of grid editors: revised the fixes which were in the revisions #3835 and #3836.
	https://extnet.lighthouseapp.com/projects/50526/tickets/248

34. [FIX] [#3836] Related to the fix in the revision #3835 - added the fixes to cover Opera and Safari.

35. [FIX] [#3835] Corrected alignment of grid's editors.
	The fix in the revision #3831 has been revised/reverted since it was the more complex problem.

	http://forums.ext.net/showthread.php?17008&p=74701&viewfull=1#post74701
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/248

36. [FIX] [#3831] Now triggers are aligned correctly when it's a part of a grid's editor.
	http://forums.ext.net/showthread.php?17008&p=74636&viewfull=1#post74636
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/248

37. [FIX] [#3830] Corrected CSS in the ToolTips/Overview example.

38. [FIX] [#3829] History: fixed a security error in IE6 in secure mode.
	http://forums.ext.net/showthread.php?17274
	https://extnet.lighthouseapp.com/projects/50526/tickets/247

39. [FIX] [#3827] NumberFieldBase LoadPostData: fixed the bug when LoadPostData overrides a value from ViewState, added the check on null for value from POST.
	http://forums.ext.net/showthread.php?17236

40. [FIX] [#3826] Changed the title of http://examples.ext.net/#/Events/DirectMethods/Exceptions/ and made some revisions.

41. [FIX] [#3825] Fixed http://examples.ext.net/#/GridPanel/System.Data/DataTable/
	Now it shows a data in the "Last updated" correctly.

42. [FIX] [#3822] ListItem Text now doesn't override Value if it's an empty string.
	http://forums.ext.net/showthread.php?17154
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/246

43. [FIX] [#3821] Vtype "daterange" now validates correctly if a user edit a field by keys.
	http://forums.ext.net/showthread.php?17127
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/245

	The fix doesn't work if a user removes a field's text at all, because an empty string is not validated by Vtype on the TextField's getErrors level. To fix that problem I can suggest to set up the KeyUp listeners for DateFields and analyze a field's value - if it's empty then reset validation settings and validate. This is demonstrated in the Form/DateField/From-To_Range example.

44. [FIX] [#3820] GMapPanel: corrected the Zoom property, not it uses the correct ViewState "Zoom" item.
	http://forums.ext.net/showthread.php?17080
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/244

45. [FIX] [#3818] Now HeaderColumn Target is rendered correctly when no value.
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/243

46. [FIX] [#3817] Corrected the fix in the revision #3795.
	https://extnet.lighthouseapp.com/projects/50526/tickets/237
	http://forums.ext.net/showthread.php?17017

	Also, there are two important changes which might be breaking.

	1. Now a NumberField with zero on client is not considered IsEmpty on server, i.e. IsEmpty property returns false instead of true.

	2. The NumberField's Number property returns double.MinValue for en empty NumberField instead of zero. You might need to analyze the IsEmpty property.

47. [FIX] [#3816] Now the FileUploadField's show and hide methods doesn't cause a JS error when it is configured with Icon.

48. [FIX] [#3816] Now a TextField hides its Icon when it's configured with Hidden="true".

49. [FIX] [#3816] How the TextField's setIconCls method works correctly when it's hidden.
	http://forums.ext.net/showthread.php?17001
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/242

50. [FIX] [#3815] Fixed alignment of fields with trigger in IE7.
	http://forums.ext.net/showthread.php?17008

51. [FIX] [#3814] CompressionUtils.Send now support non gzip content

52. [FIX] [#3812] GridFilters ListFilter now supports an empty string as an option.
	http://forums.ext.net/showthread.php?16916
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/240

53. [FIX] [#3809] GroupTabPanel now works correctly with active tabs on client and during postback.
	http://forums.ext.net/showthread.php?16831
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/239

54. [FIX] [#3802] GridPanel ColumnHeaderGroup plugin now works correctly with GroupingSummary one.
	http://forums.ext.net/showthread.php?16744
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/238

55. [FIX] [#3799] Ext.NET ColumnLayout: added the "netcolumn" type property.

56. [FIX] [#3798] SelectBox: improved the fix for filtering records.
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/172

57. [FIX] [#3797] StatusBar and Lock icon: corrected vertical alignment.
	http://forums.ext.net/showthread.php?16742

58. [FIX] [#3796] DateField: added default 'm/d/Y' value for FormatProxy according to ExtJS.
	http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.DateField-cfg-format

59. [FIX] [#3795] NumberFieldBase: overrode LoadPostData, now it uses Number, not Text.
	Now NumberChanged event is fired correctly.
	http://forums.ext.net/showthread.php?16469
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/237

60. [FIX] [#3794] TreeGridColumn: added the Hideable property. 
	http://forums.ext.net/showthread.php?16617
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/236

61. [FIX] [#3793] Now Component setFieldLabel method adds labelSeparator.
	http://forums.ext.net/showthread.php?16599
	https://extnet.lighthouseapp.com/projects/50526/tickets/235

62. [FIX] [#3792] Field ValidateDelay has been renamed to ValidationDelay according to ExtJS.
	http://forums.ext.net/showthread.php?16578
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/234

63. [FIX] [#3791] FieldSet: changed default layout to 'form' according to ExtJS.

64. [FIX] [#3789] TreePanel: added BeforeDblClick listener and DirectEvent.
	http://forums.ext.net/showthread.php?16407
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/233

65. [FIX] [#3788] TreeGridDateColumn: removed [ConfigOption] for the Format property and set up a default value for the FormatProxy one.
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/232

66. [FIX] [#3788] Tip: corrected the AutoHeight property modifiers.

67. [FIX] [#3787] DatePicker: added the two possibilities to update disabledDatesRE during DirectEvent:
	1. Updating DisabledDatesRE property.
	2. Calling SetDisabledDatesRE method.

	http://forums.ext.net/showthread.php?16322
	https://extnet.lighthouseapp.com/projects/50526/tickets/231

68. [FIX] [#3787] TextField: now MaskRe is updated correctly during DirectEvent.

69. [FIX] [#3786] Extra '/' added to file paths if RenderStyles="File", see https://extnet.lighthouseapp.com/projects/50526

70. [FIX] [#3784] Dom: now Call and Set methods generate correct scripts.
	http://forums.ext.net/showthread.php?16262
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/229

71. [FIX] [#3783] ComboBox LoadPostData: changed the default value for SelectedItem.Value to null.
	http://forums.ext.net/showthread.php?16265
	https://extnet.lighthouseapp.com/projects/50526/tickets/227

72. [FIX] [#3783] ComboBox: now clearValue method clears a selectedIndexField as well.
	https://extnet.lighthouseapp.com/projects/50526/tickets/228

73. [FIX] [#3780] Tip: changed the AutoHeight default value to true according to the Ext.Tip sources.
	http://forums.ext.net/showthread.php?16203&p=69121&viewfull=1#post69121
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/226

74. [FIX] [#3779] StringUtils FormatRegexPattern: added the possibility to set up modifiers by "new RegExp('regex', 'modifiers')"
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/225

75. [FIX] [#3778] TextField: added the StripCharsRe property.
	http://forums.ext.net/showthread.php?16241
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/224
	http://docs.sencha.com/ext-js/3-4/#!/api/Ext.form.TextField-cfg-stripCharsRe

76. [FIX] [#3777] CompressionUtils: added the gzip supported check before sending.
	http://forums.ext.net/showthread.php?16237
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/223

77. [FIX] [#3776] DateField: now height is stretched.
	http://forums.ext.net/showthread.php?16211
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/222

78. [FIX] [#3775] TreeGrid: fixed misalignment in Chrome.
	http://forums.ext.net/showthread.php?16205
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/221

79. [FIX] [#3774] TreePanel remote mode "success" bug. 
	Repaired the revision #3772.

	Now when a TreePanel remote mode deals with a WebService or MVC controller action, 
	an "actionSuccess" parameter instead of "success" one must be sent.

	The reason of the change: a success flag of remote mode conflicted with a success flag of DirectEvent.

	https://extnet.lighthouseapp.com/projects/50526/tickets/220

80. [FIX] [#3772] TreePanel: success flag of remote mode conflicts with success flag of DirectEvent

81. [FIX] [#3771] TreePanel remote mode.
	Fixed two bugs:
	1) No access to response parameters in a RemoteActionSuccess handler.
	Added 'responseParams' argument for RemoteActionSuccess and RemoteActionRefusal handlers.

	Bug report.
	http://forums.ext.net/showthread.php?16219

	2) RemoteActionEventArgs doesn't allow to return custom response parameters.

	RemoteActionEventArgs is extended with ExtraParamsResponse. It works the same way as DirectEvent ExtraParamsResponse does.

	Bug ticket:
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/220

82. [FIX] [#3770] TreePanel: overrode the clearContent method with an empty function.
	https://extnet.lighthouseapp.com/projects/61050/tickets/245
	http://forums.ext.net/showthread.php?10625

83. [FIX] [#3767] TextField: now MaxLength property is updated during DirectEvent

84. [FIX] [#3766] ColumnLayout: sizing is now correct when a container is hidden and Split="true" 
	http://forums.ext.net/showthread.php?16074
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/218

85. [FIX] [#3762] Fixed StatusBar example replacing "el" with "this" in a listener

86. [FIX] [#3761] TextField: now the hide/show methods hide/show an icon as well.
	http://forums.ext.net/showthread.php?16131
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/215

87. [FIX] [#3760] LazyObservable: invalid variable initialization if Namespace is used

88. [FIX] [#3759] FileUploadField: PostedFile is null if Namespace is defined

89. [FIX] [#3758] Ext.net.Mask: fixed issues when a mask is applied on an element with scrolling.
	https://extnet.lighthouseapp.com/projects/50526/tickets/212
	http://forums.ext.net/showthread.php?16011

90. [FIX] [#3757] Mask: now a loading message is positioned correctly

91. [FIX] [#3756] TreePanel RemoteExtraParams doesn't work 

92. [FIX] [#3755] TabPanel BeforeTabChange and Change: removed the indexes arguments, because they are not passed.

93. [FIX] [#3754] MultiSelect raises exception if delete several selected records

94. [FIX] [#3753] Changed a Window .Frame default value to "true".
	https://extnet.lighthouseapp.com/projects/50526/tickets/210

95. [FIX] [#3752] TokenUtils supports "] !tokens>" now

96. [FIX] [#3751] Now PagingStore applies paging if a data comes from a DirectEvent at the first time.
	http://forums.ext.net/showthread.php?15947
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/209

97. [FIX] [#3750] Fixed the ListView example.

98. [FIX] [#3746] Now not only Sys is checked on undefined, but Sys.Application and Sys.Application.notifyScriptLoaded as well.
	http://forums.ext.net/showthread.php?15907
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/208

99. [FIX] [#3745] Added the tb-blue.gif image for the Slate theme
	http://forums.ext.net/showthread.php?15864
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/207

100. [FIX] [#3744] Now a static DirectMethod is rendered with an url to fix the problem when a DirectMethod is called from a default document (without url).
	http://forums.ext.net/showthread.php?14593
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/163

101. [FIX] [#3743] The fix in the revision #3742 fix has been improved.

102. [FIX] [#3742] Added destructors for ComboMenuItem, DateFieldMenuItem and ComponentMenuItem.
	http://forums.ext.net/showthread.php?15022
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/206

103. [FIX] [#3741] HttpProxy .Url and TreeLoaderBase .DataUrl are now resolved correctly without a page instance.
	http://forums.ext.net/showthread.php?11500
	https://extnet.lighthouseapp.com/projects/50526-bugs/tickets/205

104. [FIX] [#3737] Fixed a DateFormat problem on the 
	http://examples.ext.net/#/DataView/Advanced/Overview/ example.

105. [FIX] [#3736] Fixed a DateFormat problem on the "Recent SVN Commits" GridPanel. Examples Explorer home page. 

106. [FIX] [#3734] Fixed DataView paging example 
	http://forums.ext.net/showthread.php?15436

107. [FIX] [#3732] Calendar Examples didn't work correctly with new events
	http://forums.ext.net/showthread.php?15408

108. [FIX] [#3729] Flag icons repeat in some widgets

109. [FIX] [#3728] Field .setReadOnly()is removed, this method is defined in ExtJS.

110. [FIX] [#3727] Fixed .findPage() of PagingStore

110. [FIX] [#3726] Fixed ComboBox Two Columns example http://forums.ext.net/showthread.php?15611

111. [FIX] [#3725] IE9 : header trigger widgets have trigger icon shifting

112. [FIX] [#3723] Remove method incorrectly handle record removing if argument is array

113. [FIX] [#3722] SlidingPager generates invalid script tag

114. [FIX] [#3721] Fix DataView sample

115. [FIX] [#3717] DatePicker raises "ResourceManager is not found" for dynamic GridFilters plugin

116. [FIX] [#3717] KeyMap doesn't serialize EventName properly

117. [FIX] [#3716] TreePane: ReplaceChildNode has wrong arguments sequence

118. [FIX] [#3715] MonthPicker plugin raises exeception if DateField is disabled


**************************************************************************
*                       Version 1.2.0 CHANGELOG                          *
**************************************************************************

Release Date     : 2011-09-12
Current Version  : 1.2.0
Previous Version : 1.1.0

----

1. [NEW] [#3701] Added .ItemID property to XControlConfig.cs

2. [NEW] [#3696] Added .ItemID() Method to XControlBuilder.cs. 

3. [NEW] [#3693] Add new DateTime Extension Methods. .ToISOString() .ToISODateString(), .ToISOTimeString()

----

4. [UPDATE] [#3697] Loading message of Panel are localized now. Dynamic control renders own container (it is not required)

5. [UPDATE] [#3682] Deactivate viewstate for content container if no content

6. [UPDATE] [#3680] Add DefaultValue attribute for StopIDModeInheritance property

7. [UPDATE] [#3670] DateTime serialization with milliseconds. If RecordFieldType is Int and value is enum then serialized value will be int instead enum

8. [UPDATE] [#3660] Extended http://examples.ext.net/#/GridPanel/Data_with_Details/Form_Details/ to demonstrate that DisplayField can be used with .DataIndex as well as other Fields. Now ID field is a DisplayField.

9. [UPDATE] [#3657] Remove temp IE9 fixes from Examples Explorer

----

10.  [FIX] [#3704] GridPanel.UpdateCell doesn't generate ';' after the method calling

11.  [FIX] [#3703] DirectMethod arguments must be read from Form collection first if POST type for request

12.  [FIX] [#3699] TabStrip has 1px shifting after active tab changing under IE8/9 

13.  [FIX] [#3698] Fix examples (replace 'el' by 'item')

14.  [FIX] [#3694] DefaultScriptBuilder renders scripts are added before Render only after instance

15.  [FIX] [#3692] MenuPanel renders invalid javascript if Menu has no items

16.  [FIX] [#3691] MultiSelect reverse order of droppped items

17.  [FIX] [#3690] LinkButton ignores NavigateUrl

18.  [FIX] [#3689] Fixed History example

19. [FIX] [#3688] History widget works incorrectly under IE9

20. [FIX] [#3687] RowEditor: now Int RecordField can have empty value.

21. [FIX] [#3685] MaxLength property of TextField breaks EditableGrid plugin

22. [FIX] [#3684] GridPanel doesn't restore own state correctly (CookieProvider)

23. [FIX] [#3683] It is not required to hide content container if PreventContent is true

24. [FIX] [#3681] Combo should not trigger blur on mousewheel event

25. [FIX] [#3677] PanelDesigner doesn't check click Region for null

26. [FIX] [#3676] VS2010 designer crashing

27. [FIX] [#3675] SelectBox now works fine with a space key

28. [FIX] [#3674] Now FormGroup is aligned well under IE6

29. [FIX] [#3673] CalendarPanel: fixed "wekk" typo in DayView.js

30. [FIX] [#3668] ResourceHandler have to analyze Headers["If-Modified-Since"] for init script request

31. [FIX] [#3665] PropertyGridParameter invalid value extraction if double quote is presented

32. [FIX] [#3664] Component must destroy own Bin collection

33. [FIX] [#3663] TriggerField has shifting for the trigger under Chrome

34. [FIX] [#3662] Group value with ampersand breaks group command logic

35. [FIX] [#3661] Store have to pass DataMember to GetView method of IDataSource

36. [FIX] [#3659] Simple tasks example: now a ProgressBar has the correct message

37. [FIX] [#3658] Column editor doesn't have reference to grideditor object

38. [FIX] [#3655] RemoteValidation doesn't check client validation before request

39. [FIX] [#3654] Calendar doesn't show event for last day of a month

40. [FIX] [#3669] CacheFly link is updated to 3.4.0 version

41. [FIX] [#3656] Window is not dragable under Chrome


**************************************************************************
*                       Version 1.1.0 CHANGELOG                          *
**************************************************************************

Release Date     : 2011-07-07
Current Version  : 1.1.0
Previous Version : 1.0.0

1.  [UPDATE] [#3624] Update to ExtJS 3.4.0. Enhanced IE9 support.
	http://dev.sencha.com/deploy/ext-3.4.0/release-notes.html

2.  [FIX] [#3638] LinkButton .enable() and .disable() client-side functions 
	were not working as expected. 

3.  [FIX] [#3639] TreePanel .toggleChecked() client-side function had a 
	defect and was fixed. 

4.  [FIX] [#3640] ID confirmation for deleted records was defective. 
    Now fixed. Related to Store.js. 

5.  [FIX] [#3641] Client-side .isDirty() was always returning 'true' if 
	CheckboxSelectionModel used. Defect has been fixed.


**************************************************************************
*                       Version 1.0.0 CHANGELOG                          *
**************************************************************************

Release Date     : 2011-06-24
Current Version  : 1.0.0
Previous Version : 1.0.0 RC2

1.   Renamed Coolite.Ext.Web project to Ext.Net

2.   Renamed Coolite.Examples project to Ext.Net.Examples

3.   Renamed Coolite.Ext.UX project to Ext.Net.UX

4.   Renamed Coolite.EmbeddedResourceBuilder project to Ext.Net.ERB

5.   Renamed Coolite.Utilities project to Ext.Net.Utilities

6.   Renamed Coolite.Sandbox project to Ext.Net.Sandbox

7.   Renamed Coolite.Toolkit.sln Visual Studio Solution file to 
	 Ext.Net.sln.

8.   Renamed Coolite.Ext.Web Namespace to Ext.Net

9.   Renamed Coolite.Utilities Namespace to Ext.Net.Utilities

10.  Renamed Coolite.Ext.UX Namespace to Ext.Net.UX

11.  Renamed server-side root singleton "Ext" class to "X". 

	 Example (Old)
	 
	 if (!Ext.IsAjaxRequest) { }
	 
	 Ext.Msg.Alert("Title", "Message").Show();
	 
	 
	 Example (New)
	 
	 if (!X.IsAjaxRequest) { }
	 
	 X.Msg.Alert("Title", "Message").Show();
	 
	 NOTE: The renaming to "X" only applies to the server-side instance. 
	 The client-side JavaScript root class remains as "Ext". 

12.  Added new feature to get server-side Property values from client id 
     Token strings.
	 
	 Example
	 
	 ] ext:Window runat="server" Title="#{TextField1.Text}" />
	 
13.  Renamed WebControl class to ExtControl. As well, renamed 
     Coolite.Ext.Web.WebControl.cs file to Ext.Net.ExtControl.cs.
	 
14.  Removed ] ext:ToolbarButton>. Please use ] ext:Button>.	 

15.  Removed ] ext:ToolbarSplitButton>. Please use ] ext:SplitButton>.

16.  Renamed AjaxMethod class to DirectMethod.

17.  Renamed AjaxMethodAttribute to DirectMethodAttribute.

	 Example (Old)
	 
	 [AjaxMethod]
	 public void DoSomthing() { }
	 
	 Example (New)
	 
	 [DirectMethod]
	 public void DoSomthing() { }
	 
18.  Renamed ] AjaxEvents> property to ] DirectEvents>.	 

19.  Removed ] ext:ToolbarSplitButton>. Please use ] ext:SplitButton>.

20.  Removed Adapter class

21.  Removed ColorMenuItem class

22.  Removed ComboMenuItem class

23.  Removed DateFieldMenuItem class

24.  Removed DateMenuItem class

25.  Removed EditMenuItem class

26.  Renamed ElementMenuItem class to ComponentMenuItem

27.  Renamed ] ext:Accordion> to ] ext:AccordionLayout>
	 
28.  Removed DataReader class .ReaderID property.

29.  JsonReader: added IDProperty (instead of ReaderID)	 

30.  XmlReader: added IDPath (instead of ReaderID)

31.  ArrayReader: added IDProperty and IDIndex (instead of ReaderID)

32.  Renamed StoreResponseData class .TotalCount property to .Total.

33.  Renamed StoreRefreshDataEventArgs class .TotalCount propterty to 
	 .Total.

34.  Renamed DataSourceProxy class .TotalCount property to .Total.
	 
35.  Renamed DataSourceProxy class to PageProxy.

36.  Layout collection property is now required in markup if using a 
     Layout Control within ] Content> or ] Items>.
	
	 ] Items>
		AccordionLayout
		ContainerLayout
		CardLayout
		CenterLayout
		FitLayout
     
     ] Anchors>
		AbsoluteLayout
		AnchorLayout
		FormLayout
	 
	 ] BoxItems>
		HBoxLayout
		VBoxLayout
	 
	 ] Rows>
		RowLayout
	 
	 ] Columns>
		ColumnLayout
	 
	 ] Cells>
		TableLayout
	
37.  Removed [XType] Attribute and replaced with XType readonly property.
 	
	 Example (Old)
	
	 [Xtype("window")]
	
	
	 Example (New)
	
	 protected override string XType
     {
         get
         {
             return "window";
         }
     }	
	
38.  Removed [InstanceOf] Attribute and replaced with InstanceOf readonly 
	 property.
 	 
	 Example (Old)
	
 	 [InstanceOf("Ext.Window")]
	
	
	 Example (New)
	
	 public override string InstanceOf
     {
         get
         {
             return "Ext.Window";
         }
     }
	
39.  Removed [Layout] Attribute and replaced with new .LayoutType readonly
	 property

40.  Removed [ClientStyle] and [ClientScripts] Attributes and replaced 
	 with new .Resources property.

41.  Renamed AjaxRequestModule to DirectRequestModule

42.  Renamed ] ext:ScriptManager> to ] ext:ResourceManager>

43.  Removed ] ext:ResourcePlaceHolder> and ] ext:StyleContainer> controls.
	 
	 Please use ] ext:ResourcePlaceHolder> with new Mode property which can
	 determine if .js or .css resources are rendered. The Mode property is
	 not required and if not defined, both .js and .css resource files are
	 rendered into the location of the ResourcePlaceHolder. 
	 
	 Example (New)
	 
	 ] ext:ResourcePlaceHolder runat="server" Mode="Script" />

44.  Renamed ] ext:ViewPort> to ] ext:Viewport>. Change to lowercase "p".

45.  Renamed ] Body> inner property to ] Content>.

	 Affects all ContentPanel type controls including Panel, Window, Viewport
	 Renaming to ] Content> also solves ] Body> rendering bug in VS 2005.
	 
	 Renaming all ] Body> tags in a project to ] Content> can be easily 
	 accomplished with a case-sensitive search and replace within Visual 
	 Studio. Please search for the following (remove double quotes) and 
	 ensure you have the "Match case" option checked.

	 Find what: "Body>"
	 Replace with: "Content>"

46.  Renamed .BodyControls property to .ContentControls. 
	 Affects all ContentPanel type controls including Panel, Window, Viewport

47.  Renamed .BodyContainer property to .ContentContainer.
	 Affects all ContentPanel type controls including Panel, Window, Viewport

48.  Removed .UpdateBody() Method. Please use .Update().

49.  Removed ] ext:Window> .ShowOnLoad property.
     Please use .Hidden property.
	 
	 Example (Old)
	 
	 // Will show Window on initial Page_Load
	 this.Window1.ShowOnLoad = true;
	 
	 
	 Example (New)
	 
	 // Will show Window on initial Page_Load
	 this.Window.Hidden = false; // 'false' is the default value
	 
50.  Renamed the ] ext:Window> .CenterOnLoad property to .InitCenter.
	 Default value is unchanged as "true".
	 
	 Example (Old)
	 
	 // Will center Window on initial Page_Load
	 this.Window1.CenterOnLoad = true;
	 
	 
	 Example (New)
	 
	 // Will center Window on initial Page_Load
	 this.Window.InitCenter = true;
	 
51.  Renamed TextMenuItem control to the MenuTextItem

52.  GridPanel client API: submitData, getRowsValues has 1 argument only,
     config object

53.  GenericPlugin: renamed InstanceOf to InstanceName.

54.  Renamed TabPanel ] Tabs> Collection to ] Items>.

	 Example (Old)
	 
	 ] ext:TabPanel runat="server">
         ] Tabs>
             ] ext:Tab runat="server" Title="Tab 1" />
	 
	 
	 Example (New)
	 
	 ] ext:TabPanel runat="server">
         ] Items>
             ] ext:Panel runat="server" Title="Tab 1" />
             
55.  Removed ] ext:Tab> Control. Now any Ext.Net.PanelBase Component can be
     added to the TabPanel's .Items Collection. 
     
56.  XTemplate: renamed Text to Html

57.  XTemplate: Html property is required in markup
     ] Template>
	     ] Html>
	         ....
	     ] /Html>
	   
58.  To disable a Field, the .Disabled property should be used instead of 
	 the native ASP.NET .Enabled property. 
	 
	 See http://forums.ext.net/showthread.php?5080#post22850
	 
59.  Removed the static Instance method from Ext.Net.MessageBox class. The
     MessageBox class was changed from an Singleton to just a standard 
     (non-singleton) class.
     
     Using the X.Msg Helper is recommended method of instantiating a
     MessageBox class. 
     
     Be sure to checkout the new X.Msg.Notify Method.
     
     Example
     
     X.Msg.Notify("Alert", "A Message from the Server-Side").Show();

60.  Renamed Coolite.Ext.Web.MessageBox.Config to Ext.Net.MessageBoxConfig	 

61.  XmlReader: rename TotalRecords to the TotalProperty

62.  Added new .After property to DirectEvents. 

	 The .After handler is called immediately after the DirectEvent is fired 
	 and before the response is returned from the server.
      
     See more, http://forums.ext.net/showthread.php?6600	
	 
63.  The ] ext:TokenScript> component has been renamed to ] ext:XScript>

	 Example (Old)
	 
	 ] ext:TokenScript runat="server" />
	 
	 Example (New)
	 
	 ] ext:XScript runat="server" />
	 
64.  Renamed AjaxEventArgs property to DirectEventArgs

65.  Renamed AjaxMethodProxyID property to DirectMethodProxyID

66.  Renamed ComboBox and DropDownField .Icon property to .TriggerIcon. 

	 Example (Old)
	 
	 ] ext:DropDownField runat="server" Icon="Search" />
	 
	 Example (New)
	 
	 ] ext:DropDownField runat="server" TriggerIcon="Search" />
	 
67.  The ] ext:MultiField> has been replaced with the new 
	 ] ext:CompositeField>.
	 
	 The old inner ] Fields> property of ] ext:MultiField> should now be 
	 configured in the ] Items> property of ] ext:CompositeField>.
	 
68.  ColumnLayout: FitHeight property is true by default (it was false by 
     default for the 0.8.2)
 
69.  Tip.cs, changed .MinWidth and .MaxWidth property type from "int" to 
     "Unit". Default value remains the same at "40". 

70.  GridPanel, changed .MaxHeight property type from "int" to "Unit".
	 Default value remains the same at "400".

71.  GridPanel, changed .MinColumnWidth property type from "int" to "Unit"
	 Default value remains the same at "25".
	 
72.  The .HiddenId property of ComboBox was renamed to .HiddenID.
	 Functionality remains the same.
	 
73.  Renamed the Field.cs property .IsNull to .IsEmpty.

74.  Renamed the Field.cs property .NullValue to .EmptyValue.

75.  Renamed the standard first parameter of Component Listener arguments 
     to "item". Previous parameter name was "el". 
     
     The argument "item" is automatically passed as the first argument of 
     the Listener function Handler. 
        
     The scope of "this" is an instance of the Component which fired the
     event. 
        
     Both "item" and "this" will refer to the same Component instance.
     
     It is recommended that developers refer to the Component instance as 
     "this", instead of "item", although both will work. 
     
     Using "this" instead of "item" will avoid any future breaking 
     changes.
     
     Example
     
     ] ext:Panel runat="server" Title="Example">
	    ] Listeners>
		    // Old
			] Hide Handler="alert(el);" />
	        
			// New
			] Hide Handler="alert(item);" />
	        
			// Recommended
			] Hide Handler="alert(this);" />
		] /Listeners>
	 ] /ext:Panel>

76.  GroupName property of Radio widget is removed. Please use Name property.
     Please note that GroupName property of RadioGroup still exists (RadioGroup's GroupName is applied to each child Radio if AutomaticGrouping is true)
	
77.  LowerCase of RendererFormat enum is renamed to Lowercase (to correct name serialization)

78.  Renamed the ResourceManager property .RemoveViewState to .DisableViewState. 

     Example (old)
	 
	 ] ext:ResourceManager runat="server" RemoveViewState="true" />
	 
	 Example (new)
	 
	 ] ext:ResourceManager runat="server" DisableViewState="true" />
	 
79.  In prior releases, the Store .Load Listener was previously delayed by
     10 milliseconds. This delay was removed as of v1.0 RC2.

	 Projects configured to use the .Load Listener may require setting a
	 10 millisecond delay. 

	 Example

	 ] Load Handler="..." Delay="10" />

      
--------------------------------------------------------------------------
</pre>
</body>
</html>
    