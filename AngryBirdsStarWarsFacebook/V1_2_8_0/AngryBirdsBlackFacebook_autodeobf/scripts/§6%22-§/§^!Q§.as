package §6"-§
{
   import §+"Y§.ShutdownPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §1!G§.§9"b§;
   import §4!-§.§3!8§;
   import §4"m§.§[!D§;
   import §5"Q§.§5"s§;
   import §8!h§.§-V§;
   import §9"U§.§,N§;
   import §9"U§.§0!2§;
   import §9"U§.§7"1§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §@C§.§[C§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^!Q§ extends AbstractPopup
   {
      
      public static const §+! §:int = 1;
      
      public static const §5!5§:int = 2;
      
      private static const §1"i§:String = "Button_Buy";
      
      private static const §&h§:int = 6;
      
      private static const §!"N§:int = 500;
      
      public static const §1!t§:int = 1;
       
      
      protected var §>"#§:int = -1;
      
      protected var §"N§:§3!8§;
      
      protected var §4!W§:§9!c§;
      
      protected var §'"f§:Vector.<§^!t§>;
      
      protected var §5!G§:§0!2§;
      
      protected var §<!H§:int;
      
      protected var §<!I§:MovieClip;
      
      protected var §1"p§:Timer;
      
      public function §^!Q§(param1:int, param2:int, param3:int = 2)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_StarCoin[0]);
         this.§"N§ = new §3!8§(§4"#§.SERVER_ROOT);
         this.§<!H§ = param3;
         this.§5!G§ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
      }
      
      public static function §>"[§(param1:int, param2:int, param3:int) : §3!§
      {
         return new ShutdownPopup(§^!S§.§'"c§,§2!s§.DEFAULT);
      }
      
      override protected function init() : void
      {
         var _loc1_:§;g§ = null;
         this.§4!W§ = §9!c§(§[#,§.getItemByName("MovieClip_Loading"));
         this.§'"f§ = new Vector.<§^!t§>();
         var _loc2_:int = 0;
         while(_loc2_ < §&h§)
         {
            _loc1_ = §;g§(§[#,§.getItemByName(§1"i§ + _loc2_));
            this.§'"f§.push(new §^!t§(_loc1_,§-1§,§7"1§(§4"#§.singleton.dataModel).§=#1§,_loc2_,-1));
            _loc2_++;
         }
         this.§"N§.§4Q§(this.§2"L§);
         §5"s§.addCallback("purchaseComplete",this.§8"5§);
         var _loc3_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc4_:MovieClip;
         (_loc4_ = §[#,§.getItemByName("Container_Content").mClip).mask = _loc3_;
         this.§<!I§ = §[#,§.getItemByName("MovieClip_Title").mClip;
         this.§<!I§.gotoAndStop(this.§<!H§);
      }
      
      override public function dispose() : void
      {
         this.§&# §();
         this.§"N§.dispose();
         §5"s§.§@"-§("purchaseComplete",this.§8"5§);
         this.§'"f§.length = 0;
         this.§5!G§ = null;
         super.dispose();
      }
      
      private function §&# §() : void
      {
         if(this.§1"p§)
         {
            this.§1"p§.reset();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§8#0§);
         }
         this.§1"p§ = null;
      }
      
      private function §8#0§(param1:TimerEvent) : void
      {
         var _loc2_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         if(_loc2_.isLoaded)
         {
            this.§4!W§.setVisibility(false);
            this.§&# §();
         }
      }
      
      private function §2"L§(param1:§[C§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:§,N§ = null;
         var _loc5_:§^!t§ = null;
         if(param1)
         {
            _loc2_ = this.§6S§(param1);
            _loc3_ = 0;
            while(_loc3_ < this.§'"f§.length)
            {
               _loc5_ = this.§'"f§[_loc3_];
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
            if((_loc4_ = §7"1§(§4"#§.singleton.dataModel).§=#1§).isLoaded)
            {
               this.§4!W§.setVisibility(false);
            }
            else
            {
               this.§&# §();
               this.§1"p§ = new Timer(§!"N§,0);
               this.§1"p§.addEventListener(TimerEvent.TIMER,this.§8#0§);
               this.§1"p§.start();
            }
         }
      }
      
      private function §6S§(param1:§[C§) : Number
      {
         var _loc3_:§9"b§ = null;
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
            _loc2_ = (_loc3_.price + §1!t§) / _loc3_.quantity;
         }
         return _loc2_;
      }
      
      private function §8"5§() : void
      {
         §=Q§.§`!A§("black_shop_purchase");
         if(this.§>"#§ != -1)
         {
            this.§'"f§[this.§>"#§].notifyPurchase();
            this.§>"#§ = -1;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:§9"b§ = null;
         if(param2.toLowerCase().indexOf("buy") == 0)
         {
            §=Q§.§`!A§("misc_menubuttonproceed_1");
            _loc4_ = parseInt(param2.substr(3));
            _loc5_ = this.§'"f§[_loc4_].prices;
            this.§>"#§ = _loc4_;
            §[!D§.§=##§(_loc5_);
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
