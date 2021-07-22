package §5" §
{
   import § §.§%e§;
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §%!-§.§?l§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §'M§.§"Z§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §6#f§.§<!M§;
   import §6t§.§4?§;
   import §>z§.§#"l§;
   import §>z§.WarningPopup;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements §,!n§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §'#?§:Boolean = true;
       
      
      private var §->§:§<!M§;
      
      private var §"$?§:TextField;
      
      private var §""2§:§%e§;
      
      private var §7!q§:Timer;
      
      public function NonSpenderAutoSalePopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§->§ = §<!M§.§`"H§;
         this.§->§.addEventListener(§<!M§.§'#Y§,this.update);
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public static function §7=§() : Boolean
      {
         return §'#?§;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§ $%§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§"$?§ = §&!M§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §""L§(param1:Boolean) : void
      {
         if(!§&!M§)
         {
            return;
         }
         §&!M§.mClip.mouseEnabled = !param1;
         §&!M§.mClip.mouseChildren = !param1;
         §&!M§.getItemByName("btnBuy").visible = !param1;
         §&!M§.getItemByName("ItemsImage").visible = !param1;
         §&!M§.getItemByName("DiscountImage").visible = !param1;
         §&!M§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function § $%§() : void
      {
         this.§""L§(true);
         if(!dataModel.§="N§.§""8§)
         {
            § $?§.§`"H§.§-!P§();
            dataModel.§="N§.addEventListener(Event.COMPLETE,this.§-A§);
         }
         else
         {
            this.§-A§(null);
         }
      }
      
      private function §-A§(param1:Event = null) : void
      {
         if(!dataModel.§="N§.§""8§ || dataModel.§="N§.§""8§.length == 0 || !§'#?§)
         {
            §&!M§.mClip.mouseEnabled = true;
            §&!M§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§=n§ = dataModel.§="N§.§""8§[0];
         var _loc3_:§5u§ = _loc2_.getPricePoint(0);
         this.§""L§(false);
         var _loc4_:§ !>§;
         ((_loc4_ = §&!M§.getItemByName("btnBuy") as § !>§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         var _loc5_:§'!`§;
         ((_loc5_ = §&!M§.getItemByName("DiscountImage") as §'!`§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§""L§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§""2§)
               {
                  this.§""2§.removeEventListeners();
                  this.§""2§ = null;
               }
               this.§""2§ = new §%e§(dataModel.§="N§.§""8§[0],dataModel.§="N§.§""8§[0].getPricePoint(0),§%e§.§1#S§,ID);
               this.§""2§.addEventListener(§4?§.§3!b§,this.§7-§);
               this.§""2§.addEventListener(§4?§.§3$2§,this.§@$C§);
               this.§7!q§ = new Timer(3000,1);
               this.§7!q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
               this.§7!q§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§->§)
         {
            if(!this.§->§.§!!>§())
            {
               dispatchEvent(new §"Z§(§"Z§.CLOSE,this));
               return;
            }
            if(this.§"$?§)
            {
               _loc2_ = this.§->§.§=#7§();
               if(_loc2_ != this.§"$?§.text)
               {
                  this.§"$?§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§->§)
         {
            this.§->§.removeEventListener(§<!M§.§'#Y§,this.update);
            this.§->§ = null;
         }
         if(this.§7!q§)
         {
            this.§7!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
            this.§7!q§ = null;
         }
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
      }
      
      protected function §7-§(param1:§4?§) : void
      {
         var _loc3_:Number = NaN;
         §'#?§ = false;
         var _loc2_:§%e§ = param1.currentTarget as §%e§;
         _loc2_.removeEventListener(§4?§.§3!b§,this.§7-§);
         _loc2_.removeEventListener(§4?§.§3$2§,this.§@$C§);
         if(this.§""2§)
         {
            §0I§.§6#?§(_loc2_.§6!-§.id,this.§""2§.pricePoint.totalQuantity);
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         §0I§.trackPageView(this,§0I§.§'#u§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §0I§.trackTransaction(_loc2_.orderId,ID,_loc2_.§6!-§.id,_loc2_.§6!-§.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§="N§.§;"4§(true);
         § $?§.§`"H§.§-!P§();
         if(this.§->§)
         {
            this.§->§.§,$;§();
         }
         dispatchEvent(new §"Z§(§"Z§.CLOSE,this));
      }
      
      protected function §@$C§(param1:§4?§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP,param1.errorMessage,param1.§5I§,param1.errorCode.toString(),false));
         if(this.§""2§)
         {
            this.§""2§.removeEventListeners();
            this.§""2§ = null;
         }
         this.§""L§(false);
      }
      
      private function §;#g§(param1:TimerEvent) : void
      {
         if(this.§7!q§)
         {
            this.§7!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;#g§);
            this.§7!q§ = null;
         }
         this.§""L§(false);
      }
   }
}
