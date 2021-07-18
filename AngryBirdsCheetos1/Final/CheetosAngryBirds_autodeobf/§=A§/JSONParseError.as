package §=A§
{
   public class JSONParseError extends Error
   {
       
      
      private var §9w§:int;
      
      private var §?4§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§9w§ = param2;
         this.§?4§ = param3;
      }
      
      public function get §=!@§() : int
      {
         return this.§9w§;
      }
      
      public function get text() : String
      {
         return this.§?4§;
      }
   }
}
