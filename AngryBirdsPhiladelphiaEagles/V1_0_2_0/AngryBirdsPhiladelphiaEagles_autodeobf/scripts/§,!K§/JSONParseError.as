package §,!K§
{
   public class JSONParseError extends Error
   {
       
      
      private var §9W§:int;
      
      private var §@x§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§9W§ = param2;
         this.§@x§ = param3;
      }
      
      public function get location() : int
      {
         return this.§9W§;
      }
      
      public function get text() : String
      {
         return this.§@x§;
      }
   }
}
