package §_-zE§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-e7§:int;
      
      private var §_-sA§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-e7§ = param2;
         this.§_-sA§ = param3;
      }
      
      public function get §_-dR§() : int
      {
         return this.§_-e7§;
      }
      
      public function get text() : String
      {
         return this.§_-sA§;
      }
   }
}
