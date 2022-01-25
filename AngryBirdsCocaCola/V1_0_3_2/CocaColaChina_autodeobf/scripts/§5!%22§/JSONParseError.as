package §5!"§
{
   public class JSONParseError extends Error
   {
       
      
      private var §5>§:int;
      
      private var §+F§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§5>§ = param2;
         this.§+F§ = param3;
      }
      
      public function get §8!!§() : int
      {
         return this.§5>§;
      }
      
      public function get text() : String
      {
         return this.§+F§;
      }
   }
}
