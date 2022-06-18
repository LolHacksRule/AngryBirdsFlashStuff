package §=0§
{
   import §+n§.§^!%§;
   import §-p§.§&2§;
   import §1G§.§`U§;
   import §3'§.§8I§;
   import §>z§.§ =§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%!$§ extends §`U§
   {
      
      public static const §?1§:String = "CreditsState";
       
      
      protected var §8!>§:§ =§ = null;
      
      private var §6g§:Boolean;
      
      private var §3q§:Number;
      
      private var §?+§:Number;
      
      private var §%,§:Number;
      
      private var §,,§:Number;
      
      private var §-O§:Number;
      
      public function §%!$§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_Credits[0]);
         this.§8!>§ = new § =§(§^?§.§]!%§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-O§ = (§4G§.getItemByName("Container_Credits") as §8I§).height + §^?§.§3[§ * §^?§.§7!$§;
         this.§,,§ = -this.§-O§;
         §^?§.§]!%§.§ U§(true);
         §^?§.resume();
         §^?§.§5S§(this.§8!>§);
         this.§8!>§.init();
         this.§`!@§();
         §4G§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §4G§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§#P§);
         §4G§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§2!?§);
         §4G§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4G§.stage.addEventListener(Event.MOUSE_LEAVE,this.§#T§);
         this.§3q§ = 0;
         this.§?+§ = 0;
         var _loc1_:String = §&2§.§!?§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §4G§.setText(_loc1_,"TextField_Version_Number");
         §4G§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §`!@§() : void
      {
         AngryBirdsFP11.§`!@§();
      }
      
      private function §5!5§(param1:MouseEvent) : Boolean
      {
         if(§4G§.stage.mouseX < §4G§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§6g§)
         {
            if(!this.§5!5§(param1))
            {
               this.§6g§ = false;
               return;
            }
            if(this.§%,§ - §4G§.stage.mouseY > 0)
            {
               this.§3q§ = this.§%,§ - §4G§.stage.mouseY;
               this.§%,§ = §4G§.stage.mouseY;
            }
            else if(this.§%,§ - §4G§.stage.mouseY < 0)
            {
               this.§3q§ = this.§%,§ - §4G§.stage.mouseY;
               this.§%,§ = §4G§.stage.mouseY;
            }
         }
      }
      
      private function §#P§(param1:MouseEvent) : void
      {
         if(this.§5!5§(param1))
         {
            if(!§^?§.isPaused)
            {
               this.§6g§ = true;
               this.§%,§ = §4G§.stage.mouseY;
            }
         }
      }
      
      private function §2!?§(param1:MouseEvent) : void
      {
         this.§6g§ = false;
      }
      
      private function §#T§(param1:Event) : void
      {
         this.§6g§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§5!5§(param1))
         {
            if(param1.delta < 0)
            {
               this.§?+§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§?+§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§^?§.isPaused)
         {
            §^?§.controller.update(param1);
            (§4G§.getItemByName("Container_Credits") as §8I§).setVisibility(true);
            this.§2r§();
            (§4G§.getItemByName("Container_Credits") as §8I§).y = Math.floor(-this.§,,§);
            this.§<u§(param1);
         }
         if(mNextState.length > 0)
         {
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      protected function §2r§() : void
      {
      }
      
      private function §<u§(param1:Number) : void
      {
         this.§,,§ += this.§3q§;
         this.§,,§ += this.§?+§;
         if(!this.§6g§ && Math.abs(this.§?+§) < param1 / 15)
         {
            this.§,,§ += param1 / 15;
         }
         if(this.§,,§ < -AngryBirdsFP11.screenHeight * §^?§.§7!$§)
         {
            this.§,,§ = this.§-O§;
         }
         else if(this.§,,§ > this.§-O§)
         {
            this.§,,§ = -AngryBirdsFP11.screenHeight * §^?§.§7!$§;
         }
         if(!this.§6g§)
         {
            this.§3q§ *= 0.9;
            this.§?+§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §4G§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §4G§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#P§);
         §4G§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§2!?§);
         §4G§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4G§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§#T§);
         (§4G§.getItemByName("Container_Credits") as §8I§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §[!$§.§?1§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
   }
}
