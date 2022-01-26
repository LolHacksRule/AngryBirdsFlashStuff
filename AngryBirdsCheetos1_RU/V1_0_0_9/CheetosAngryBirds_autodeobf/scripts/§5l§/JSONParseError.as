package §5l§
{
   public class JSONParseError extends Error
   {
       
      
      private var §&!H§:int;
      
      private var §6!^§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§&!H§ = param2;
         this.§6!^§ = param3;
      }
      
      public function get §%!_§() : int
      {
         return this.§&!H§;
      }
      
      public function get text() : String
      {
         return this.§6!^§;
      }
   }
}
