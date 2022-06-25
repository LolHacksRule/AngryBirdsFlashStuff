package §?N§
{
   import §,B§.Popup;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   
   public class §[Y§ extends Popup
   {
       
      
      public function §[Y§(param1:§4`§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(§ !I§.§3!a§.Views.PopupView_Warning[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-!C§);
               addr49:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               return;
               addr66:
            }
         }
         while(true)
         {
            §^!c§.pause();
            while(!_loc4_)
            {
               AngryBirdsFP11.§3l§.§&2§();
               if(_loc4_ && param1)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr66);
      }
      
      private function §-!C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            while(true)
            {
               §^!c§.resume();
               while(!_loc1_)
               {
                  this.close();
                  if(!_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
