package §5#§
{
   public class JSONParseError extends Error
   {
       
      
      private var §8!K§:int;
      
      private var §@!B§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§8!K§ = param2;
         this.§@!B§ = param3;
      }
      
      public function get §5l§() : int
      {
         return this.§8!K§;
      }
      
      public function get text() : String
      {
         return this.§@!B§;
      }
   }
}
