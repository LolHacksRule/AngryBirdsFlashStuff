package §'!g§
{
   public class JSONParseError extends Error
   {
       
      
      private var §3"E§:int;
      
      private var §4!m§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§3"E§ = param2;
         this.§4!m§ = param3;
      }
      
      public function get §4#P§() : int
      {
         return this.§3"E§;
      }
      
      public function get text() : String
      {
         return this.§4!m§;
      }
   }
}
