package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import flash.events.MouseEvent;
   
   public class §^!-§ extends Popup
   {
       
      
      public function §^!-§(param1:§0#§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(§06§.§-`§.Views.PopupView_Warning[0],param1);
            if(!_loc4_)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+j§);
               if(!_loc4_)
               {
                  addr63:
                  §"h§.pause();
                  if(_loc3_)
                  {
                     AngryBirdsFP11.§0P§.§#2§();
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      private function §+j§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            if(!_loc1_)
            {
               §"h§.resume();
               if(!(_loc1_ && _loc2_))
               {
                  addr47:
                  this.close();
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
