package §&$@§
{
   import §!#C§.§null§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §0!s§.§5!-§;
   import §5" §.§=n§;
   import §6t§.§^"b§;
   import §>z§.NotEnoughCoinsPopup;
   import §>z§.QuickPurchasePowerupPopup;
   import §>z§.QuickPurchaseSlingshotPopup;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §>N§ extends EventDispatcher
   {
       
      
      private var §0!^§:MovieClip;
      
      private var §3$@§:§=n§;
      
      private var §&f§:String;
      
      public function §>N§(param1:MovieClip, param2:§=n§, param3:String = "")
      {
         super();
         this.§0!^§ = param1;
         this.§3$@§ = param2;
         this.§&f§ = param3;
      }
      
      public function §;!K§() : void
      {
         var _loc1_:§5!-§ = null;
         var _loc4_:§ $<§ = null;
         if(!this.§3$@§)
         {
            dispatchEvent(new §^"b§(§^"b§.§6$3§,""));
            return;
         }
         var _loc2_:Boolean = this.§3$@§.currencyID == "IVC" || this.§3$@§.currencyID == §null§.§%l§;
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§7$9§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§<K§ = §+"d§.§,!c§(this.§3$@§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§0!^§,this.§3$@§,_loc3_);
         }
         else if(_loc4_ = §0$@§.§"P§(this.§3$@§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§0!^§,this.§3$@§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§7$9§(_loc1_.id);
         }
         _loc1_.addEventListener(§^"b§.§"&§,this.§'a§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §'a§(param1:§^"b§) : void
      {
         dispatchEvent(new §^"b§(§^"b§.§"&§,param1.§6#l§));
      }
   }
}
