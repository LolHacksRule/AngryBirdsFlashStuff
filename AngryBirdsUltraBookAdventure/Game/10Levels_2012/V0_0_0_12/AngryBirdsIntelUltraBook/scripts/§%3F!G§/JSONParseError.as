package §?!G§
{
   public class JSONParseError extends Error
   {
       
      
      private var §0!f§:int;
      
      private var §]!7§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§0!f§ = param2;
         this.§]!7§ = param3;
      }
      
      public function get location() : int
      {
         return this.§0!f§;
      }
      
      public function get text() : String
      {
         return this.§]!7§;
      }
   }
}
