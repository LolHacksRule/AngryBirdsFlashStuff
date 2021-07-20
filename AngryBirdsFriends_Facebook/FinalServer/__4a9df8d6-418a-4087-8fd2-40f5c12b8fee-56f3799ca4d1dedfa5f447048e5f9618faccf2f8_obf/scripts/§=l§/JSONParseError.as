package §=l§
{
   public class JSONParseError extends Error
   {
       
      
      private var §5"C§:int;
      
      private var §8"m§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§5"C§ = param2;
         this.§8"m§ = param3;
      }
      
      public function get §[#N§() : int
      {
         return this.§5"C§;
      }
      
      public function get text() : String
      {
         return this.§8"m§;
      }
   }
}
