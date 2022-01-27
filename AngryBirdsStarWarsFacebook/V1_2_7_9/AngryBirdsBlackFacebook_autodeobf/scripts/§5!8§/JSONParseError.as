package §5!8§
{
   public class JSONParseError extends Error
   {
       
      
      private var §+!u§:int;
      
      private var §6!H§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§+!u§ = param2;
         this.§6!H§ = param3;
      }
      
      public function get §[v§() : int
      {
         return this.§+!u§;
      }
      
      public function get text() : String
      {
         return this.§6!H§;
      }
   }
}
