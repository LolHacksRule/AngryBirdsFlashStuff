package §%^§
{
   public class JSONParseError extends Error
   {
       
      
      private var §[j§:int;
      
      private var §-Q§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§[j§ = param2;
         this.§-Q§ = param3;
      }
      
      public function get location() : int
      {
         return this.§[j§;
      }
      
      public function get text() : String
      {
         return this.§-Q§;
      }
   }
}
