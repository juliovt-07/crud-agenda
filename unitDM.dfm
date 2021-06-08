object DM: TDM
  OldCreateOrder = False
  Height = 283
  Width = 411
  object conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Password=hESCv0WdaTrSChxYWtJhAv61zL7ph4rH'
      'Server=31.42.186.28'
      'DriverID=MySQL')
    Connected = True
    Left = 32
    Top = 56
  end
  object tbContatos: TFDTable
    Active = True
    AfterInsert = tbContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'agenda.contatos'
    TableName = 'agenda.contatos'
    Left = 112
    Top = 56
    object tbContatosid: TFDAutoIncField
      DisplayWidth = 2
      FieldName = 'id'
      Origin = 'id'
    end
    object tbContatosnome: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 27
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbContatoscelular: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 16
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tbContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 8
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'data'
      Origin = '`data`'
    end
    object tbContatosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object dsContatos: TDataSource
    DataSet = tbContatos
    Left = 120
    Top = 136
  end
end
