package §!e§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"g§:int;
      
      private var §!<§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§"g§ = param2;
         this.§!<§ = param3;
      }
      
      public function get location() : int
      {
         return this.§"g§;
      }
      
      public function get text() : String
      {
         return this.§!<§;
      }
   }
}
