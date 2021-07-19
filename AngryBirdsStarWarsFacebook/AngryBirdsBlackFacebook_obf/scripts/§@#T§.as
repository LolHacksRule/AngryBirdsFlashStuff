package
{
   public final class §@#T§
   {
       
      
      public var keystroke:uint;
      
      public var §=!u§:uint;
      
      public var callback:Function;
      
      public var released:Boolean = true;
      
      public function §@#T§(param1:uint, param2:uint, param3:Function)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.keystroke = param1;
               while(true)
               {
                  this.§=!u§ = param2;
                  loop2:
                  while(!(_loc5_ && this))
                  {
                     while(true)
                     {
                        this.callback = param3;
                        if(_loc4_)
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
   }
}
