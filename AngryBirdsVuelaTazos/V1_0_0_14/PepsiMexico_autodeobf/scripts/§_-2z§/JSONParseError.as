package §_-2z§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-ux§:int;
      
      private var §_-C9§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-ux§ = param2;
         this.§_-C9§ = param3;
      }
      
      public function get §_-Y-§() : int
      {
         return this.§_-ux§;
      }
      
      public function get text() : String
      {
         return this.§_-C9§;
      }
   }
}
