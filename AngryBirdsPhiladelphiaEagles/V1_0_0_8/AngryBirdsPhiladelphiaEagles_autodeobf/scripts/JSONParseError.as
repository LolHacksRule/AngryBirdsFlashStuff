package
{
   public class JSONParseError extends Error
   {
       
      
      private var §9!-§:int;
      
      private var §0! §:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§9!-§ = param2;
         this.§0! § = param3;
      }
      
      public function get location() : int
      {
         return this.§9!-§;
      }
      
      public function get text() : String
      {
         return this.§0! §;
      }
   }
}
