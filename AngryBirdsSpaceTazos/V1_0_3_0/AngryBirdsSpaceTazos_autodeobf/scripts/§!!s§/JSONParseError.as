package §!!s§
{
   public class JSONParseError extends Error
   {
       
      
      private var §?"-§:int;
      
      private var §^t§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§?"-§ = param2;
         this.§^t§ = param3;
      }
      
      public function get §,F§() : int
      {
         return this.§?"-§;
      }
      
      public function get text() : String
      {
         return this.§^t§;
      }
   }
}
