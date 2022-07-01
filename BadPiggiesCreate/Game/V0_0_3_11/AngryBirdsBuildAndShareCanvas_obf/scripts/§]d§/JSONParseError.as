package §]d§
{
   public class JSONParseError extends Error
   {
       
      
      private var §>!W§:int;
      
      private var §"_§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§>!W§ = param2;
         this.§"_§ = param3;
      }
      
      public function get §`",§() : int
      {
         return this.§>!W§;
      }
      
      public function get text() : String
      {
         return this.§"_§;
      }
   }
}
