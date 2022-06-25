package §;<§
{
   public class JSONParseError extends Error
   {
       
      
      private var §"X§:int;
      
      private var §if§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1);
         }
         loop0:
         while(true)
         {
            name = "JSONParseError";
            do
            {
               this.§"X§ = param2;
               continue loop0;
            }
            while(_loc5_ && param1);
            
            return;
         }
      }
      
      public function get location() : int
      {
         return this.§"X§;
      }
      
      public function get text() : String
      {
         return this.§if§;
      }
   }
}
