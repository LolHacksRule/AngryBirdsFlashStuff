package §5!g§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §2!6§.§ !h§;
   import §?!z§.§6"@§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<"A§ extends Popup
   {
      
      protected static var §?"-§:Object;
      
      private static const §%!8§:Number = 60 * 1000;
      
      private static const §!!0§:Number = 60 * §%!8§;
      
      private static const §+Z§:Number = 24 * §!!0§;
      
      private static const §>"8§:Number = 2000;
       
      
      protected var §8!v§:Timer;
      
      private var §+!8§:Vector.<§,!d§>;
      
      public function §<"A§(param1:§^0§, param2:StatePopupManager)
      {
         this.§+!8§ = new Vector.<§,!d§>();
         super(§%^§.§?>§.Views.PopupView_DailyReward[0],param1);
         §]!i§ = §4!L§;
         if(!§?"-§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
         this.init();
      }
      
      public static function §<!A§(param1:Object) : void
      {
         §?"-§ = param1;
      }
      
      public static function get §]!u§() : Boolean
      {
         return §?"-§ && §?"-§.rewardGiven == true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.preClose();
      }
      
      protected function init() : void
      {
         var _loc2_:§,!d§ = null;
         mClip.mcCount.stop();
         mClip.mcReward.stop();
         mClip.txtPowerup.text = "";
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§2"%§);
         this.§8!v§ = new Timer(§>"8§);
         this.§8!v§.addEventListener(TimerEvent.TIMER,this.§=s§);
         this.§8!v§.start();
         var _loc1_:int = §?"-§.prizeSchedule.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = new §,!d§(§?"-§.prizeSchedule[_loc1_],§?"-§.dayInSchedule);
            this.§+!8§.push(_loc2_);
            mClip.mcContainer.addChild(_loc2_);
            _loc2_.x = 110 + 500 * (_loc1_ / (§?"-§.prizeSchedule.length - 1));
            _loc2_.y = 385;
            _loc1_--;
         }
      }
      
      private function §=s§(param1:TimerEvent) : void
      {
         this.§8!v§.reset();
         this.§8!v§.removeEventListener(TimerEvent.TIMER,this.§=s§);
         var _loc2_:String = § !h§.§ "8§(§?"-§.itemId).§5"5§;
         mClip.mcCount.gotoAndStop(§?"-§.quantity);
         mClip.mcReward.gotoAndStop(_loc2_);
         var _loc3_:String = § !h§.§ "8§(§?"-§.itemId).§&Z§;
         if(§?"-§.quantity > 1)
         {
            _loc3_ = §6"@§.§9!_§.replace("%1",§?"-§.quantity).replace("%2",_loc3_);
         }
         mClip.txtPowerup.text = _loc3_;
         §"!e§.§3"E§(§"!e§.§[`§,_loc2_,§?"-§.quantity);
      }
      
      private function §2"%§(param1:MouseEvent) : void
      {
         this.preClose();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:§,!d§ = null;
         super.preClose();
         this.§8!v§.reset();
         this.§8!v§.removeEventListener(TimerEvent.TIMER,this.§=s§);
         for each(_loc2_ in this.§+!8§)
         {
            _loc2_.dispose();
         }
         this.§+!8§ = new Vector.<§,!d§>();
         §?"-§ = null;
         mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§2"%§);
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
