package §^!o§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §+!c§.§9"H§;
   import §,l§.§#!,§;
   import §30§.§'"+§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §59§.§#l§;
   import §59§.§=!]§;
   import §59§.§="C§;
   import §9@§.§3,§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §`"%§.§`_§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.utils.Timer;
   
   public class §^"$§ extends Popup implements §&!l§, §4d§
   {
      
      public static const §1!J§:String = "Not enough coins!";
      
      public static const §2_§:String = "Bird Coin shop";
      
      protected static const §10§:int = 6;
      
      protected static const §9"X§:String = "Button_Buy";
      
      private static const §0"B§:String = "In-app Shop Coins";
      
      private static var §]!7§:Class = §`"$§;
       
      
      private var §^i§:Timer;
      
      private var §""Z§:Boolean = false;
      
      private var §,M§:String;
      
      private var §<Z§:int;
      
      private var §4"?§:Boolean = false;
      
      private var § W§:Boolean = false;
      
      private var §1<§:Boolean = false;
      
      private var § !b§:MovieClip;
      
      private var §4!u§:§6!F§;
      
      public function §^"$§(param1:§`_§, param2:StatePopupManager, param3:String = "", param4:XML = null)
      {
         if(param4 == null)
         {
            param4 = §9"H§.§5!h§(§]!7§);
         }
         super(param4,param1);
         param1.getItemByName("Container_CoinShopPopup").setVisibility(true);
         if(mClip.Container_CoinShopPopup.Button_ShopClose)
         {
            mClip.Container_CoinShopPopup.Button_ShopClose.addEventListener(MouseEvent.CLICK,this.§1'§);
         }
         if(param3 == "")
         {
            param3 = §2_§;
         }
         mClip.Container_CoinShopPopup.coinShopTitle.text = param3;
         this.§^i§ = new Timer(2000,1);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:DisplayObject = null;
         super.open(param1);
         this.§?!f§(new §6!F§(this,false));
         var _loc2_:int = 0;
         while(_loc2_ < §10§)
         {
            _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
            _loc3_.visible = false;
            _loc2_++;
         }
         if(!§%"S§.§!C§.§9"%§.§1!!§.§<$§)
         {
            §%"S§.§!C§.§9"%§.§1!!§.addEventListener(Event.COMPLETE,this.§6I§);
         }
         else
         {
            this.§6I§(null,§%"S§.§!C§.§9"%§.§1!!§.§<$§);
         }
         if(!this.§ W§)
         {
            §'"+§.addCallback("purchaseComplete",this.§@M§);
            this.§ W§ = true;
         }
         if(!this.§1<§)
         {
            §'"+§.addCallback("purchaseFailed",this.§!!%§);
            this.§1<§ = true;
         }
         §@q§.trackPageView(this);
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         this.§4!u§ = param1;
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      private function §!!%§() : void
      {
         this.§,M§ = null;
         this.§<Z§ = 0;
      }
      
      protected function §@M§(param1:String, param2:Number) : void
      {
         var _loc3_:§=!]§ = null;
         var _loc4_:Number = NaN;
         this.§4"?§ = false;
         if(this.§ !b§)
         {
            _loc3_ = new §=!]§();
            mClip.addChild(_loc3_);
            _loc3_.x = this.§ !b§.x + this.§ !b§.width / 2 + 50;
            _loc3_.y = this.§ !b§.y + this.§ !b§.height / 2;
         }
         this.§""Z§ = false;
         if(this.§,M§)
         {
            _loc4_ = this.§'#§(this.§,M§);
            §@q§.§3"-§(this.§,M§,this.§<Z§);
            §@q§.trackPageView(this,§@q§.§7!K§);
            §@q§.trackTransaction(param1,§0"B§,this.§,M§,this.§,M§,this.§<Z§ + " x",_loc4_,1,0);
            this.§,M§ = null;
            this.§<Z§ = 0;
         }
      }
      
      private function §'#§(param1:String) : Number
      {
         var _loc3_:§="C§ = null;
         var _loc4_:§#l§ = null;
         var _loc2_:int = parseInt(param1.replace("VirtualCurrency_",""));
         if(§%"S§.§!C§.§9"%§.§1!!§.§<$§)
         {
            for each(_loc3_ in §%"S§.§!C§.§9"%§.§1!!§.§<$§)
            {
               if(_loc3_.id == "VirtualCurrency")
               {
                  for each(_loc4_ in _loc3_.§9r§)
                  {
                     if(_loc4_.§ !?§ == _loc2_)
                     {
                        return _loc4_.price / 10;
                     }
                  }
               }
            }
         }
         return 0;
      }
      
      private function §6I§(param1:Event = null, param2:Vector.<§="C§> = null) : void
      {
         if(param1)
         {
            param2 = §%"S§.§!C§.§9"%§.§1!!§.§<$§;
         }
         this.injectData(param2[0]);
         §%"S§.§!C§.§9"%§.§1!!§.removeEventListener(Event.COMPLETE,this.§6I§);
      }
      
      public function injectData(param1:§="C§) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         mClip.Container_CoinShopPopup.AngryBirdLoader.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < §10§)
         {
            _loc3_ = mClip.Container_CoinShopPopup[§9"X§ + _loc2_];
            _loc4_ = param1.getPricePoint(_loc2_).§#!-§();
            _loc5_ = §3,§.§3!Y§(param1.getPricePoint(_loc2_).§ !?§);
            _loc3_.title.text = "x " + _loc5_;
            if(param1.getPricePoint(_loc2_).§4!m§ > 0)
            {
               _loc3_.offer.text = "(" + _loc4_ + " free)";
            }
            else
            {
               _loc3_.offer.text = "";
            }
            _loc3_.cost.text = §%"S§.§!C§.§9"%§.§@!K§.§=";§(param1.getPricePoint(_loc2_).price);
            _loc3_.visible = true;
            _loc3_.addEventListener(MouseEvent.CLICK,this.§8q§);
            _loc2_++;
         }
      }
      
      protected function §8q§(param1:MouseEvent) : void
      {
         var _loc2_:String = param1.currentTarget.name;
         var _loc3_:String = _loc2_.charAt(_loc2_.length - 1);
         var _loc4_:int = int(_loc3_);
         var _loc5_:String = §%"S§.§!C§.§9"%§.§1!!§.§<$§[0].id;
         this.§ !b§ = param1.currentTarget as MovieClip;
         this.buyItem(_loc5_,§%"S§.§!C§.§9"%§.§1!!§.§<$§[0].getPricePoint(_loc4_));
         §@q§.trackPageView(this,_loc5_);
      }
      
      private function §2!]§(param1:TimerEvent) : void
      {
         this.§^i§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!]§);
         this.§""Z§ = false;
      }
      
      protected function buyItem(param1:String, param2:§#l§) : void
      {
         if(ExternalInterface.available)
         {
            if(!this.§""Z§)
            {
               this.§4"?§ = true;
               this.§<Z§ = param2.§ !?§;
               this.§,M§ = param1 + "_" + param2.§ !?§;
               AngryBirdsFP11.§>m§.§^X§();
               §'"+§.§'!#§("placeOrder",this.§,M§);
               this.§""Z§ = true;
               this.§^i§.reset();
               this.§^i§.start();
               this.§^i§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2!]§);
               §@q§.§<!S§(this.§,M§,this.§<Z§);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:Object = null;
         §'"+§.§"!6§("purchaseComplete",this.§@M§);
         §'"+§.§"!6§("purchaseFailed",this.§!!%§);
         this.§ W§ = false;
         this.§1<§ = false;
         if(this.§4"?§)
         {
            this.§4"?§ = false;
            §#!,§.§&"5§.§@J§();
         }
         var _loc1_:int = 0;
         while(_loc1_ < §10§)
         {
            _loc2_ = mClip.Container_CoinShopPopup["Button_Buy" + _loc1_];
            _loc2_.removeEventListener(MouseEvent.CLICK,this.§8q§);
            _loc1_++;
         }
         §%"S§.§!C§.§9"%§.§1!!§.removeEventListener(Event.COMPLETE,this.§6I§);
         preClose();
      }
      
      override public function close() : void
      {
         this.§!U§(this.§4!u§);
         super.close();
      }
      
      private function §1'§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      public function §=,§() : String
      {
         return §@q§.§["G§;
      }
      
      public function §8"3§() : String
      {
         return §@q§.§+!+§;
      }
   }
}
