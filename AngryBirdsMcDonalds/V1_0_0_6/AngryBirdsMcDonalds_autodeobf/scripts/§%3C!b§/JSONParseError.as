package §<!b§
{
   public class JSONParseError extends Error
   {
       
      
      private var §[-§:int;
      
      private var §6w§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§[-§ = param2;
         this.§6w§ = param3;
      }
      
      public function get §]!i§() : int
      {
         return this.§[-§;
      }
      
      public function get text() : String
      {
         return this.§6w§;
      }
   }
}
