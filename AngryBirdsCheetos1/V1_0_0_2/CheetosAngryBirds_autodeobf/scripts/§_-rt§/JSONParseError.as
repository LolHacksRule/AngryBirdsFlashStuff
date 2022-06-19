package §_-rt§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-008§:int;
      
      private var §_-iS§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-008§ = param2;
         this.§_-iS§ = param3;
      }
      
      public function get §_-wu§() : int
      {
         return this.§_-008§;
      }
      
      public function get text() : String
      {
         return this.§_-iS§;
      }
   }
}
