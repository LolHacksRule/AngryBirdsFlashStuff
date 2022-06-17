package §!!?§
{
   import §%#v§.§0"j§;
   import §'#g§.§&^§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §5!$§.§>§;
   import §5"c§.§8K§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §;w§.§5"_§;
   import §?!N§.§%#§;
   import §?!N§.WarningPopup;
   import §?§.§<$?§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements §0"+§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §#"-§:Boolean = true;
       
      
      private var §<#E§:§<$?§;
      
      private var §9"V§:TextField;
      
      private var §>$&§:§&^§;
      
      private var §?#"§:Timer;
      
      public function NonSpenderAutoSalePopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§<#E§ = §<$?§.§?q§;
         this.§<#E§.addEventListener(§<$?§.§;"I§,this.update);
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public static function §,$4§() : Boolean
      {
         return §#"-§;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!$C§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§9"V§ = §8#Y§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §2#p§(param1:Boolean) : void
      {
         if(!§8#Y§)
         {
            return;
         }
         §8#Y§.mClip.mouseEnabled = !param1;
         §8#Y§.mClip.mouseChildren = !param1;
         §8#Y§.getItemByName("btnBuy").visible = !param1;
         §8#Y§.getItemByName("ItemsImage").visible = !param1;
         §8#Y§.getItemByName("DiscountImage").visible = !param1;
         §8#Y§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function §!$C§() : void
      {
         this.§2#p§(true);
         if(!dataModel.§,H§.§=$$§)
         {
            §#$D§.§?q§.§>!'§();
            dataModel.§,H§.addEventListener(Event.COMPLETE,this.§9"-§);
         }
         else
         {
            this.§9"-§(null);
         }
      }
      
      private function §9"-§(param1:Event = null) : void
      {
         if(!dataModel.§,H§.§=$$§ || dataModel.§,H§.§=$$§.length == 0 || !§#"-§)
         {
            §8#Y§.mClip.mouseEnabled = true;
            §8#Y§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§,!K§ = dataModel.§,H§.§=$$§[0];
         var _loc3_:§<#a§ = _loc2_.getPricePoint(0);
         this.§2#p§(false);
         var _loc4_:§"S§;
         ((_loc4_ = §8#Y§.getItemByName("btnBuy") as §"S§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         ((§8#Y§.getItemByName("DiscountImage") as §>#8§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§2#p§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§>$&§)
               {
                  this.§>$&§.removeEventListeners();
                  this.§>$&§ = null;
               }
               this.§>$&§ = new §&^§(dataModel.§,H§.§=$$§[0],dataModel.§,H§.§=$$§[0].getPricePoint(0),§&^§.§?$4§,ID);
               this.§>$&§.addEventListener(§8K§.§ ",§,this.§6$A§);
               this.§>$&§.addEventListener(§8K§.§<"&§,this.§#n§);
               this.§?#"§ = new Timer(3000,1);
               this.§?#"§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
               this.§?#"§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§<#E§)
         {
            if(!this.§<#E§.§4u§())
            {
               dispatchEvent(new §5"_§(§5"_§.CLOSE,this));
               return;
            }
            if(this.§9"V§)
            {
               _loc2_ = this.§<#E§.§]"b§();
               if(_loc2_ != this.§9"V§.text)
               {
                  this.§9"V§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<#E§)
         {
            this.§<#E§.removeEventListener(§<$?§.§;"I§,this.update);
            this.§<#E§ = null;
         }
         if(this.§?#"§)
         {
            this.§?#"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
            this.§?#"§ = null;
         }
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
      }
      
      protected function §6$A§(param1:§8K§) : void
      {
         var _loc3_:Number = NaN;
         §#"-§ = false;
         var _loc2_:§&^§ = param1.currentTarget as §&^§;
         _loc2_.removeEventListener(§8K§.§ ",§,this.§6$A§);
         _loc2_.removeEventListener(§8K§.§<"&§,this.§#n§);
         if(this.§>$&§)
         {
            §5"w§.§7&§(_loc2_.§4">§.id,this.§>$&§.pricePoint.totalQuantity);
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         §5"w§.trackPageView(this,§5"w§.§9`§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §5"w§.trackTransaction(_loc2_.orderId,ID,_loc2_.§4">§.id,_loc2_.§4">§.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§,H§.§"#E§(true);
         §#$D§.§?q§.§>!'§();
         if(this.§<#E§)
         {
            this.§<#E§.§7#g§();
         }
         dispatchEvent(new §5"_§(§5"_§.CLOSE,this));
      }
      
      protected function §#n§(param1:§8K§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§%#§.§3t§,§9#5§.TOP,param1.errorMessage,param1.§ $1§,param1.errorCode.toString(),false));
         if(this.§>$&§)
         {
            this.§>$&§.removeEventListeners();
            this.§>$&§ = null;
         }
         this.§2#p§(false);
      }
      
      private function §[#a§(param1:TimerEvent) : void
      {
         if(this.§?#"§)
         {
            this.§?#"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[#a§);
            this.§?#"§ = null;
         }
         this.§2#p§(false);
      }
   }
}
