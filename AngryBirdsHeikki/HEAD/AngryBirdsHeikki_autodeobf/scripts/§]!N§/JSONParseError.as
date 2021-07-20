package §]!N§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"!1§:int;
      
      private var §<!Q§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§"!1§ = param2;
         this.§<!Q§ = param3;
      }
      
      public function get §78§() : int
      {
         return this.§"!1§;
      }
      
      public function get text() : String
      {
         return this.§<!Q§;
      }
   }
}
