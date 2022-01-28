package §_-s-§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-YS§:int;
      
      private var §_-SC§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this.§_-YS§ = param2;
         this.§_-SC§ = param3;
      }
      
      public function get §_-aB§() : int
      {
         return this.§_-YS§;
      }
      
      public function get text() : String
      {
         return this.§_-SC§;
      }
   }
}
