package §6c§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §3!7§.§>,§;
   import §]!A§.§&A§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §use§ extends Popup
   {
      
      protected static var §'!2§:Object;
      
      private static const §!! §:Number = 60 * 1000;
      
      private static const §""!§:Number = 60 * §!! §;
      
      private static const §]l§:Number = 24 * §""!§;
      
      private static const §%!f§:Number = 2000;
       
      
      protected var §4!U§:Timer;
      
      private var §8K§:Vector.<§^!?§>;
      
      public function §use§(param1:§7!A§, param2:StatePopupManager)
      {
         this.§8K§ = new Vector.<§^!?§>();
         super(§ "A§.§4[§.Views.PopupView_DailyReward[0],param1);
         §]"5§ = §%!x§;
         if(!§'!2§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
         this.init();
      }
      
      public static function §-l§(param1:Object) : void
      {
         §'!2§ = param1;
      }
      
      public static function get §[!_§() : Boolean
      {
         return §'!2§ && §'!2§.rewardGiven == true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.preClose();
      }
      
      protected function init() : void
      {
         var _loc2_:§^!?§ = null;
         mClip.mcCount.stop();
         mClip.mcReward.stop();
         mClip.txtPowerup.text = "";
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§@!a§);
         this.§4!U§ = new Timer(§%!f§);
         this.§4!U§.addEventListener(TimerEvent.TIMER,this.§^!s§);
         this.§4!U§.start();
         var _loc1_:int = §'!2§.prizeSchedule.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = new §^!?§(§'!2§.prizeSchedule[_loc1_],§'!2§.dayInSchedule);
            this.§8K§.push(_loc2_);
            mClip.mcContainer.addChild(_loc2_);
            _loc2_.x = 110 + 500 * (_loc1_ / (§'!2§.prizeSchedule.length - 1));
            _loc2_.y = 385;
            _loc1_--;
         }
      }
      
      private function §^!s§(param1:TimerEvent) : void
      {
         this.§4!U§.reset();
         this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
         var _loc2_:String = §>,§.§'!i§(§'!2§.itemId).§]6§;
         mClip.mcCount.gotoAndStop(§'!2§.quantity);
         mClip.mcReward.gotoAndStop(_loc2_);
         var _loc3_:String = §>,§.§'!i§(§'!2§.itemId).§7!5§;
         if(§'!2§.quantity > 1)
         {
            _loc3_ = §&A§.§[!H§.replace("%1",§'!2§.quantity).replace("%2",_loc3_);
         }
         mClip.txtPowerup.text = _loc3_;
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         this.preClose();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:§^!?§ = null;
         super.preClose();
         this.§4!U§.reset();
         this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
         for each(_loc2_ in this.§8K§)
         {
            _loc2_.dispose();
         }
         this.§8K§ = new Vector.<§^!?§>();
         §'!2§ = null;
         mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§@!a§);
         mClip.btnContinue.enabled = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
