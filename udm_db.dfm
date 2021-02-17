object dm_db: Tdm_db
  OldCreateOrder = False
  Height = 549
  Width = 969
  object db: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'Password=wg091514'
      'User_Name=postgres'
      'DriverID=pg'
      'CharacterSet=UTF8')
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = db
    Left = 888
    Top = 32
  end
end
