package §&d§
{
   public class JSONParseError extends Error
   {
       
      
      private var § u§:int;
      
      private var § a§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§ u§ = param2;
         this.§ a§ = param3;
      }
      
      public function get §"n§() : int
      {
         return this.§ u§;
      }
      
      public function get text() : String
      {
         return this.§ a§;
      }
   }
}
