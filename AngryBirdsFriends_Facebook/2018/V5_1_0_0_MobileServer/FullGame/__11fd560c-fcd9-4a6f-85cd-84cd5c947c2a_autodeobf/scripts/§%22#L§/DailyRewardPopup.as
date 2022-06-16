package §"#L§
{
   import § %§.§1Q§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §0#m§.§8#§;
   import §1!=§.AbstractPopup;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §5"7§.§+$"§;
   import §?P§.ErrorPopup;
   import §`7§.§ try§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §9#a§, §8#§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var §]$8§:Object;
      
      private static const §^"§:Number = 60 * 1000;
      
      private static const §]3§:Number = 60 * §^"§;
      
      private static const §%#f§:Number = 24 * §]3§;
       
      
      private var §&"K§:Wallet;
      
      private var §0!Q§:MovieClip;
      
      private var §1%§:Timer;
      
      private var get:Vector.<§@"j§>;
      
      private var §8"b§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.get = new Vector.<§@"j§>();
         super(param1,param2,§1Q§.§5T§.Views.PopupView_DailyReward[0],ID);
         this.§8"b§ = param3;
         if(!§]$8§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t open daily gift popup when there is no gifts."));
            return;
         }
      }
      
      public static function §!#N§(param1:Object) : void
      {
         §]$8§.items = param1.items;
      }
      
      public static function §6#E§(param1:Object) : void
      {
         if(§]$8§ == null)
         {
            §]$8§ = new Object();
         }
         §]$8§ = param1;
      }
      
      public static function get §6b§() : Boolean
      {
         return §]$8§ && §]$8§.items;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§0!Q§ = §,#2§.mClip;
         this.§[?§(new Wallet(this,false,false));
         this.§&"K§.§=#-§.x -= 20;
         this.§&"K§.§=#-§.y -= 4;
         this.§0!Q§.txtPowerup.text = "";
         this.§0!Q§.btnContinue.addEventListener(MouseEvent.CLICK,this.§="!§);
         this.§1%§ = new Timer(300,1);
         this.§1%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
         this.§1%§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§@"j§ = null;
         super.show(param1);
         if(!§]$8§ || !§]$8§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = §]$8§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §@"j§(§]$8§.prizeSchedule[_loc2_],§]$8§.dayInSchedule,_loc2_);
            this.get.push(_loc3_);
            this.§0!Q§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§]$8§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§0!Q§.mcReward.visible = false;
      }
      
      private function §^!`§(param1:TimerEvent) : void
      {
         this.§1%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
         this.§1%§.stop();
         if(!this.§&"K§ || !§]$8§ || !§]$8§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = §]$8§.prizeSchedule[§]$8§.dayInSchedule - 1];
         this.§0!Q§.mcReward.visible = true;
         var _loc3_:String = §"G§.§'!e§;
         this.§0!Q§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§0!Q§.txtPowerup.text = _loc3_;
         §`"x§.§!`§(§`"x§.§="N§,§"G§.§6!@§,_loc2_.quantity);
         §`"x§.§[!d§(§`"x§.§="N§,§"G§.§6!@§,_loc2_.quantity);
         var _loc4_:§+$"§;
         (_loc4_ = new §+$"§()).screen = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.§2>§ = § try§.§[#r§;
         _loc4_.itemType = §"G§.§6!@§;
         _loc4_.§ #5§ = §"G§.§6!@§;
         _loc4_.itemName = §"G§.§6!@§;
         var _loc5_:Array = [_loc4_];
         § try§.§!!t§().§ #D§(false,_loc4_.itemType,_loc4_.amount,_loc4_.§2>§,_loc4_.screen,_loc4_.level,_loc4_.itemName,_loc4_.§ #5§,_loc4_.§7#?§,_loc4_.currency,_loc4_.§0"q§);
         §-#+§.§6!§.§<"k§();
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§@"j§ = null;
         super.dispose();
         for each(_loc1_ in this.get)
         {
            _loc1_.dispose();
         }
         this.get = new Vector.<§@"j§>();
         §]$8§ = null;
         this.§1%§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
         this.§1%§.reset();
         this.§8!3§(this.§&"K§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§0!Q§.mcContainer;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
   }
}
