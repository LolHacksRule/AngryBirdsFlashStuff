package §;!]§
{
   public class JSONParseError extends Error
   {
       
      
      private var §%C§:int;
      
      private var §@!U§:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1);
            loop0:
            while(true)
            {
               name = "JSONParseError";
               while(true)
               {
                  this.§%C§ = param2;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§@!U§ = param3;
                        if(!(_loc5_ && param2))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function get §!!+§() : int
      {
         return this.§%C§;
      }
      
      public function get text() : String
      {
         return this.§@!U§;
      }
   }
}
