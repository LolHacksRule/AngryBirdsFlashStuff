package §3h§
{
   public class JSONParseError extends Error
   {
       
      
      private var §%!h§:int;
      
      private var §9!-§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§%!h§ = param2;
         this.§9!-§ = param3;
      }
      
      public function get §'`§() : int
      {
         return this.§%!h§;
      }
      
      public function get text() : String
      {
         return this.§9!-§;
      }
   }
}
