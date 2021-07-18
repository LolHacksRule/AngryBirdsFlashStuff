package §5!Y§
{
   import §30§.§'"+§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §+L§ extends Popup
   {
       
      
      public function §+L§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_FreePowerups[0],param1);
         }
         while(true)
         {
            mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
            while(_loc3_)
            {
               mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§0"U§);
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      private function §0"U§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            AngryBirdsFP11.§>m§.§^X§();
         }
         loop0:
         while(true)
         {
            §%"S§.§!C§.§^!F§.§#!=§ = false;
            do
            {
               §'"+§.§'!#§("flashShowFirstTimePayerPromotion");
               continue loop0;
            }
            while(_loc3_);
            
            return;
         }
      }
      
      private function §3!M§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §'"+§.§"!6§("newPayerPromotionSent",this.§3!M§);
         }
         do
         {
            close();
         }
         while(_loc3_);
         
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §%"S§.§!C§.§^!F§.§#!=§ = false;
         }
         do
         {
            close();
         }
         while(_loc2_);
         
      }
   }
}
