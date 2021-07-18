package §48§
{
   public class §5!c§
   {
       
      
      public var popup:§["#§;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var §9!1§:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function §5!c§(param1:§["#§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.popup = param1;
               while(!(_loc5_ && param2))
               {
                  this.useTransitionIn = param2;
                  while(!(_loc5_ && param1))
                  {
                     this.useTransitionOut = param3;
                     loop3:
                     while(!(_loc5_ && param1))
                     {
                        while(true)
                        {
                           this.§9!1§ = param4;
                           if(_loc6_ || param1)
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
         §§goto(addr62);
      }
   }
}
