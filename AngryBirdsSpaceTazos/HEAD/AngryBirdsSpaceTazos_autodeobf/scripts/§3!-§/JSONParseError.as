package §3!-§
{
   public class JSONParseError extends Error
   {
       
      
      private var §^!Q§:int;
      
      private var §#"#§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§^!Q§ = param2;
         this.§#"#§ = param3;
      }
      
      public function get §>C§() : int
      {
         return this.§^!Q§;
      }
      
      public function get text() : String
      {
         return this.§#"#§;
      }
   }
}
