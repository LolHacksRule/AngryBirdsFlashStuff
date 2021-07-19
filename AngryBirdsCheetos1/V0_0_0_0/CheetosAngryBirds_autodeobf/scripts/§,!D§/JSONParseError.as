package §,!D§
{
   public class JSONParseError extends Error
   {
       
      
      private var §#s§:int;
      
      private var §9!X§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§#s§ = param2;
         this.§9!X§ = param3;
      }
      
      public function get §%!6§() : int
      {
         return this.§#s§;
      }
      
      public function get text() : String
      {
         return this.§9!X§;
      }
   }
}
