package §+E§
{
   public class JSONParseError extends Error
   {
       
      
      private var final:int;
      
      private var §60§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.final = param2;
         this.§60§ = param3;
      }
      
      public function get §4!d§() : int
      {
         return this.final;
      }
      
      public function get text() : String
      {
         return this.§60§;
      }
   }
}
