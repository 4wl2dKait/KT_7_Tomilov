//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KT7_tm.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PartnerProduct
    {
        public long id { get; set; }
        public string partner_product { get; set; }
        public int partner_id { get; set; }
        public int product_amount { get; set; }
        public System.DateTime sale_date { get; set; }
    }
}