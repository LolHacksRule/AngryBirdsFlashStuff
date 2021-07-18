package §>'§
{
   public class JSONParseError extends Error
   {
       
      
      private var §`!R§:int;
      
      private var § m§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§`!R§ = param2;
         this.§ m§ = param3;
      }
      
      public function get §%!_§() : int
      {
         return this.§`!R§;
      }
      
      public function get text() : String
      {
         return this.§ m§;
      }
   }
}
