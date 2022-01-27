package §6!J§
{
   public class JSONParseError extends Error
   {
       
      
      private var §`k§:int;
      
      private var §4>§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§`k§ = param2;
         this.§4>§ = param3;
      }
      
      public function get §+![§() : int
      {
         return this.§`k§;
      }
      
      public function get text() : String
      {
         return this.§4>§;
      }
   }
}
