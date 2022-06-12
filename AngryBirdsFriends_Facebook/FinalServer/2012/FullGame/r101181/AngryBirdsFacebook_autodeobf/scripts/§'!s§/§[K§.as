package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import flash.events.MouseEvent;
   
   public class §[K§ extends Popup
   {
       
      
      public function §[K§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(§ "A§.§4[§.Views.PopupView_FreePowerups[0],param1);
            do
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
               do
               {
                  mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§"N§);
               }
               while(!_loc4_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      private function §"N§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            AngryBirdsFP11.§@<§.§#m§();
            loop0:
            do
            {
               §3T§.§67§.§0+§.§3"F§ = false;
               while(true)
               {
                  §@!]§.§9"'§("flashShowFirstTimePayerPromotion");
                  while(_loc2_ || this)
                  {
                     §@!]§.addCallback("newPayerPromotionSent",this.§2!%§);
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc3_);
            
         }
      }
      
      private function §2!%§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §@!]§.§[">§("newPayerPromotionSent",this.§2!%§);
         }
         do
         {
            close();
         }
         while(_loc3_);
         
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §3T§.§67§.§0+§.§3"F§ = false;
         }
         do
         {
            close();
         }
         while(!(_loc2_ || param1));
         
      }
   }
}
