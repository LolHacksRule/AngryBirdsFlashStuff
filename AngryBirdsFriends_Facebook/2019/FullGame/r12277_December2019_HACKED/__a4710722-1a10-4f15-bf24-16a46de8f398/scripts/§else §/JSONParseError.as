package §else §
{
   public class JSONParseError extends Error
   {
       
      
      private var §2a§:int;
      
      private var §""%§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§2a§ = param2;
         this.§""%§ = param3;
      }
      
      public function get §<"o§() : int
      {
         return this.§2a§;
      }
      
      public function get text() : String
      {
         return this.§""%§;
      }
   }
}
