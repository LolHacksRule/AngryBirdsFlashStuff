package § !9§
{
   public class JSONParseError extends Error
   {
       
      
      private var §%"F§:int;
      
      private var §'!B§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§%"F§ = param2;
         this.§'!B§ = param3;
      }
      
      public function get location() : int
      {
         return this.§%"F§;
      }
      
      public function get text() : String
      {
         return this.§'!B§;
      }
   }
}
