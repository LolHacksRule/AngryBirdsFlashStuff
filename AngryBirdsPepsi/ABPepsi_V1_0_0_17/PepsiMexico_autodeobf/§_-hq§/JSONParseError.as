package §_-hq§
{
   public class JSONParseError extends Error
   {
       
      
      private var §null§:int;
      
      private var §_-WD§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§null§ = param2;
         this.§_-WD§ = param3;
      }
      
      public function get §_-m7§() : int
      {
         return this.§null§;
      }
      
      public function get text() : String
      {
         return this.§_-WD§;
      }
   }
}
