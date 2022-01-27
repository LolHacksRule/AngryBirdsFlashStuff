package §##§
{
   import §"!J§.§'!%§;
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §-!5§.§5s§;
   import §=8§.§'^§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2!5§ extends §6!M§
   {
      
      public static const §=,§:String = "CreditsState";
       
      
      protected var §^!#§:§'!%§ = null;
      
      private var §0[§:Boolean;
      
      private var §0x§:Number;
      
      private var §>! §:Number;
      
      private var §5!H§:Number;
      
      private var §1!6§:Number;
      
      private var §]t§:Number;
      
      public function §2!5§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_Credits[0]);
         this.§^!#§ = new §'!%§(§2G§.§7!,§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§]t§ = (§ §.getItemByName("Container_Credits") as §'^§).height + §2G§.§"!§ * §2G§.§;!P§;
         this.§1!6§ = -this.§]t§;
         §2G§.§7!,§.§`!>§(true);
         §2G§.resume();
         §2G§.§4!<§(this.§^!#§);
         this.§^!#§.init();
         this.§+Q§();
         § §.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§11§);
         § §.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1V§);
         § §.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ y§);
         § §.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § §.stage.addEventListener(Event.MOUSE_LEAVE,this.§;D§);
         this.§0x§ = 0;
         this.§>! § = 0;
         var _loc1_:String = §5s§.§8W§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         § §.setText(_loc1_,"TextField_Version_Number");
         § §.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §+Q§() : void
      {
         AngryBirdsFP11.§+Q§();
      }
      
      private function §5p§(param1:MouseEvent) : Boolean
      {
         if(§ §.stage.mouseX < § §.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §11§(param1:MouseEvent) : void
      {
         if(this.§0[§)
         {
            if(!this.§5p§(param1))
            {
               this.§0[§ = false;
               return;
            }
            if(this.§5!H§ - § §.stage.mouseY > 0)
            {
               this.§0x§ = this.§5!H§ - § §.stage.mouseY;
               this.§5!H§ = § §.stage.mouseY;
            }
            else if(this.§5!H§ - § §.stage.mouseY < 0)
            {
               this.§0x§ = this.§5!H§ - § §.stage.mouseY;
               this.§5!H§ = § §.stage.mouseY;
            }
         }
      }
      
      private function §1V§(param1:MouseEvent) : void
      {
         if(this.§5p§(param1))
         {
            if(!§2G§.isPaused)
            {
               this.§0[§ = true;
               this.§5!H§ = § §.stage.mouseY;
            }
         }
      }
      
      private function § y§(param1:MouseEvent) : void
      {
         this.§0[§ = false;
      }
      
      private function §;D§(param1:Event) : void
      {
         this.§0[§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§5p§(param1))
         {
            if(param1.delta < 0)
            {
               this.§>! § = 16;
            }
            else if(param1.delta > 0)
            {
               this.§>! § = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§2G§.isPaused)
         {
            §2G§.controller.update(param1);
            (§ §.getItemByName("Container_Credits") as §'^§).setVisibility(true);
            this.readyToShowCredits();
            (§ §.getItemByName("Container_Credits") as §'^§).y = Math.floor(-this.§1!6§);
            this.§0T§(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §0T§(param1:Number) : void
      {
         this.§1!6§ += this.§0x§;
         this.§1!6§ += this.§>! §;
         if(!this.§0[§ && Math.abs(this.§>! §) < param1 / 15)
         {
            this.§1!6§ += param1 / 15;
         }
         if(this.§1!6§ < -AngryBirdsFP11.§0!M§ * §2G§.§;!P§)
         {
            this.§1!6§ = this.§]t§;
         }
         else if(this.§1!6§ > this.§]t§)
         {
            this.§1!6§ = -AngryBirdsFP11.§0!M§ * §2G§.§;!P§;
         }
         if(!this.§0[§)
         {
            this.§0x§ *= 0.9;
            this.§>! § *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         § §.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§11§);
         § §.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1V§);
         § §.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ y§);
         § §.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § §.stage.removeEventListener(Event.MOUSE_LEAVE,this.§;D§);
         (§ §.getItemByName("Container_Credits") as §'^§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §,r§.§=,§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
   }
}
