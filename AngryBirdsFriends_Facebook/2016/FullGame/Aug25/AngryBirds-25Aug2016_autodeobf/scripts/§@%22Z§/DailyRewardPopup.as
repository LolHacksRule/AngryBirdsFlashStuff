package §@"Z§
{
   import §#!s§.§@J§;
   import §#!s§.Wallet;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§=]§;
   import §3!B§.§9##§;
   import §4#%§.§@#@§;
   import §<!O§.§@#`§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DailyRewardPopup extends AbstractPopup implements §@J§, §@#@§
   {
      
      public static const ID:String = "DailyRewardPopup";
      
      private static var § #H§:Object;
      
      private static const §3d§:Number = 60 * 1000;
      
      private static const §1S§:Number = 60 * §3d§;
      
      private static const §7"a§:Number = 24 * §1S§;
       
      
      private var §^m§:Wallet;
      
      private var §8!J§:MovieClip;
      
      private var §4"§:Timer;
      
      private var §+!7§:Vector.<§3#9§>;
      
      private var §@#§:Boolean;
      
      public function DailyRewardPopup(param1:int, param2:int, param3:Boolean = false)
      {
         this.§+!7§ = new Vector.<§3#9§>();
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_DailyReward[0],ID);
         this.§@#§ = param3;
         if(!§ #H§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
      }
      
      public static function §"#@§(param1:Object) : void
      {
         § #H§.items = param1.items;
      }
      
      public static function §6`§(param1:Object) : void
      {
         if(§ #H§ == null)
         {
            § #H§ = new Object();
         }
         § #H§ = param1;
      }
      
      public static function get §,j§() : Boolean
      {
         return § #H§ && § #H§.items;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      public function §%#,§(param1:Wallet) : void
      {
         this.§^m§ = param1;
      }
      
      public function §]"]§(param1:Wallet) : void
      {
         param1.dispose();
         param1 = null;
      }
      
      override protected function init() : void
      {
         this.§8!J§ = §7!j§.mClip;
         this.§%#,§(new Wallet(this,false,false));
         this.§^m§.§<c§.x -= 20;
         this.§^m§.§<c§.y -= 4;
         this.§8!J§.txtPowerup.text = "";
         this.§8!J§.btnContinue.addEventListener(MouseEvent.CLICK,this.§'#p§);
         this.§4"§ = new Timer(300,1);
         this.§4"§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
         this.§4"§.start();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc3_:§3#9§ = null;
         super.show(param1);
         if(!§ #H§ || !§ #H§.prizeSchedule)
         {
            return;
         }
         var _loc2_:int = § #H§.prizeSchedule.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = new §3#9§(§ #H§.prizeSchedule[_loc2_],§ #H§.dayInSchedule,_loc2_);
            this.§+!7§.push(_loc3_);
            this.§8!J§.mcContainer.addChild(_loc3_);
            _loc3_.x = 110 + 500 * (_loc2_ / (§ #H§.prizeSchedule.length - 1));
            _loc3_.y = 385;
            _loc2_--;
         }
         this.§8!J§.mcReward.visible = false;
      }
      
      private function §-#J§(param1:TimerEvent) : void
      {
         this.§4"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
         this.§4"§.stop();
         if(!this.§^m§ || !§ #H§ || !§ #H§.items)
         {
            close();
            return;
         }
         var _loc2_:Object = § #H§.prizeSchedule[§ #H§.dayInSchedule - 1];
         this.§8!J§.mcReward.visible = true;
         var _loc3_:String = §=]§.§^!H§;
         this.§8!J§.mcCount.awardCount.text = "x " + _loc2_.quantity;
         this.§8!J§.txtPowerup.text = _loc3_;
         §,"W§.§!#k§(§,"W§.§;'§,§=]§.§;Q§,_loc2_.quantity);
         §,"W§.§'&§(§,"W§.§;'§,§=]§.§;Q§,_loc2_.quantity);
         var _loc4_:§9##§;
         (_loc4_ = new §9##§()).§;"O§ = ID;
         _loc4_.amount = _loc2_.quantity;
         _loc4_.currency = "IVC";
         _loc4_.gainType = §-#A§.§'!>§;
         _loc4_.itemType = §=]§.§;Q§;
         _loc4_.iapType = §=]§.§;Q§;
         _loc4_.itemName = §=]§.§;Q§;
         [_loc4_];
         §-#A§.§6$2§().§]!H§(false,_loc4_.itemType,_loc4_.amount,_loc4_.gainType,_loc4_.§;"O§,_loc4_.level,_loc4_.itemName,_loc4_.iapType,_loc4_.§#!v§,_loc4_.currency,_loc4_.§'$§);
         §%h§.§3!]§.§=L§();
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function dispose() : void
      {
         var _loc1_:§3#9§ = null;
         super.dispose();
         for each(_loc1_ in this.§+!7§)
         {
            _loc1_.dispose();
         }
         this.§+!7§ = new Vector.<§3#9§>();
         § #H§ = null;
         this.§4"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
         this.§4"§.reset();
         this.§]"]§(this.§^m§);
      }
      
      public function get walletContainer() : Sprite
      {
         return this.§8!J§.mcContainer;
      }
      
      public function get §`#$§() : Wallet
      {
         return this.§^m§;
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
   }
}
