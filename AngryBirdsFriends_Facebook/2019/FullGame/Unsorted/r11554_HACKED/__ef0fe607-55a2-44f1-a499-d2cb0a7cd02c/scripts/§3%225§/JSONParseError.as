package §3"5§
{
   public class JSONParseError extends Error
   {
       
      
      private var §4!]§:int;
      
      private var §7y§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§4!]§ = param2;
         this.§7y§ = param3;
      }
      
      public function get §8"3§() : int
      {
         return this.§4!]§;
      }
      
      public function get text() : String
      {
         return this.§7y§;
      }
   }
}
