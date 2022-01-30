package §""1§
{
   public class JSONParseError extends Error
   {
       
      
      private var §2!T§:int;
      
      private var §6J§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§2!T§ = param2;
         this.§6J§ = param3;
      }
      
      public function get §&X§() : int
      {
         return this.§2!T§;
      }
      
      public function get text() : String
      {
         return this.§6J§;
      }
   }
}
