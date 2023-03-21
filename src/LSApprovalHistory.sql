DROP TABLE IF EXISTS LSApprovalHistory

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE LSApprovalHistory (
	CompanyId					int						NOT NULL,



	NoteId					    uniqueidentifier		NULL,
	tstamp                      timestamp				NOT NULL,           -- Standard Acumatica field  
	CreatedByID                 uniqueidentifier		NOT NULL,           -- Standard Acumatica field 
	CreatedByScreenID           char(8)					NOT NULL,           -- Standard Acumatica field 
	CreatedDateTime             datetime				NOT NULL,           -- Standard Acumatica field 
	LastModifiedByID            uniqueidentifier		NOT NULL,           -- Standard Acumatica field 
	LastModifiedByScreenID      char(8)					NOT NULL,           -- Standard Acumatica field 
	LastModifiedDateTime        datetime				NOT NULL           -- Standard Acumatica field 

	CONSTRAINT [LSApprovalHistory_PK] PRIMARY KEY CLUSTERED 
	([CompanyID] ASC,
	 [RefNbr]	 ASC )
		WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)