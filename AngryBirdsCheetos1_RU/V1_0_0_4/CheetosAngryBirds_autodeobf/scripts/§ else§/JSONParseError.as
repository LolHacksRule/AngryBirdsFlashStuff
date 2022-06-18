package § else§
{
   public class JSONParseError extends Error
   {
       
      
      private var §=!S§:int;
      
      private var §+!M§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§=!S§ = param2;
         this.§+!M§ = param3;
      }
      
      public function get §!"§() : int
      {
         return this.§=!S§;
      }
      
      public function get text() : String
      {
         return this.§+!M§;
      }
   }
}
