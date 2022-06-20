package §&C§
{
   import §+"§.§'!0§;
   import §+"§.§8!n§;
   import §+"§.§<!A§;
   import §+I§.§`!o§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6!;§ extends Popup
   {
      
      protected static var §<!D§:Object;
      
      private static const §%",§:Number = 60 * 1000;
      
      private static const §7!#§:Number = 60 * §%",§;
      
      private static const §"i§:Number = 24 * §7!#§;
      
      private static const §'"?§:Number = 2000;
       
      
      protected var §4!g§:Timer;
      
      private var §>!V§:Vector.<§3X§>;
      
      public function §6!;§(param1:§"!j§, param2:StatePopupManager)
      {
         this.§>!V§ = new Vector.<§3X§>();
         super(§1"-§.§ !>§.Views.PopupView_DailyReward[0],param1);
         §3!l§ = §'"8§;
         if(!§<!D§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
         this.init();
      }
      
      public static function §7"%§(param1:Object) : void
      {
         §<!D§ = param1;
      }
      
      public static function get §4@§() : Boolean
      {
         return §<!D§ && §<!D§.rewardGiven == true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.preClose();
      }
      
      protected function init() : void
      {
         var _loc2_:§3X§ = null;
         mClip.mcCount.stop();
         mClip.mcReward.stop();
         mClip.txtPowerup.text = "";
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§6W§);
         this.§4!g§ = new Timer(§'"?§);
         this.§4!g§.addEventListener(TimerEvent.TIMER,this.§;>§);
         this.§4!g§.start();
         var _loc1_:int = §<!D§.prizeSchedule.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = new §3X§(§<!D§.prizeSchedule[_loc1_],§<!D§.dayInSchedule);
            this.§>!V§.push(_loc2_);
            mClip.mcContainer.addChild(_loc2_);
            _loc2_.x = 110 + 500 * (_loc1_ / (§<!D§.prizeSchedule.length - 1));
            _loc2_.y = 385;
            _loc1_--;
         }
      }
      
      private function §;>§(param1:TimerEvent) : void
      {
         this.§4!g§.reset();
         this.§4!g§.removeEventListener(TimerEvent.TIMER,this.§;>§);
         var _loc2_:int = §8!n§.§<!-§(§<!D§.itemId);
         mClip.mcCount.gotoAndStop(§<!D§.quantity);
         mClip.mcReward.gotoAndStop(2 + _loc2_);
         var _loc3_:String = §'!0§.§1!1§(§<!D§.itemId);
         if(§<!D§.itemId != §<!A§.MIGHTY_EAGLE)
         {
            _loc3_ = _loc3_;
         }
         if(§<!D§.quantity > 1)
         {
            _loc3_ = §`!o§.§"!U§.replace("%1",§<!D§.quantity).replace("%2",_loc3_);
         }
         mClip.txtPowerup.text = _loc3_;
      }
      
      private function §6W§(param1:MouseEvent) : void
      {
         this.preClose();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:§3X§ = null;
         super.preClose();
         this.§4!g§.reset();
         this.§4!g§.removeEventListener(TimerEvent.TIMER,this.§;>§);
         for each(_loc2_ in this.§>!V§)
         {
            _loc2_.dispose();
         }
         this.§>!V§ = new Vector.<§3X§>();
         §<!D§ = null;
         mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§6W§);
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
