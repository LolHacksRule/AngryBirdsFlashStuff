package §[!m§
{
   public class §1!v§
   {
       
      
      public var popup:§[!j§;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var §-!n§:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function §1!v§(param1:§[!j§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.popup = param1;
               while(true)
               {
                  this.useTransitionIn = param2;
                  while(!(_loc6_ && this))
                  {
                     this.useTransitionOut = param3;
                     loop3:
                     while(!_loc6_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§-!n§ = param4;
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
