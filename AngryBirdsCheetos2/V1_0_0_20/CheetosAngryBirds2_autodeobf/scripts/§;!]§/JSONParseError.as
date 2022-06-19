package §;!]§
{
   public class JSONParseError extends Error
   {
       
      
      private var §%C§:int;
      
      private var §@!U§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§%C§ = param2;
         this.§@!U§ = param3;
      }
      
      public function get §!!+§() : int
      {
         return this.§%C§;
      }
      
      public function get text() : String
      {
         return this.§@!U§;
      }
   }
}
