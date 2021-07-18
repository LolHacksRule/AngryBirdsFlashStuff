package §;!2§
{
   public class JSONParseError extends Error
   {
       
      
      private var §8P§:int;
      
      private var §8!?§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            while(true)
            {
               name = "JSONParseError";
               loop2:
               while(!(_loc4_ && param1))
               {
                  this.§8!?§ = param3;
                  if(!(_loc4_ && this))
                  {
                     addr55:
                     if(_loc4_)
                     {
                        while(true)
                        {
                           this.§8P§ = param2;
                           continue loop2;
                           §§goto(addr55);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get location() : int
      {
         return this.§8P§;
      }
      
      public function get text() : String
      {
         return this.§8!?§;
      }
   }
}
