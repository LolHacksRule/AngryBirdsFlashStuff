package §?!f§
{
   public class JSONParseError extends Error
   {
       
      
      private var §`!S§:int;
      
      private var §]T§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§`!S§ = param2;
         this.§]T§ = param3;
      }
      
      public function get location() : int
      {
         return this.§`!S§;
      }
      
      public function get text() : String
      {
         return this.§]T§;
      }
   }
}
