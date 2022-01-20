package §%!H§
{
   public class JSONParseError extends Error
   {
       
      
      private var §>!f§:int;
      
      private var §@&§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§>!f§ = param2;
         this.§@&§ = param3;
      }
      
      public function get §6!=§() : int
      {
         return this.§>!f§;
      }
      
      public function get text() : String
      {
         return this.§@&§;
      }
   }
}
