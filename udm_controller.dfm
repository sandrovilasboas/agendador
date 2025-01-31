object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 798
  Width = 1190
  object db: TFDConnection
    Params.Strings = (
      'DriverID=pg'
      'Database=agendamento'
      'User_Name=postgres'
      'Password=wg091514'
      'Server=localhost'
      'CharacterSet=UTF8')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object queryagenda: TFDQuery
    Connection = db
    SQL.Strings = (
      'select agenda_pago AS PAGO,'
      ' agenda_id, '
      ' agenda_cliente_id,'
      ' cliente_nome AS NOME,'
      ' cliente_celular AS CELULAR, '
      ' agenda_hora AS HORA,'
      ' agenda_observacao AS OBSERVACAO,'
      ' agenda_servico_descricao AS SERVICO,'
      ' agenda_servico_valor AS VALOR from agenda'
      ' inner join cliente on cliente_id = agenda_cliente_id'
      ' where agenda_data = :pdata and agenda_ativo = true')
    Left = 80
    Top = 16
    ParamData = <
      item
        Name = 'PDATA'
        ParamType = ptInput
      end>
    object queryagendapago: TBooleanField
      DisplayLabel = 'PAGO'
      FieldName = 'pago'
      Origin = 'pago'
    end
    object queryagendanome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object queryagendacelular: TWideStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'celular'
      Origin = 'celular'
      Size = 11
    end
    object queryagendahora: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'HORA'
      FieldName = 'hora'
      Origin = 'hora'
    end
    object queryagendaobservacao: TWideMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'OBSERVACAO'
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftWideMemo
    end
    object queryagendaagenda_id: TIntegerField
      FieldName = 'agenda_id'
      Origin = 'agenda_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object queryagendaagenda_cliente_id: TIntegerField
      FieldName = 'agenda_cliente_id'
      Origin = 'agenda_cliente_id'
    end
    object queryagendaservico: TWideStringField
      FieldName = 'servico'
      Origin = 'servico'
      Size = 100
    end
    object queryagendavalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 5
      Size = 2
    end
  end
  object dsagenda: TDataSource
    DataSet = queryagenda
    Left = 152
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'D:\Projetos\libpq.dll'
    Left = 24
    Top = 64
  end
  object querybusca: TFDQuery
    Connection = db
    SQL.Strings = (
      
        'SELECT CLIENTE_ID AS CLIENTE, CLIENTE_NOME AS NOME, CLIENTE_CELU' +
        'LAR AS CELULAR, CLIENTE_TELEFONE AS TELEFONE, CLIENTE_DOCUMENTO ' +
        'AS DOCUMENTO  FROM CLIENTE '
      'WHERE cliente_nome LIKE :p  or cliente_celular LIKE :p')
    Left = 40
    Top = 248
    ParamData = <
      item
        Name = 'P'
        ParamType = ptInput
      end>
    object querybuscacliente: TIntegerField
      FieldName = 'cliente'
    end
    object querybuscanome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object querybuscacelular: TWideStringField
      FieldName = 'celular'
      Size = 11
    end
    object querybuscatelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 11
    end
    object querybuscadocumento: TWideStringField
      FieldName = 'documento'
      Origin = 'documento'
      Size = 13
    end
  end
  object dsbusca: TDataSource
    DataSet = querybusca
    Left = 88
    Top = 248
  end
  object queryservico: TFDQuery
    Connection = db
    SQL.Strings = (
      'SELECT * FROM SERVICO')
    Left = 40
    Top = 360
    object queryservicoservico_id: TIntegerField
      FieldName = 'servico_id'
      Origin = 'servico_id'
    end
    object queryservicoservico_descricao: TWideStringField
      FieldName = 'servico_descricao'
      Origin = 'servico_descricao'
      Size = 100
    end
    object queryservicoservico_valor: TBCDField
      FieldName = 'servico_valor'
      KeyFields = 'servico_valor'
      Origin = 'servico_valor'
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object dsservico: TDataSource
    DataSet = queryservico
    Left = 112
    Top = 360
  end
  object queryfinanceiro: TFDQuery
    Connection = db
    SQL.Strings = (
      'select * '
      'from financeiro '
      'where financeiro_agenda_data between :p1 and :p2'
      '')
    Left = 40
    Top = 448
    ParamData = <
      item
        Name = 'P1'
        ParamType = ptInput
      end
      item
        Name = 'P2'
        ParamType = ptInput
      end>
    object queryfinanceirofinanceiro_id: TIntegerField
      FieldName = 'financeiro_id'
      Origin = 'financeiro_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object queryfinanceirofinanceiro_cliente_id: TIntegerField
      FieldName = 'financeiro_cliente_id'
      Origin = 'financeiro_cliente_id'
    end
    object queryfinanceirofinanceiro_cliente_nome: TWideStringField
      FieldName = 'financeiro_cliente_nome'
      Origin = 'financeiro_cliente_nome'
      Size = 100
    end
    object queryfinanceirofinanceiro_agenda_id: TIntegerField
      FieldName = 'financeiro_agenda_id'
      Origin = 'financeiro_agenda_id'
    end
    object queryfinanceirofinanceiro_agenda_data: TDateField
      FieldName = 'financeiro_agenda_data'
      Origin = 'financeiro_agenda_data'
    end
    object queryfinanceirofinanceiro_agenda_hora: TTimeField
      FieldName = 'financeiro_agenda_hora'
      Origin = 'financeiro_agenda_hora'
    end
    object queryfinanceirofinanceiro_agenda_observacao: TWideMemoField
      FieldName = 'financeiro_agenda_observacao'
      Origin = 'financeiro_agenda_observacao'
      BlobType = ftWideMemo
    end
    object queryfinanceirofinanceiro_formapagto: TWideStringField
      FieldName = 'financeiro_formapagto'
      Origin = 'financeiro_formapagto'
      Size = 50
    end
    object queryfinanceirofinanceiro_valor: TBCDField
      FieldName = 'financeiro_valor'
      Origin = 'financeiro_valor'
      Precision = 10
      Size = 2
    end
  end
  object dsfinanceiro: TDataSource
    DataSet = queryfinanceiro
    Left = 104
    Top = 448
  end
end
