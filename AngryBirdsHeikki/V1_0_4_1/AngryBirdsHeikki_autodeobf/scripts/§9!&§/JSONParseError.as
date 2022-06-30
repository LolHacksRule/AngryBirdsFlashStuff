package §9!&§
{
   public class JSONParseError extends Error
   {
       
      
      private var §^!G§:int;
      
      private var §4E§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§^!G§ = param2;
         this.§4E§ = param3;
      }
      
      public function get §'y§() : int
      {
         return this.§^!G§;
      }
      
      public function get text() : String
      {
         return this.§4E§;
      }
   }
}
