package §[T§
{
   public class JSONParseError extends Error
   {
       
      
      private var §1X§:int;
      
      private var §?!c§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§1X§ = param2;
         this.§?!c§ = param3;
      }
      
      public function get §!!=§() : int
      {
         return this.§1X§;
      }
      
      public function get text() : String
      {
         return this.§?!c§;
      }
   }
}
