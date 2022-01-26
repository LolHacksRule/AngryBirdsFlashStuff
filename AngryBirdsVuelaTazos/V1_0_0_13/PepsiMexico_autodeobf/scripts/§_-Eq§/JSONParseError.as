package §_-Eq§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-mN§:int;
      
      private var §_-rs§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-mN§ = param2;
         this.§_-rs§ = param3;
      }
      
      public function get §_-7J§() : int
      {
         return this.§_-mN§;
      }
      
      public function get text() : String
      {
         return this.§_-rs§;
      }
   }
}
