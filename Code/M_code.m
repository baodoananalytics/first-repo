let
    Source = MySQL.Database("xxx", "yyy", [ReturnSingleDatabase=true]),
    TTPT_ECONOMY = Source{[Schema="yyy",Item="ECONOMY"]}[Data],
    #"Filtered Rows" = Table.SelectRows(TTPT_ECONOMY, each ([data_name] = "pmi")),
    #"Removed Columns" = Table.RemoveColumns(#"Filtered Rows",{"id", "data_name", "other"}),
    #"Parsed JSON" = Table.TransformColumns(#"Removed Columns",{{"data_dict", Json.Document}}),
    #"Expanded data_dict" = Table.ExpandRecordColumn(#"Parsed JSON", "data_dict", {"pmi"}, {"pmi"}),
    #"Expanded pmi" = Table.ExpandRecordColumn(#"Expanded data_dict", "pmi", {"data"}, {"data"}),
    #"Renamed Columns" = Table.RenameColumns(#"Expanded pmi",{{"data", "pmi"}}),
    #"Changed Type" = Table.TransformColumnTypes(#"Renamed Columns",{{"pmi", type number}}),
    #"Unpivoted Columns" = Table.UnpivotOtherColumns(#"Changed Type", {"time_code"}, "Attribute", "Value"),
    #"Renamed Columns1" = Table.RenameColumns(#"Unpivoted Columns",{{"Attribute", "indicator"}, {"Value", "value"}}),
    #"Replaced Value" = Table.ReplaceValue(#"Renamed Columns1","pmi","pmi_now",Replacer.ReplaceText,{"indicator"}),
    #"Add Custom Column" = Table.AddColumn(#"Replaced Value", "date", each #date(Number.FromText(Text.Middle([time_code],1,4)),Number.FromText(Text.End([time_code],2)),1)),
    #"Changed Type1" = Table.TransformColumnTypes(#"Add Custom Column",{{"date", type date}}),
    #"Split Column by Delimiter" = Table.SplitColumn(#"Changed Type1", "indicator", Splitter.SplitTextByDelimiter("_", QuoteStyle.Csv), {"indicator.1", "indicator.2"}),
    #"Changed Type2" = Table.TransformColumnTypes(#"Split Column by Delimiter",{{"indicator.1", type text}, {"indicator.2", type text}}),
    #"Renamed Columns2" = Table.RenameColumns(#"Changed Type2",{{"indicator.1", "indicator"}, {"indicator.2", "unit"}}),
    #"Reordered Columns" = Table.ReorderColumns(#"Renamed Columns2",{"date", "time_code", "indicator", "value", "unit"})
in
    #"Reordered Columns"