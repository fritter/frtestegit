Alterei para ver

strsql += ") Values ( @pidconfig, @pidcliente, @piditem,";
                        strsql += "@pdescr_compl,";
                        strsql += "@pqtd,unid,";
                        strsql += "@pvl_item,";
                        strsql += "@pvl_desc,";
                        strsql += "@pcfop,";
                        strsql += "@pcod_nat,";
                        strsql += "@pcod_enq,";
                        strsql += "@pvl_bc_icms,";
                        strsql += "@paliq_icms,";
                        strsql += "@pvl_icms,";
                        strsql += "@pvl_bc_icms_st,";
                        strsql += "@paliq_st,";
                        strsql += "@pvl_icms_st,";
                        strsql += "@pvl_bc_ipi,";
                        strsql += "@paliq_ipi,";
                        strsql += "@pvl_ipi,";
                        strsql += "@pcst_pis,";
                        strsql += "@pvl_bc_pis,";
                        strsql += "@paliq_pis,";
                        strsql += "@pvl_pis,";
                        strsql += "@pcst_cofins,";
                        strsql += "@pvl_bc_cofins,";
                        strsql += "@paliq_cofins,";
                        strsql += "@pvl_cofins)";
						




CREATE TABLE [dbo].[idados] (
[Id]        BIGINT IDENTITY (1, 1) NOT NULL,
[idconfig]  INT    NOT NULL,
[idcliente] INT    NOT NULL,
[iditem] BIGINT    NOT NULL,
[descr_compl] VARCHAR(60) NULL,
[qtd] DECIMAL(18, 5) NULL,
[unid] VARCHAR(6) NULL,
[vl_item] DECIMAL(18, 2) NULL,
[vl_desc] DECIMAL(18, 2) NULL,
[cfop] VARCHAR(4) NULL,
[cod_nat] VARCHAR(10) NULL,
[cod_enq] VARCHAR(3) NULL,
[vl_bc_icms] DECIMAL(18, 2) NULL,
[aliq_icms] DECIMAL(18, 2) NULL,
[vl_icms] DECIMAL(18, 2) NULL,
[vl_bc_icms_st] DECIMAL(18, 2) NULL,
[aliq_st] DECIMAL(18, 2) NULL,
[vl_icms_st] DECIMAL(18, 2) NULL,
[vl_bc_ipi] DECIMAL(18, 2) NULL,
[aliq_ipi] DECIMAL(18, 2) NULL,
[vl_ipi] DECIMAL(18, 2) NULL,
[cst_pis] DECIMAL(18, 2) NULL,
[vl_bc_pis] DECIMAL(18, 2) NULL,
[aliq_pis] DECIMAL(18, 2) NULL,
[vl_pis] DECIMAL(18, 2) NULL,
[cst_cofins] DECIMAL(18, 2) NULL,
[vl_bc_cofins] DECIMAL(18, 2) NULL,
[aliq_cofins] DECIMAL(18, 2) NULL,
[vl_cofins] DECIMAL(18, 2) NULL,

CONSTRAINT [PK_idados] PRIMARY KEY CLUSTERED ([Id] ASC),
CONSTRAINT [FK_idados_To_config] FOREIGN KEY ([idconfig]) REFERENCES [dbo].[config] ([Id]),
CONSTRAINT [FK_idados_To_ipessoas] FOREIGN KEY ([idcliente]) REFERENCES [dbo].[ipessoas] ([Id]),
CONSTRAINT [FK_idados_To_iitem] FOREIGN KEY ([iditem]) REFERENCES [dbo].[iitem] ([Id])
);


GO

CREATE INDEX [IX_idados_idconfig] ON [dbo].[idados] ([idconfig])
