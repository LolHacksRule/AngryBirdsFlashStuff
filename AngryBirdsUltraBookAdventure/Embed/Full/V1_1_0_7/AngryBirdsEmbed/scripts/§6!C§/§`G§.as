package §6!C§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §5!L§.§=w§;
   import flash.events.MouseEvent;
   
   public class §`G§ extends Popup
   {
       
      
      public function §`G§(param1:§4!,§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§5A§.§;L§.Views.PopupView_Warning[0],param1);
            if(_loc3_)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-6§);
               if(!_loc4_)
               {
                  §=w§.pause();
                  if(_loc3_)
                  {
                     addr52:
                     AngryBirdsFP11.§ y§.§8<§();
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      private function §-6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            if(!(_loc2_ && _loc1_))
            {
               §=w§.resume();
               if(!(_loc2_ && _loc1_))
               {
                  addr46:
                  this.close();
               }
               return;
            }
         }
         §§goto(addr46);
      }
   }
}
