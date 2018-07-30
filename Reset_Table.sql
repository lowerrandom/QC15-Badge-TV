USE [badge]
GO

DROP TABLE [dbo].[badges]

GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[badges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id0] [int] NOT NULL,
	[lastseen] [datetime2](7) NULL,
	[0] BINARY(10) DEFAULT 0 NOT NULL,
	[1] BINARY(10) DEFAULT 0 NOT NULL,
	[2] BINARY(10) DEFAULT 0 NOT NULL,
	[3] BINARY(10) DEFAULT 0 NOT NULL,
	[4] BINARY(10) DEFAULT 0 NOT NULL,
	[5] BINARY(10) DEFAULT 0 NOT NULL,
	[6] BINARY(10) DEFAULT 0 NOT NULL,
	[7] BINARY(10) DEFAULT 0 NOT NULL,
	[8] BINARY(10) DEFAULT 0 NOT NULL,
	[9] BINARY(10) DEFAULT 0 NOT NULL,
	[10] BINARY(10) DEFAULT 0 NOT NULL,
	[11] BINARY(10) DEFAULT 0 NOT NULL,
	[12] BINARY(10) DEFAULT 0 NOT NULL,
	[13] BINARY(10) DEFAULT 0 NOT NULL,
	[14] BINARY(10) DEFAULT 0 NOT NULL,
	[15] BINARY(10) DEFAULT 0 NOT NULL,
	[16] BINARY(10) DEFAULT 0 NOT NULL,
	[17] BINARY(10) DEFAULT 0 NOT NULL,
	[18] BINARY(10) DEFAULT 0 NOT NULL,
	[19] BINARY(10) DEFAULT 0 NOT NULL,
	[20] BINARY(10) DEFAULT 0 NOT NULL,
	[21] BINARY(10) DEFAULT 0 NOT NULL,
	[22] BINARY(10) DEFAULT 0 NOT NULL,
	[23] BINARY(10) DEFAULT 0 NOT NULL,
	[24] BINARY(10) DEFAULT 0 NOT NULL,
	[25] BINARY(10) DEFAULT 0 NOT NULL,
	[26] BINARY(10) DEFAULT 0 NOT NULL,
	[27] BINARY(10) DEFAULT 0 NOT NULL,
	[28] BINARY(10) DEFAULT 0 NOT NULL,
	[29] BINARY(10) DEFAULT 0 NOT NULL,
	[30] BINARY(10) DEFAULT 0 NOT NULL,
	[31] BINARY(10) DEFAULT 0 NOT NULL,
	[32] BINARY(10) DEFAULT 0 NOT NULL,
	[33] BINARY(10) DEFAULT 0 NOT NULL,
	[34] BINARY(10) DEFAULT 0 NOT NULL,
	[35] BINARY(10) DEFAULT 0 NOT NULL,
	[36] BINARY(10) DEFAULT 0 NOT NULL,
	[37] BINARY(10) DEFAULT 0 NOT NULL,
	[38] BINARY(10) DEFAULT 0 NOT NULL,
	[39] BINARY(10) DEFAULT 0 NOT NULL,
	[40] BINARY(10) DEFAULT 0 NOT NULL,
	[41] BINARY(10) DEFAULT 0 NOT NULL,
	[42] BINARY(10) DEFAULT 0 NOT NULL,
	[43] BINARY(10) DEFAULT 0 NOT NULL,
	[44] BINARY(10) DEFAULT 0 NOT NULL,
	[45] BINARY(10) DEFAULT 0 NOT NULL,
	[46] BINARY(10) DEFAULT 0 NOT NULL,
	[47] BINARY(10) DEFAULT 0 NOT NULL,
	[48] BINARY(10) DEFAULT 0 NOT NULL,
	[49] BINARY(10) DEFAULT 0 NOT NULL,
	[50] BINARY(10) DEFAULT 0 NOT NULL,
	[51] BINARY(10) DEFAULT 0 NOT NULL,
	[52] BINARY(10) DEFAULT 0 NOT NULL,
	[53] BINARY(10) DEFAULT 0 NOT NULL,
	[54] BINARY(10) DEFAULT 0 NOT NULL,
	[55] BINARY(10) DEFAULT 0 NOT NULL,
	[56] BINARY(10) DEFAULT 0 NOT NULL,
	[57] BINARY(10) DEFAULT 0 NOT NULL,
	[58] BINARY(10) DEFAULT 0 NOT NULL,
	[59] BINARY(10) DEFAULT 0 NOT NULL,
	[60] BINARY(10) DEFAULT 0 NOT NULL,
	[61] BINARY(10) DEFAULT 0 NOT NULL,
	[62] BINARY(10) DEFAULT 0 NOT NULL,
	[63] BINARY(10) DEFAULT 0 NOT NULL,
	[64] BINARY(10) DEFAULT 0 NOT NULL,
	[65] BINARY(10) DEFAULT 0 NOT NULL,
	[66] BINARY(10) DEFAULT 0 NOT NULL,
	[67] BINARY(10) DEFAULT 0 NOT NULL,
	[68] BINARY(10) DEFAULT 0 NOT NULL,
	[69] BINARY(10) DEFAULT 0 NOT NULL,
	[70] BINARY(10) DEFAULT 0 NOT NULL,
	[71] BINARY(10) DEFAULT 0 NOT NULL,
	[72] BINARY(10) DEFAULT 0 NOT NULL,
	[73] BINARY(10) DEFAULT 0 NOT NULL,
	[74] BINARY(10) DEFAULT 0 NOT NULL,
	[75] BINARY(10) DEFAULT 0 NOT NULL,
	[76] BINARY(10) DEFAULT 0 NOT NULL,
	[77] BINARY(10) DEFAULT 0 NOT NULL,
	[78] BINARY(10) DEFAULT 0 NOT NULL,
	[79] BINARY(10) DEFAULT 0 NOT NULL,
	[80] BINARY(10) DEFAULT 0 NOT NULL,
	[81] BINARY(10) DEFAULT 0 NOT NULL,
	[82] BINARY(10) DEFAULT 0 NOT NULL,
	[83] BINARY(10) DEFAULT 0 NOT NULL,
	[84] BINARY(10) DEFAULT 0 NOT NULL,
	[85] BINARY(10) DEFAULT 0 NOT NULL,
	[86] BINARY(10) DEFAULT 0 NOT NULL,
	[87] BINARY(10) DEFAULT 0 NOT NULL,
	[88] BINARY(10) DEFAULT 0 NOT NULL,
	[89] BINARY(10) DEFAULT 0 NOT NULL,
	[90] BINARY(10) DEFAULT 0 NOT NULL,
	[91] BINARY(10) DEFAULT 0 NOT NULL,
	[92] BINARY(10) DEFAULT 0 NOT NULL,
	[93] BINARY(10) DEFAULT 0 NOT NULL,
	[94] BINARY(10) DEFAULT 0 NOT NULL,
	[95] BINARY(10) DEFAULT 0 NOT NULL

) ON [PRIMARY]
GO

DROP TABLE [dbo].[badgestats]

GO


CREATE TABLE [dbo].[badgestats](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [id0] [int] NOT NULL,
    [badgename] [varchar](50) NULL,
    [lastseen] [datetime2](7) NULL,
    [badges_seen] [int] DEFAULT 0,
    [badges_connected] [int] DEFAULT 0,
    [badges_uploaded] [int] DEFAULT 0,
    [ubers_seen] [int] DEFAULT 0,
    [ubers_connected] [int] DEFAULT 0,
    [ubers_uploaded] [int] DEFAULT 0,
    [handlers_seen] [int] DEFAULT 0,
    [handlers_connected] [int] DEFAULT 0,
    [handlers_uploaded] [int] DEFAULT 0
	) ON [PRIMARY]
GO

DECLARE @cnt INT = 0;

WHILE @cnt < 450
BEGIN


INSERT INTO [dbo].[badges]
           ([id0]
           ,[lastseen])
     VALUES
           (@cnt,
           SYSDATETIME());

INSERT INTO [dbo].[badgestats]
           ([id0])
     VALUES
           (@cnt);

SET @cnt = @cnt + 1;

END;
GO


