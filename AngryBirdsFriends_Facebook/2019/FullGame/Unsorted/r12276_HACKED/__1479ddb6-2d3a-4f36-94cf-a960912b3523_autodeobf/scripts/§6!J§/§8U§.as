package §6!J§
{
   import § h§.NotEnoughCoinsPopup;
   import § h§.QuickPurchasePowerupPopup;
   import § h§.QuickPurchaseSlingshotPopup;
   import §+Z§.§ ![§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §4#l§.§8#E§;
   import §9!6§.§?!y§;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §>#Y§.§2$8§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §8U§ extends EventDispatcher
   {
       
      
      private var §!#^§:MovieClip;
      
      private var §=#Q§:§8#E§;
      
      private var §%m§:String;
      
      public function §8U§(param1:MovieClip, param2:§8#E§, param3:String = "")
      {
         super();
         this.§!#^§ = param1;
         this.§=#Q§ = param2;
         this.§%m§ = param3;
      }
      
      public function §,5§() : void
      {
         var _loc1_:§?!y§ = null;
         var _loc4_:§^#i§ = null;
         if(!this.§=#Q§)
         {
            dispatchEvent(new § ![§(§ ![§.§;#L§,""));
            return;
         }
         Boolean(this.§=#Q§.currencyID == "IVC" || this.§=#Q§.currencyID == §2$8§.§,"p§);
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§>#g§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§1!^§ = §<$B§.§-"N§(this.§=#Q§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§!#^§,this.§=#Q§,_loc3_);
         }
         else if(_loc4_ = §[9§.§%"%§(this.§=#Q§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§!#^§,this.§=#Q§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§>#g§(_loc1_.id);
         }
         _loc1_.addEventListener(§ ![§.§=K§,this.§>#§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §>#§(param1:§ ![§) : void
      {
         dispatchEvent(new § ![§(§ ![§.§=K§,param1.§5B§));
      }
   }
}
