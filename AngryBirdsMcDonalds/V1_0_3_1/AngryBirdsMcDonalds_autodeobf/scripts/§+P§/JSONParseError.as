package §+P§
{
   public class JSONParseError extends Error
   {
       
      
      private var §#!Z§:int;
      
      private var §0z§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§#!Z§ = param2;
         this.§0z§ = param3;
      }
      
      public function get §>!l§() : int
      {
         return this.§#!Z§;
      }
      
      public function get text() : String
      {
         return this.§0z§;
      }
   }
}
