package §=^§
{
   public class JSONParseError extends Error
   {
       
      
      private var §5!B§:int;
      
      private var §4U§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§5!B§ = param2;
         this.§4U§ = param3;
      }
      
      public function get location() : int
      {
         return this.§5!B§;
      }
      
      public function get text() : String
      {
         return this.§4U§;
      }
   }
}
