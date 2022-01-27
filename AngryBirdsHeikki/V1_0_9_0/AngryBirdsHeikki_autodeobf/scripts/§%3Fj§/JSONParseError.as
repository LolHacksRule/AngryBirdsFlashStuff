package §?j§
{
   public class JSONParseError extends Error
   {
       
      
      private var §@!B§:int;
      
      private var §3!D§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§@!B§ = param2;
         this.§3!D§ = param3;
      }
      
      public function get §,!S§() : int
      {
         return this.§@!B§;
      }
      
      public function get text() : String
      {
         return this.§3!D§;
      }
   }
}
