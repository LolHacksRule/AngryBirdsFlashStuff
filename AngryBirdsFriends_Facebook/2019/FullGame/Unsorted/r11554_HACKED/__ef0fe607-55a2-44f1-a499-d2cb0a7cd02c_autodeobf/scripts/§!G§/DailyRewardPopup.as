package §!G§
{
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §+#B§.§+$A§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §-!"§.§7z§;
   import §;$5§.AbstractPopup;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §["b§, §="D§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §!"^§:Object;
      
      private static const §0d§:Number = 60 * 1000;
      
      private static const §@U§:Number = 60 * §0d§;
      
      private static const §!#r§:Number = 24 * §@U§;
       
      
      private var §?3§:Wallet;
      
      private var §%§:MovieClip;
      
      private var §!"A§:Timer;
      
      private var §=!@§:Vector.<§5"B§>;
      
      private var §@#>§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§=!@§ = new Vector.<§5"B§>();
         super(param1,param2,§0"j§.§-i§.Views.PopupView_DailyReward[0],ID);
         this.§@#>§ = param3;
         if(!§!"^§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function §"H§(param1:Object) : void
      {
         §!"^§.items = param1.items;
      }
      
      public static function §^P§(param1:Object) : void
      {
         if(§!"^§ == null)
         {
            §!"^§ = new Object();
         }
         §!"^§ = param1;
      }
      
      public static function get §5#h§() : Boolean
      {
         return §!"^§ && §!"^§.items;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§%§ = §8#Y§.mClip;
         this.§[D§(new Wallet(this,false,false));
         this.§?3§.§5#k§.x -= 20;
         this.§?3§.§5#k§.y -= 4;
         this.§%§.txtPowerup.text = "";
         this.§%§.btnContinue.addEventListener(MouseEvent.CLICK,this.§'#+§);
         this.§!"A§ = new Timer(300,1);
         this.§!"A§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
         this.§!"A§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§5"B§ = null;
         super.show(param1);
         if(!§!"^§ || !§!"^§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §!"^§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §5"B§(§!"^§.prizeSchedule[_loc2_],§!"^§.dayInSchedule,_loc2_);
            this.§=!@§.push(_loc3_);
            this.§%§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§!"^§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§%§.mcReward.visible = false;
      }
      
      private function §2!p§(param1:TimerEvent) : void
      {
         this.§!"A§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
         this.§!"A§.stop();
         if(!this.§?3§ || !§!"^§ || !§!"^§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §!"^§.prizeSchedule[§!"^§.dayInSchedule - 1];
         this.§%§.mcReward.visible = true;
         var _loc3_:String = §>I§.§#!J§;
         this.§%§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§%§.txtPowerup.text = _loc3_;
         §5"w§.§1"R§(§5"w§.§`#g§,§>I§.§ !C§,_loc2_.quantity);
         §5"w§.§%!%§(§5"w§.§`#g§,§>I§.§ !C§,_loc2_.quantity);
         var _loc4_:§7z§;
         (_loc4_ = new §7z§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§+#;§ = §+$A§.§=a§;
         _loc4_.itemType = §>I§.§ !C§;
         _loc4_.§6"d§ = §>I§.§ !C§;
         _loc4_.itemName = §>I§.§ !C§;
         [_loc4_];
         §+$A§.§@"i§().§%!+§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§+#;§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§6"d§,_loc4_.§#!z§,_loc4_.currency,_loc4_.§-!G§);
         §#$D§.§?q§.§>!'§();
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§5"B§ = null;
         super.dispose();
         for each(_loc1_ in this.§=!@§)
         {
            _loc1_.dispose();
         }
         this.§=!@§ = new Vector.<§5"B§>();
         §!"^§ = null;
         this.§!"A§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
         this.§!"A§.reset();
         this.§"[§(this.§?3§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§%§.mcContainer;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
   }
}
