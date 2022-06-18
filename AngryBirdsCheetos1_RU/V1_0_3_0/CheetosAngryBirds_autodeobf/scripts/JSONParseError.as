package
{
   public class JSONParseError extends Error
   {
       
      
      private var §0-§:int;
      
      private var §4Z§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§0-§ = param2;
         this.§4Z§ = param3;
      }
      
      public function get §'!I§() : int
      {
         return this.§0-§;
      }
      
      public function get text() : String
      {
         return this.§4Z§;
      }
   }
}
