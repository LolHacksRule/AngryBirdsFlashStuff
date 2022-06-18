package §^!5§
{
   public class JSONParseError extends Error
   {
       
      
      private var §=h§:int;
      
      private var §<!Y§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§=h§ = param2;
         this.§<!Y§ = param3;
      }
      
      public function get §`!W§() : int
      {
         return this.§=h§;
      }
      
      public function get text() : String
      {
         return this.§<!Y§;
      }
   }
}
