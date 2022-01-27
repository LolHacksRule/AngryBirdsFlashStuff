package §6"e§
{
   import § #,§.§!B§;
   import § 0§.§@Y§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §,!$§.§=9§;
   import §,"v§.§@§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import §^9§.§-!-§;
   import §`"8§.§-!w§;
   import §`"8§.§6`§;
   import §`"8§.§[F§;
   import §`F§.§3d§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+!§ extends AbstractPopup
   {
      
      public static const §!v§:int = 1;
      
      public static const §7!W§:int = 2;
      
      private static const §'K§:String = "Button_Buy";
      
      private static const § F§:int = 6;
      
      private static const §1z§:int = 500;
      
      public static const §>!6§:int = 1;
       
      
      protected var §%!p§:int = -1;
      
      protected var §#H§:§=9§;
      
      protected var §;!I§:§<`§;
      
      protected var §1!x§:Vector.<§@?§>;
      
      protected var §+#'§:§6`§;
      
      protected var §3"<§:int;
      
      protected var §function§:MovieClip;
      
      protected var §use§:Timer;
      
      public function §+!§(param1:int, param2:int, param3:int = 2)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_StarCoin[0]);
         this.§#H§ = new §=9§(§;"@§.SERVER_ROOT);
         this.§3"<§ = param3;
         this.§+#'§ = §-!w§(§;"@§.singleton.dataModel).§;L§;
      }
      
      override protected function init() : void
      {
         var _loc1_:§2"8§ = null;
         this.§;!I§ = §<`§(§,r§.getItemByName("MovieClip_Loading"));
         this.§1!x§ = new Vector.<§@?§>();
         var _loc2_:int = 0;
         while(_loc2_ < § F§)
         {
            _loc1_ = §2"8§(§,r§.getItemByName(§'K§ + _loc2_));
            this.§1!x§.push(new §@?§(_loc1_,§8-§,§-!w§(§;"@§.singleton.dataModel).§!#%§,_loc2_,-1));
            _loc2_++;
         }
         this.§#H§.§&#5§(this.§ "9§);
         §@Y§.addCallback("purchaseComplete",this.§>"V§);
         var _loc3_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §,r§.getItemByName("Container_Content").mClip).mask = _loc3_;
         this.§function§ = §,r§.getItemByName("MovieClip_Title").mClip;
         this.§function§.gotoAndStop(this.§3"<§);
      }
      
      override public function dispose() : void
      {
         this.§5g§();
         this.§#H§.dispose();
         §@Y§.§0"<§("purchaseComplete",this.§>"V§);
         this.§1!x§.length = 0;
         this.§+#'§ = null;
         super.dispose();
      }
      
      private function §5g§() : void
      {
         if(this.§use§)
         {
            this.§use§.reset();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§'#"§);
         }
         this.§use§ = null;
      }
      
      private function §'#"§(param1:TimerEvent) : void
      {
         var _loc2_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         if(_loc2_.isLoaded)
         {
            this.§;!I§.setVisibility(false);
            this.§5g§();
         }
      }
      
      private function § "9§(param1:§3d§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:§[F§ = null;
         var _loc5_:§@?§ = null;
         if(param1)
         {
            _loc2_ = this.§@!]§(param1);
            _loc3_ = 0;
            while(_loc3_ < this.§1!x§.length)
            {
               _loc5_ = this.§1!x§[_loc3_];
               if(_loc3_ >= param1.items.length)
               {
                  _loc5_.view.setVisibility(false);
                  _loc5_.view.setActiveStatus(false);
               }
               else
               {
                  _loc5_.singlePrice = _loc2_;
                  _loc5_.prices = param1.items[_loc3_];
               }
               _loc3_++;
            }
            if((_loc4_ = §-!w§(§;"@§.singleton.dataModel).§!#%§).isLoaded)
            {
               this.§;!I§.setVisibility(false);
            }
            else
            {
               this.§5g§();
               this.§use§ = new Timer(§1z§,0);
               this.§use§.addEventListener(TimerEvent.TIMER,this.§'#"§);
               this.§use§.start();
            }
         }
      }
      
      private function §@!]§(param1:§3d§) : Number
      {
         var _loc3_:§!B§ = null;
         var _loc2_:Number = 1;
         var _loc4_:int = 0;
         while(_loc4_ < param1.items.length)
         {
            if(_loc3_)
            {
               if(param1.items[_loc4_].quantity < _loc3_.quantity)
               {
                  _loc3_ = param1.items[_loc4_];
               }
            }
            else
            {
               _loc3_ = param1.items[_loc4_];
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc2_ = (_loc3_.price + §>!6§) / _loc3_.quantity;
         }
         return _loc2_;
      }
      
      private function §>"V§() : void
      {
         §@§.§=Y§("black_shop_purchase");
         if(this.§%!p§ != -1)
         {
            this.§1!x§[this.§%!p§].notifyPurchase();
            this.§%!p§ = -1;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§!B§ = null;
         if(param2.toLowerCase().indexOf("buy") == 0)
         {
            §@§.§=Y§("misc_menubuttonproceed_1");
            _loc4_ = parseInt(param2.substr(3));
            _loc5_ = this.§1!x§[_loc4_].prices;
            this.§%!p§ = _loc4_;
            §-!-§.§6!<§(_loc5_);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
