package §?o§
{
   public class JSONParseError extends Error
   {
       
      
      private var §-!a§:int;
      
      private var §-$"§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§-!a§ = param2;
         this.§-$"§ = param3;
      }
      
      public function get §5i§() : int
      {
         return this.§-!a§;
      }
      
      public function get text() : String
      {
         return this.§-$"§;
      }
   }
}
