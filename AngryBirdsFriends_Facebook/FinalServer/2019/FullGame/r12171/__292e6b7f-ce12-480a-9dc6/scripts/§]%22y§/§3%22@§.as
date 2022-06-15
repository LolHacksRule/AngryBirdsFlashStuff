package §]"y§
{
   import § $0§.§,#@§;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §,#,§.§>#g§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §?Q§.NotEnoughCoinsPopup;
   import §?Q§.QuickPurchasePowerupPopup;
   import §?Q§.QuickPurchaseSlingshotPopup;
   import §[#V§.§%#O§;
   import §`D§.§2_§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §3"@§ extends EventDispatcher
   {
       
      
      private var §&!R§:MovieClip;
      
      private var §@l§:§2_§;
      
      private var §!q§:String;
      
      public function §3"@§(param1:MovieClip, param2:§2_§, param3:String = "")
      {
         super();
         this.§&!R§ = param1;
         this.§@l§ = param2;
         this.§!q§ = param3;
      }
      
      public function §`!w§() : void
      {
         var _loc1_:§,#@§ = null;
         var _loc4_:§3!B§ = null;
         if(!this.§@l§)
         {
            dispatchEvent(new §%#O§(§%#O§.§null §,""));
            return;
         }
         var _loc2_:Boolean = this.§@l§.currencyID == "IVC" || this.§@l§.currencyID == §>#g§.§=-§;
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§0"O§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§!#;§ = § "T§.§7#?§(this.§@l§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§&!R§,this.§@l§,_loc3_);
         }
         else if(_loc4_ = §[@§.§[#P§(this.§@l§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§&!R§,this.§@l§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§0"O§(_loc1_.id);
         }
         _loc1_.addEventListener(§%#O§.§!"m§,this.§<u§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §<u§(param1:§%#O§) : void
      {
         dispatchEvent(new §%#O§(§%#O§.§!"m§,param1.§^#z§));
      }
   }
}
