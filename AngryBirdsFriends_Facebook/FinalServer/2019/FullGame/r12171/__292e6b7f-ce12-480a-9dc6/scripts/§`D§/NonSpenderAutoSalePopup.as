package §`D§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §"N§.§^!r§;
   import §#"4§.§2"M§;
   import §#"4§.§<"G§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §;#>§.§7!^§;
   import §>#q§.§&!t§;
   import §?Q§.§@#D§;
   import §?Q§.WarningPopup;
   import §[#V§.§1!>§;
   import §^"3§.§`$4§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class NonSpenderAutoSalePopup extends AbstractPopup implements §2"M§
   {
      
      public static const ID:String = "PERSONALIZED_OFFER";
      
      private static var §"$B§:Boolean = true;
       
      
      private var §`#0§:§^!r§;
      
      private var §<!2§:TextField;
      
      private var §!!P§:§&!t§;
      
      private var §1"V§:Timer;
      
      public function NonSpenderAutoSalePopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_NonSpenderAutoSale[0],ID);
         this.§`#0§ = §^!r§.§+!,§;
         this.§`#0§.addEventListener(§^!r§.§>^§,this.update);
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public static function §=#A§() : Boolean
      {
         return §"$B§;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§7"'§;
      }
      
      public function §4!G§() : String
      {
         return ID;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§08§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§<!2§ = §;#'§.mClip.Textfield_TimeLeft as TextField;
      }
      
      private function §2"=§(param1:Boolean) : void
      {
         if(!§;#'§)
         {
            return;
         }
         §;#'§.mClip.mouseEnabled = !param1;
         §;#'§.mClip.mouseChildren = !param1;
         §;#'§.getItemByName("btnBuy").visible = !param1;
         §;#'§.getItemByName("ItemsImage").visible = !param1;
         §;#'§.getItemByName("DiscountImage").visible = !param1;
         §;#'§.mClip.AngryBirdLoader.visible = param1;
      }
      
      private function §08§() : void
      {
         this.§2"=§(true);
         if(!dataModel.§[h§.§2"k§)
         {
            §]#0§.§+!,§.§@!z§();
            dataModel.§[h§.addEventListener(Event.COMPLETE,this.§@$1§);
         }
         else
         {
            this.§@$1§(null);
         }
      }
      
      private function §@$1§(param1:Event = null) : void
      {
         if(!dataModel.§[h§.§2"k§ || dataModel.§[h§.§2"k§.length == 0 || !§"$B§)
         {
            §;#'§.mClip.mouseEnabled = true;
            §;#'§.mClip.mouseChildren = true;
            return;
         }
         var _loc2_:§2_§ = dataModel.§[h§.§2"k§[0];
         var _loc3_:§'"j§ = _loc2_.getPricePoint(0);
         this.§2"=§(false);
         var _loc4_:§1"r§;
         ((_loc4_ = §;#'§.getItemByName("btnBuy") as §1"r§).mClip.getChildByName("NormalPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.price,true,"",_loc2_.currencyID);
         (_loc4_.mClip.getChildByName("CampaignPrice") as TextField).text = dataModel.currencyModel.getPriceTag(_loc3_.campaignPrice,true,"",_loc2_.currencyID);
         var _loc5_:§"!A§;
         ((_loc5_ = §;#'§.getItemByName("DiscountImage") as §"!A§).mClip.getChildByName("DiscountPercentage") as TextField).text = _loc3_.campaignSalePercentage + "%";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "BUY":
               this.§2"=§(true);
               AngryBirdsBase.singleton.exitFullScreen();
               if(this.§!!P§)
               {
                  this.§!!P§.removeEventListeners();
                  this.§!!P§ = null;
               }
               this.§!!P§ = new §&!t§(dataModel.§[h§.§2"k§[0],dataModel.§[h§.§2"k§[0].getPricePoint(0),§&!t§.§&+§,ID);
               this.§!!P§.addEventListener(§1!>§.§#-§,this.§#"k§);
               this.§!!P§.addEventListener(§1!>§.§6#!§,this.§>!y§);
               this.§1"V§ = new Timer(3000,1);
               this.§1"V§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
               this.§1"V§.start();
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:String = null;
         if(this.§`#0§)
         {
            if(!this.§`#0§.§+'§())
            {
               dispatchEvent(new §7!^§(§7!^§.CLOSE,this));
               return;
            }
            if(this.§<!2§)
            {
               _loc2_ = this.§`#0§.§^#J§();
               if(_loc2_ != this.§<!2§.text)
               {
                  this.§<!2§.text = _loc2_;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§`#0§)
         {
            this.§`#0§.removeEventListener(§^!r§.§>^§,this.update);
            this.§`#0§ = null;
         }
         if(this.§1"V§)
         {
            this.§1"V§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
            this.§1"V§ = null;
         }
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
      }
      
      protected function §#"k§(param1:§1!>§) : void
      {
         var _loc3_:Number = NaN;
         §"$B§ = false;
         var _loc2_:§&!t§ = param1.currentTarget as §&!t§;
         _loc2_.removeEventListener(§1!>§.§#-§,this.§#"k§);
         _loc2_.removeEventListener(§1!>§.§6#!§,this.§>!y§);
         if(this.§!!P§)
         {
            §<"G§.§+#L§(_loc2_.§@" §.id,this.§!!P§.pricePoint.totalQuantity);
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         §<"G§.trackPageView(this,§<"G§.§4"<§);
         if(_loc2_.pricePoint)
         {
            _loc3_ = _loc2_.pricePoint.campaignPrice > 0 ? Number(_loc2_.pricePoint.campaignPrice) : Number(_loc2_.pricePoint.price);
            §<"G§.trackTransaction(_loc2_.orderId,ID,_loc2_.§@" §.id,_loc2_.§@" §.id,_loc3_ + " x",_loc3_,1,0);
         }
         _loc2_.removeEventListeners();
         dataModel.§[h§.§#"N§(true);
         §]#0§.§+!,§.§@!z§();
         if(this.§`#0§)
         {
            this.§`#0§.§@!K§();
         }
         dispatchEvent(new §7!^§(§7!^§.CLOSE,this));
      }
      
      protected function §>!y§(param1:§1!>§) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new WarningPopup(§@#D§.§,"4§,§5R§.TOP,param1.errorMessage,param1.§^$6§,param1.errorCode.toString(),false));
         if(this.§!!P§)
         {
            this.§!!P§.removeEventListeners();
            this.§!!P§ = null;
         }
         this.§2"=§(false);
      }
      
      private function §,"?§(param1:TimerEvent) : void
      {
         if(this.§1"V§)
         {
            this.§1"V§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"?§);
            this.§1"V§ = null;
         }
         this.§2"=§(false);
      }
   }
}
