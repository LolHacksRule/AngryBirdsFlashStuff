package §&r§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§["K§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §9@§.§@q§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'"L§ extends Popup implements §&!l§
   {
      
      private static var §`n§:Object;
      
      private static const §-9§:Number = 60 * 1000;
      
      private static const §1Q§:Number = 60 * §-9§;
      
      private static const §4h§:Number = 24 * §1Q§;
       
      
      private var §4!u§:§6!F§;
      
      private var §"p§:Timer;
      
      private var §9!i§:Vector.<§,"?§>;
      
      public function §'"L§(param1:§`_§, param2:StatePopupManager)
      {
         this.§9!i§ = new Vector.<§,"?§>();
         super(§ "<§.§%I§.Views.PopupView_DailyReward[0],param1);
         §""W§ = §[M§;
         if(!§`n§)
         {
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
      }
      
      public static function §'p§(param1:Object) : void
      {
         §`n§ = param1;
      }
      
      public static function get §!"§() : Boolean
      {
         return §`n§ && §`n§.rewardGiven == true;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.preClose();
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
      
      protected function init() : void
      {
         var _loc2_:§,"?§ = null;
         mClip.txtPowerup.text = "";
         mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§if §);
         var _loc1_:int = §`n§.prizeSchedule.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = new §,"?§(§`n§.prizeSchedule[_loc1_],§`n§.dayInSchedule,_loc1_);
            this.§9!i§.push(_loc2_);
            mClip.mcContainer.addChild(_loc2_);
            _loc2_.x = 110 + 500 * (_loc1_ / (§`n§.prizeSchedule.length - 1));
            _loc2_.y = 385;
            _loc1_--;
         }
         mClip.mcReward.visible = false;
         this.§"p§ = new Timer(300,1);
         this.§"p§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
         this.§"p§.start();
      }
      
      private function § !§(param1:TimerEvent) : void
      {
         this.§"p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
         this.§"p§.stop();
         var _loc2_:Object = §`n§.prizeSchedule[§`n§.dayInSchedule - 1];
         if(!mClip || !this.§4!u§ || !§`n§.items)
         {
            this.close();
            return;
         }
         mClip.mcReward.visible = true;
         this.§4!u§.§!!J§(§`n§.items.items[0].q);
         this.§4!u§.§5!q§(_loc2_.quantity);
         var _loc3_:String = §["K§.§9",§;
         mClip.mcCount.awardCount.text = "x " + _loc2_.quantity;
         mClip.txtPowerup.text = _loc3_;
         §@q§.§[!_§(§@q§.§5!J§,§["K§.§0#§,_loc2_.quantity);
         §@q§.§&?§(§@q§.§5!J§,§["K§.§0#§,_loc2_.quantity);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.preClose();
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:§,"?§ = null;
         super.preClose();
         for each(_loc2_ in this.§9!i§)
         {
            _loc2_.dispose();
         }
         this.§9!i§ = new Vector.<§,"?§>();
         §`n§ = null;
         mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnContinue.enabled = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§?!f§(new §6!F§(this,true));
         this.init();
         this.§-"U§();
         mClip.x = (mClip.stage.stageWidth - 716) / 2;
         mClip.y = (mClip.stage.stageHeight - 550) / 2;
      }
      
      private function §-"U§() : void
      {
         this.§4!u§.§!!J§(§`n§.items.itemsPrev[0].q);
      }
      
      override public function close() : void
      {
         if(§",§)
         {
            return;
         }
         if(this.§"p§)
         {
            this.§"p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
         }
         if(this.§4!u§)
         {
            this.§!U§(this.§4!u§);
         }
         super.close();
      }
   }
}
