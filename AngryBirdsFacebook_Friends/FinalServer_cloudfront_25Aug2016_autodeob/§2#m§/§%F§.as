package §2#m§
{
   import §"!U§.§=#V§;
   import §%$!§.§+3§;
   import §%$!§.§=]§;
   import §?"R§.NotEnoughCoinsPopup;
   import §?"R§.QuickPurchasePopup;
   import §?"R§.§[W§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^$4§.§2#I§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   
   public class §%F§ extends EventDispatcher
   {
       
      
      private var §9"a§:MovieClip;
      
      private var §""Q§:§=#V§;
      
      private var §&E§:String;
      
      public function §%F§(param1:MovieClip, param2:§=#V§, param3:String = "")
      {
         super();
         this.§9"a§ = param1;
         this.§""Q§ = param2;
         this.§&E§ = param3;
      }
      
      public function §2S§() : void
      {
         var _loc1_:§8!H§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(!this.§""Q§)
         {
            dispatchEvent(new §2#I§(§2#I§.§#!F§,""));
            return;
         }
         var _loc2_:Boolean = this.§""Q§.currencyID == "IVC" || this.§""Q§.currencyID == §=]§.§;Q§;
         if(_loc2_)
         {
            _loc3_ = this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).campaignPrice > 0 ? Number(this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).campaignPrice) : Number(this.§""Q§.getPricePoint(this.§""Q§.§-!6§() - 1).price);
            if((AngryBirdsBase.singleton.dataModel as §+3§).§<$&§.§[#u§ < _loc3_)
            {
               _loc5_ = (_loc4_ = int(_loc3_ - (AngryBirdsBase.singleton.dataModel as §+3§).§<$&§.§[#u§)) > 1 ? "coins" : "coin";
               _loc1_ = new NotEnoughCoinsPopup(this.§9"a§,"Not enough coins!","You need " + _loc4_ + " more " + _loc5_ + " to buy this. \nVisit the Coin Shop now!",§[W§.NORMAL,§<d§.TOP);
               _loc1_.addEventListener(§2#I§.§8"'§,this.§["!§);
               if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
               {
                  AngryBirdsBase.singleton.popupManager.closePopupById(_loc1_.id);
               }
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
               return;
            }
         }
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(NotEnoughCoinsPopup.ID))
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(NotEnoughCoinsPopup.ID);
         }
         _loc1_ = new QuickPurchasePopup(this.§9"a§,"Confirm Purchase!",this.§""Q§,§[W§.NORMAL,§<d§.TOP);
         if(AngryBirdsBase.singleton.popupManager.isPopupOpenById(_loc1_.id))
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(_loc1_.id);
         }
         _loc1_.addEventListener(§2#I§.§-"`§,this.§2!i§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      private function §["!§(param1:§2#I§) : void
      {
         this.§2S§();
      }
      
      private function §2!i§(param1:§2#I§) : void
      {
         dispatchEvent(new §2#I§(§2#I§.§-"`§,param1.§4$9§));
      }
   }
}
