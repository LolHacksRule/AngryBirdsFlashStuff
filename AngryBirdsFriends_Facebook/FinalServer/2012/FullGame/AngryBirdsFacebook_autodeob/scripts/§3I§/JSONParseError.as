package §3I§
{
   public class JSONParseError extends Error
   {
       
      
      private var §'i§:int;
      
      private var §@"6§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§'i§ = param2;
         this.§@"6§ = param3;
      }
      
      public function get location() : int
      {
         return this.§'i§;
      }
      
      public function get text() : String
      {
         return this.§@"6§;
      }
   }
}
