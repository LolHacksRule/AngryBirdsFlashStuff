package §#-§
{
   public class JSONParseError extends Error
   {
       
      
      private var §6@§:int;
      
      private var §<!,§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§6@§ = param2;
         this.§<!,§ = param3;
      }
      
      public function get §9u§() : int
      {
         return this.§6@§;
      }
      
      public function get text() : String
      {
         return this.§<!,§;
      }
   }
}
