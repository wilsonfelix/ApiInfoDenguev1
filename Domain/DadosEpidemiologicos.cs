namespace ApiInfoDengue.Domain
{
    public class DadosEpidemiologicos
    {
        public int Id { get; set; }
        public string CodigoIBGE { get; set; } = string.Empty;
        public string Doenca { get; set; } = string.Empty;
        public string DataInicio { get; set; } = string.Empty;
        public string DataFim { get; set; } = string.Empty;
        public int CasosEstimadosMin { get; set; }
        public int CasosEstimadosMax { get; set; }
        public float Incidencia { get; set; }
    }
}
