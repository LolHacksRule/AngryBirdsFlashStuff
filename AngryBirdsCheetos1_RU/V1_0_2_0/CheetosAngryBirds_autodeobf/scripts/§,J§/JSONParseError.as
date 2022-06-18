package §,J§
{
   public class JSONParseError extends Error
   {
       
      
      private var §7!$§:int;
      
      private var §const§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§7!$§ = param2;
         this.§const§ = param3;
      }
      
      public function get §@t§() : int
      {
         return this.§7!$§;
      }
      
      public function get text() : String
      {
         return this.§const§;
      }
   }
}
