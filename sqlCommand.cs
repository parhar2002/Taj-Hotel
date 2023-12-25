using System;
using System.Data;
using System.Data.SqlClient;

namespace Taj_Hotel
{
    internal class sqlCommand
    {
        public object Parameters { get; internal set; }

        public static implicit operator sqlCommand(SqlCommand v)
        {
            throw new NotImplementedException();
        }

        
    }
}