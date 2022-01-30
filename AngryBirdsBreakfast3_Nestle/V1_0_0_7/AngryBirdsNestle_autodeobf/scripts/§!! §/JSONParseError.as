package §!! §
{
   public class JSONParseError extends Error
   {
       
      
      private var §]!v§:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§]!v§ = param2;
         this._text = param3;
      }
      
      public function get location() : int
      {
         return this.§]!v§;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
