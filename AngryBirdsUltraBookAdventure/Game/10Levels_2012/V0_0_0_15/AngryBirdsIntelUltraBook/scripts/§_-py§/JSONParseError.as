package §_-py§
{
   public class JSONParseError extends Error
   {
       
      
      private var §_-5l§:int;
      
      private var §_-B-§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               while(!(_loc4_ && param2))
               {
                  this.§_-5l§ = param2;
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§_-B-§ = param3;
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get location() : int
      {
         return this.§_-5l§;
      }
      
      public function get text() : String
      {
         return this.§_-B-§;
      }
   }
}
