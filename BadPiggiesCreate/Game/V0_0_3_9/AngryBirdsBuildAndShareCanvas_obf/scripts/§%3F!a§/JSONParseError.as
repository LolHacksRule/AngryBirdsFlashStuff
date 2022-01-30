package §?!a§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"!v§:int;
      
      private var §!"2§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§"!v§ = param2;
         this.§!"2§ = param3;
      }
      
      public function get §^p§() : int
      {
         return this.§"!v§;
      }
      
      public function get text() : String
      {
         return this.§!"2§;
      }
   }
}
