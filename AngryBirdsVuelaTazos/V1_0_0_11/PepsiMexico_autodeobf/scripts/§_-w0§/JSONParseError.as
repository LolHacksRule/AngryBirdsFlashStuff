package §_-w0§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-89§:int;
      
      private var §_-pp§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-89§ = param2;
         this.§_-pp§ = param3;
      }
      
      public function get §const§() : int
      {
         return this.§_-89§;
      }
      
      public function get text() : String
      {
         return this.§_-pp§;
      }
   }
}
