package §>o§
{
   public class JSONParseError extends Error
   {
       
      
      private var §+N§:int;
      
      private var §=r§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§+N§ = param2;
         this.§=r§ = param3;
      }
      
      public function get location() : int
      {
         return this.§+N§;
      }
      
      public function get text() : String
      {
         return this.§=r§;
      }
   }
}
