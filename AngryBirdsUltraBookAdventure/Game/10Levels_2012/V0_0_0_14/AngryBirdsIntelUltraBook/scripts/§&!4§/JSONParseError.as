package §&!4§
{
   public class JSONParseError extends Error
   {
       
      
      private var §]n§:int;
      
      private var §?!Y§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§]n§ = param2;
         this.§?!Y§ = param3;
      }
      
      public function get location() : int
      {
         return this.§]n§;
      }
      
      public function get text() : String
      {
         return this.§?!Y§;
      }
   }
}
