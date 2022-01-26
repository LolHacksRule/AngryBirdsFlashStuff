package §_-VX§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-qU§:int;
      
      private var §_-MA§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-qU§ = param2;
         this.§_-MA§ = param3;
      }
      
      public function get §_-e6§() : int
      {
         return this.§_-qU§;
      }
      
      public function get text() : String
      {
         return this.§_-MA§;
      }
   }
}
