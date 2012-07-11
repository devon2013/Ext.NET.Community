<%@ Page Language="C#" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SVN Log - Ext.NET Examples</title>
</head>
<body>
    <ext:ResourceManager runat="server" />

    <ext:Viewport runat="server" Layout="FitLayout">
        <Items>
            <ext:GridPanel
                ID="GridPanel1"
                runat="server" 
                Title="Recent SVN Commits" 
                TrackMouseOver="true"
                AutoExpandColumn="message">
                <Store>
                    <ext:Store runat="server">
                        <Proxy>
                            <ext:ScriptTagProxy Url="http://api.ext.net/log/get/?version=1." />
                        </Proxy>
                        <Reader>
                            <ext:JsonReader Root="data">
                                <Fields>
                                    <ext:RecordField Name="version" />
                                    <ext:RecordField Name="revision" />
                                    <ext:RecordField Name="author" />
                                    <ext:RecordField Name="date" Type="Date" DateFormat="yyyy-MM-ddTHH:mm:ss" />
                                    <ext:RecordField Name="tag" />
                                    <ext:RecordField Name="message" />
                                    <ext:RecordField Name="actions" IsComplex="true" />
                                </Fields>
                            </ext:JsonReader>
                        </Reader>
                    </ext:Store>
                </Store>
                <ColumnModel runat="server">
                    <Columns>
                        <ext:Column ColumnID="id" Header="Revision" DataIndex="revision" />
                        <ext:Column ColumnID="version" Header="Version" DataIndex="version" />
                        <ext:Column ColumnID="author" Header="Author" DataIndex="author" />
                        <ext:DateColumn Header="Date" DataIndex="date" Format="yyyy-MM-dd" />
                        <ext:Column Header="Tag" DataIndex="tag" />
                        <ext:Column Header="Message" DataIndex="message" />
                    </Columns>
                </ColumnModel>
                <SelectionModel>
                    <ext:RowSelectionModel runat="server" />
                </SelectionModel>
                <Plugins>
                    <ext:GridFilters runat="server" Local="true">
                        <Filters>
                            <ext:NumericFilter DataIndex="revision" />
                            <ext:ListFilter DataIndex="author" Options="vladimir,Daniil.Veriga,geoffrey.mcgill" />
                            <ext:DateFilter DataIndex="date" />
                            <ext:ListFilter DataIndex="tag" Options="NEW,FIX,UPDATE" />
                            <ext:StringFilter DataIndex="message" />
                        </Filters>
                    </ext:GridFilters>
                    <ext:RowExpander runat="server">
                        <Template runat="server">
                            <Html>
                                <div style="padding:5px;">
							    <b>Description:</b><br /> 
                                    <div style="margin-left: 25px;">{message}</div>
                                <br />
							    <b>Actions:</b>
                                    <ol style="margin-left:25px !important; list-style-type: decimal !important;">
                                        <tpl for="actions"><li>{description}</li></tpl>
                                    </ol>
                                </div>
						    </Html>
                        </Template>
                    </ext:RowExpander>
                </Plugins>
                <LoadMask ShowMask="true" />
            </ext:GridPanel>
        </Items>
    </ext:Viewport>
</body>
</html>
    