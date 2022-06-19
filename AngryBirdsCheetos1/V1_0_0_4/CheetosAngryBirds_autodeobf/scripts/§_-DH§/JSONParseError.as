package §_-DH§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-Bs§:int;
      
      private var §_-Ik§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-Bs§ = param2;
         this.§_-Ik§ = param3;
      }
      
      public function get §_-b1§() : int
      {
         return this.§_-Bs§;
      }
      
      public function get text() : String
      {
         return this.§_-Ik§;
      }
   }
}
