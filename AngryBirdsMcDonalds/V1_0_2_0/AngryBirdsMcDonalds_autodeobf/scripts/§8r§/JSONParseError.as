package §8r§
{
   public class JSONParseError extends Error
   {
       
      
      private var §4!Q§:int;
      
      private var §2!A§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§4!Q§ = param2;
         this.§2!A§ = param3;
      }
      
      public function get §1!X§() : int
      {
         return this.§4!Q§;
      }
      
      public function get text() : String
      {
         return this.§2!A§;
      }
   }
}
