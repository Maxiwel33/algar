object DM: TDM
  OldCreateOrder = False
  Height = 343
  Width = 448
  object RDW_entrada: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    SequenceField = 'ID_ENTRADA'
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = Frm_Mobile.DTBase1
    SQL.Strings = (
      'Select * From TBENTRADA')
    UpdateTableName = 'tbentrada'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 80
    Top = 40
    object RDW_entradaID_ENTRADA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_ENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RDW_entradaID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
    end
    object RDW_entradaDATA: TDateField
      FieldName = 'DATA'
    end
    object RDW_entradaHORA: TTimeField
      FieldName = 'HORA'
    end
    object strngfldRDW_entradaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object strngfldRDW_entradaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 40
    end
  end
end
