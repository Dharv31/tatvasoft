using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Logic_Layer.Entity
{
    public class BaseEntity
    {
        public DateTime? CreateData { get; set; } 
        public DateTime? ModifiedData { get; set; }
        public bool IsDeleted { get; set; }

    }
}
