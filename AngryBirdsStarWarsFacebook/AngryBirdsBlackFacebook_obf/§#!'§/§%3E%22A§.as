package §#!'§
{
   import §!"e§.§>"]§;
   import §!"e§.§`"W§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   
   public class §>"A§ extends §7!>§
   {
       
      
      public function §>"A§(param1:UncaughtErrorEvents, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!j§ = null;
         if(!_loc4_)
         {
            super.onError(param1);
            if(!(_loc4_ && _loc3_))
            {
               addr31:
               §§push(§4#;§.singleton);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           §§goto(addr70);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
            addr70:
            if(!(_loc4_ && param1))
            {
               addr67:
               §§push(Boolean(§4#;§.singleton.popupManager));
            }
            _loc2_ = new §>"]§(§`"W§.ERROR,§+5§.DEFAULT);
            if(_loc3_ || param1)
            {
               §4#;§.singleton.popupManager.openPopup(_loc2_);
            }
            return;
         }
         §§goto(addr31);
      }
   }
}
