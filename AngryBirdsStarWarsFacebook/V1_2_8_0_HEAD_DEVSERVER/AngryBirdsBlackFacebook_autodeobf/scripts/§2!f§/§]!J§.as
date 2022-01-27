package §2!f§
{
   import §!"e§.ShutdownPopup;
   import §!"e§.§`"W§;
   import §%!!§.§!!m§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §8b§.§=#&§;
   import §;! §.§2!P§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import §^"?§.§["i§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]!J§ extends AbstractPopup
   {
      
      public static const §8Z§:int = 1;
      
      public static const §[!v§:int = 2;
      
      private static const §<!j§:String = "Button_Buy";
      
      private static const §'§:int = 6;
      
      private static const §]m§:int = 500;
      
      public static const § "2§:int = 1;
       
      
      protected var §!#Z§:int = -1;
      
      protected var §2y§:§!!m§;
      
      protected var §'! §:§0"$§;
      
      protected var §"!X§:Vector.<§+7§>;
      
      protected var §@!E§:§=o§;
      
      protected var § #;§:int;
      
      protected var §3#+§:MovieClip;
      
      protected var §1J§:Timer;
      
      public function §]!J§(param1:int, param2:int, param3:int = 2)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_StarCoin[0]);
         this.§2y§ = new §!!m§(§4#;§.SERVER_ROOT);
         this.§ #;§ = param3;
         this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
      }
      
      public static function §9P§(param1:int, param2:int, param3:int) : §[!j§
      {
         return new ShutdownPopup(§`"W§.§+v§,§+5§.DEFAULT);
      }
      
      override protected function init() : void
      {
         var _loc1_:§^"m§ = null;
         this.§'! § = §0"$§(§^c§.getItemByName("MovieClip_Loading"));
         this.§"!X§ = new Vector.<§+7§>();
         var _loc2_:int = 0;
         while(_loc2_ < §'§)
         {
            _loc1_ = §^"m§(§^c§.getItemByName(§<!j§ + _loc2_));
            this.§"!X§.push(new §+7§(_loc1_,§^"N§,§@#B§(§4#;§.singleton.dataModel).§&"9§,_loc2_,-1));
            _loc2_++;
         }
         this.§2y§.§`h§(this.§8#C§);
         §""v§.addCallback("purchaseComplete",this.§]"O§);
         var _loc3_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §^c§.getItemByName("Container_Content").mClip).mask = _loc3_;
         this.§3#+§ = §^c§.getItemByName("MovieClip_Title").mClip;
         this.§3#+§.gotoAndStop(this.§ #;§);
      }
      
      override public function dispose() : void
      {
         this.§2!&§();
         this.§2y§.dispose();
         §""v§.§&z§("purchaseComplete",this.§]"O§);
         this.§"!X§.length = 0;
         this.§@!E§ = null;
         super.dispose();
      }
      
      private function §2!&§() : void
      {
         if(this.§1J§)
         {
            this.§1J§.reset();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
         }
         this.§1J§ = null;
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(_loc2_.isLoaded)
         {
            this.§'! §.setVisibility(false);
            this.§2!&§();
         }
      }
      
      private function §8#C§(param1:§=#&§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:§%"[§ = null;
         var _loc5_:§+7§ = null;
         if(param1)
         {
            _loc2_ = this.§9"$§(param1);
            _loc3_ = 0;
            while(_loc3_ < this.§"!X§.length)
            {
               _loc5_ = this.§"!X§[_loc3_];
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
            if((_loc4_ = §@#B§(§4#;§.singleton.dataModel).§&"9§).isLoaded)
            {
               this.§'! §.setVisibility(false);
            }
            else
            {
               this.§2!&§();
               this.§1J§ = new Timer(§]m§,0);
               this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
               this.§1J§.start();
            }
         }
      }
      
      private function §9"$§(param1:§=#&§) : Number
      {
         var _loc3_:§["i§ = null;
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
            _loc2_ = (_loc3_.price + § "2§) / _loc3_.quantity;
         }
         return _loc2_;
      }
      
      private function §]"O§() : void
      {
         §?!r§.§"#_§("black_shop_purchase");
         if(this.§!#Z§ != -1)
         {
            this.§"!X§[this.§!#Z§].notifyPurchase();
            this.§!#Z§ = -1;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§["i§ = null;
         if(param2.toLowerCase().indexOf("buy") == 0)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
            _loc4_ = parseInt(param2.substr(3));
            _loc5_ = this.§"!X§[_loc4_].prices;
            this.§!#Z§ = _loc4_;
            §2!P§.§2"G§(_loc5_);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
