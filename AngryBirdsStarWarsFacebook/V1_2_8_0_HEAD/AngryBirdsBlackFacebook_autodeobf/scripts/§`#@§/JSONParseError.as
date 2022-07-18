package §`#@§
{
   public class JSONParseError extends Error
   {
       
      
      private var §3#^§:int;
      
      private var §-#@§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§3#^§ = param2;
         this.§-#@§ = param3;
      }
      
      public function get §1"-§() : int
      {
         return this.§3#^§;
      }
      
      public function get text() : String
      {
         return this.§-#@§;
      }
   }
}
