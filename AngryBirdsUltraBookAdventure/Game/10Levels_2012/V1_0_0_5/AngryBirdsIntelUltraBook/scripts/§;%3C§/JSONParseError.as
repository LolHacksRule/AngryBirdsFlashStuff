package §;<§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"X§:int;
      
      private var §if§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§"X§ = param2;
         this.§if§ = param3;
      }
      
      public function get location() : int
      {
         return this.§"X§;
      }
      
      public function get text() : String
      {
         return this.§if§;
      }
   }
}
