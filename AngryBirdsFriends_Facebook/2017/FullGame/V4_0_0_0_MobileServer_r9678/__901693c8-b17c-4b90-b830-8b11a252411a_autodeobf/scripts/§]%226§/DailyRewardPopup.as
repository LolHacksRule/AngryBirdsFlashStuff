package §]"6§
{
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §&"J§.§`]§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8#D§.§=>§;
   import §;#r§.§"g§;
   import §<#m§.AbstractPopup;
   import §[§.§]"w§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §8[§, §]"w§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §#"n§:Object;
      
      private static const §5#J§:Number = 60 * 1000;
      
      private static const §#f§:Number = 60 * §5#J§;
      
      private static const §[!F§:Number = 24 * §#f§;
       
      
      private var §3!B§:Wallet;
      
      private var §>"g§:MovieClip;
      
      private var §,$-§:Timer;
      
      private var §&m§:Vector.<§!a§>;
      
      private var §7"F§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§&m§ = new Vector.<§!a§>();
         super(param1,param2,§=>§.§%" §.Views.PopupView_DailyReward[0],ID);
         this.§7"F§ = param3;
         if(!§#"n§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
      }
      
      public static function §9#E§(param1:Object) : void
      {
         §#"n§.items = param1.items;
      }
      
      public static function §#V§(param1:Object) : void
      {
         if(§#"n§ == null)
         {
            §#"n§ = new Object();
         }
         §#"n§ = param1;
      }
      
      public static function get §%"I§() : Boolean
      {
         return §#"n§ && §#"n§.items;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§>"g§ = §1"6§.mClip;
         this.§##Y§(new Wallet(this,false,false));
         this.§3!B§.§[!R§.x -= 20;
         this.§3!B§.§[!R§.y -= 4;
         this.§>"g§.txtPowerup.text = "";
         this.§>"g§.btnContinue.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         this.§,$-§ = new Timer(300,1);
         this.§,$-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
         this.§,$-§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§!a§ = null;
         super.show(param1);
         if(!§#"n§ || !§#"n§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §#"n§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §!a§(§#"n§.prizeSchedule[_loc2_],§#"n§.dayInSchedule,_loc2_);
            this.§&m§.push(_loc3_);
            this.§>"g§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§#"n§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§>"g§.mcReward.visible = false;
      }
      
      private function §"#Z§(param1:TimerEvent) : void
      {
         this.§,$-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
         this.§,$-§.stop();
         if(!this.§3!B§ || !§#"n§ || !§#"n§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §#"n§.prizeSchedule[§#"n§.dayInSchedule - 1];
         this.§>"g§.mcReward.visible = true;
         var _loc3_:String = §6$0§.§=!s§;
         this.§>"g§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§>"g§.txtPowerup.text = _loc3_;
         §`"5§.§"#D§(§`"5§.§"" §,§6$0§.§3#j§,_loc2_.quantity);
         §`"5§.§'!;§(§`"5§.§"" §,§6$0§.§3#j§,_loc2_.quantity);
         var _loc4_:§"g§;
         (_loc4_ = new §"g§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§>"j§ = §?!=§.§2!&§;
         _loc4_.itemType = §6$0§.§3#j§;
         _loc4_.§;!1§ = §6$0§.§3#j§;
         _loc4_.itemName = §6$0§.§3#j§;
         var _loc5_:Array = [_loc4_];
         §?!=§.§3!q§().§%"X§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§>"j§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§;!1§,_loc4_.§^$9§,_loc4_.currency,_loc4_.§]$9§);
         §4"W§.§ "D§.§@!z§();
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§!a§ = null;
         super.dispose();
         for each(_loc1_ in this.§&m§)
         {
            _loc1_.dispose();
         }
         this.§&m§ = new Vector.<§!a§>();
         §#"n§ = null;
         this.§,$-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
         this.§,$-§.reset();
         this.§"#H§(this.§3!B§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§>"g§.mcContainer;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
   }
}
