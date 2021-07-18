package §;!2§
{
   public class JSONParseError extends Error
   {
       
      
      private var §8P§:int;
      
      private var §8!?§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§8P§ = param2;
         this.§8!?§ = param3;
      }
      
      public function get location() : int
      {
         return this.§8P§;
      }
      
      public function get text() : String
      {
         return this.§8!?§;
      }
   }
}
