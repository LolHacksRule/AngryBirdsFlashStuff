package §#!s§
{
   public class JSONParseError extends Error
   {
       
      
      private var §2!b§:int;
      
      private var §;#l§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§2!b§ = param2;
         this.§;#l§ = param3;
      }
      
      public function get §0!4§() : int
      {
         return this.§2!b§;
      }
      
      public function get text() : String
      {
         return this.§;#l§;
      }
   }
}
