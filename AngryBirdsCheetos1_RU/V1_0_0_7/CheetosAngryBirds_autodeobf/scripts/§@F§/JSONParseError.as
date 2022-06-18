package §@F§
{
   public class JSONParseError extends Error
   {
       
      
      private var §^U§:int;
      
      private var §'!!§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§^U§ = param2;
         this.§'!!§ = param3;
      }
      
      public function get § 9§() : int
      {
         return this.§^U§;
      }
      
      public function get text() : String
      {
         return this.§'!!§;
      }
   }
}
