package § !_§
{
   import §&"`§.§"#x§;
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §1!=§.§%#;§;
   import §2"5§.§6"^§;
   import §2G§.§"G§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §?P§.NotEnoughCoinsPopup;
   import §?P§.QuickPurchasePowerupPopup;
   import §?P§.QuickPurchaseSlingshotPopup;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §@F§ extends EventDispatcher
   {
       
      
      private var §!8§:MovieClip;
      
      private var §!!b§:§"#x§;
      
      private var §6"h§:String;
      
      public function §@F§(param1:MovieClip, param2:§"#x§, param3:String = "")
      {
         super();
         this.§!8§ = param1;
         this.§!!b§ = param2;
         this.§6"h§ = param3;
      }
      
      public function §%[§() : void
      {
         var _loc1_:§%#;§ = null;
         var _loc4_:§'#v§ = null;
         if(!this.§!!b§)
         {
            dispatchEvent(new §6"^§(§6"^§.§<!1§,""));
            return;
         }
         var _loc2_:Boolean = this.§!!b§.currencyID == "IVC" || this.§!!b§.currencyID == §"G§.§6!@§;
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.§""^§(NotEnoughCoinsPopup.ID);
         }
         var _loc3_:§##a§ = §%#k§.§62§(this.§!!b§.id);
         if(_loc3_)
         {
            _loc1_ = new QuickPurchasePowerupPopup(this.§!8§,this.§!!b§,_loc3_);
         }
         else if(_loc4_ = §4"c§.§2;§(this.§!!b§.id))
         {
            _loc1_ = new QuickPurchaseSlingshotPopup(this.§!8§,this.§!!b§,_loc4_);
         }
         if(!_loc1_)
         {
            return;
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.§""^§(_loc1_.id);
         }
         _loc1_.addEventListener(§6"^§.§3!<§,this.§8#d§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §8#d§(param1:§6"^§) : void
      {
         dispatchEvent(new §6"^§(§6"^§.§3!<§,param1.§!"-§));
      }
   }
}
