package §6"&§
{
   public class JSONParseError extends Error
   {
       
      
      private var §'!D§:int;
      
      private var §!!Z§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§'!D§ = param2;
         this.§!!Z§ = param3;
      }
      
      public function get §6!1§() : int
      {
         return this.§'!D§;
      }
      
      public function get text() : String
      {
         return this.§!!Z§;
      }
   }
}
