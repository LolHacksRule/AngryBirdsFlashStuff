package §_-Y7§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-S5§:int;
      
      private var §_-xB§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-S5§ = param2;
         this.§_-xB§ = param3;
      }
      
      public function get §_-gw§() : int
      {
         return this.§_-S5§;
      }
      
      public function get text() : String
      {
         return this.§_-xB§;
      }
   }
}
