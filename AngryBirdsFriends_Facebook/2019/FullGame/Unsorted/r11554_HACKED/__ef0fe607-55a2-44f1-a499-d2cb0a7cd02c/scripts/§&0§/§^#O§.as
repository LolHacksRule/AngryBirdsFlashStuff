package §&0§
{
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!!?§.§,!K§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §5"c§.§9"2§;
   import §;$5§.§@#G§;
   import §?!N§.NotEnoughCoinsPopup;
   import §?!N§.QuickPurchasePowerupPopup;
   import §?!N§.QuickPurchaseSlingshotPopup;
   import §]"'§.§>I§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §^#O§ extends EventDispatcher
   {
       
      
      private var §6#O§:MovieClip;
      
      private var §'$$§:§,!K§;
      
      private var §7"J§:String;
      
      public function §^#O§(param1:MovieClip, param2:§,!K§, param3:String = "")
      {
         super();
         this.§6#O§ = param1;
         this.§'$$§ = param2;
         this.§7"J§ = param3;
      }
      
      public function § "i§() : void
      {
         var _loc1_:§@#G§ = null;
         var _loc4_:§6f§ = null;
         if(!this.§'$$§)
         {
            dispatchEvent(new §9"2§(§9"2§.§`"1§,""));
            return;
         }
         Boolean(this.§'$$§.currencyID == "IVC" || this.§'$$§.currencyID == §>I§.§ !C§);
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§2;§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§4"p§ = §0!w§.§7$§(this.§'$$§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§6#O§,this.§'$$§,_loc3_);
         }
         else if(_loc4_ = §7!S§.§%$<§(this.§'$$§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§6#O§,this.§'$$§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§2;§(_loc1_.id);
         }
         _loc1_.addEventListener(§9"2§.§?"t§,this.§51§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §51§(param1:§9"2§) : void
      {
         dispatchEvent(new §9"2§(§9"2§.§?"t§,param1.§`"L§));
      }
   }
}
