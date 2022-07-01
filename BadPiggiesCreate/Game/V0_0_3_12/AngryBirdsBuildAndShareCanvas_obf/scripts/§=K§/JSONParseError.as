package §=K§
{
   public class JSONParseError extends Error
   {
       
      
      private var §[?§:int;
      
      private var §8!#§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§[?§ = param2;
         this.§8!#§ = param3;
      }
      
      public function get §8!G§() : int
      {
         return this.§[?§;
      }
      
      public function get text() : String
      {
         return this.§8!#§;
      }
   }
}
