package §_-py§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-5l§:int;
      
      private var §_-B-§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-5l§ = param2;
         this.§_-B-§ = param3;
      }
      
      public function get location() : int
      {
         return this.§_-5l§;
      }
      
      public function get text() : String
      {
         return this.§_-B-§;
      }
   }
}
