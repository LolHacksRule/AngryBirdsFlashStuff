package § "W§
{
   public class JSONParseError extends Error
   {
       
      
      private var §!!?§:int;
      
      private var §7!G§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§!!?§ = param2;
         this.§7!G§ = param3;
      }
      
      public function get location() : int
      {
         return this.§!!?§;
      }
      
      public function get text() : String
      {
         return this.§7!G§;
      }
   }
}
