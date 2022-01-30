package §-P§
{
   import §!D§.§ use§;
   import §4!S§.§!!1§;
   import §4u§.§<!L§;
   import §9!7§.§#p§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §^!P§ extends §4E§
   {
      
      public static const §#!w§:String = "CreditsState";
       
      
      protected var §@!?§:§!!1§ = null;
      
      private var §'"'§:Boolean;
      
      private var §!!8§:Number;
      
      private var §^!2§:Number;
      
      private var §+!I§:Number;
      
      private var § >§:Number;
      
      private var §4D§:Number;
      
      public function §^!P§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_Credits[0]);
         this.§@!?§ = new §!!1§(§8!0§.§?2§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4D§ = (§1!j§.getItemByName("Container_Credits") as § use§).height + §8!0§.§3g§ * §8!0§.§6S§;
         this.§ >§ = -this.§4D§;
         §8!0§.§?2§.§<;§(true);
         §8!0§.resume();
         §8!0§.§#8§(this.§@!?§);
         this.§@!?§.init();
         this.§]^§();
         §1!j§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§4R§);
         §1!j§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"5§);
         §1!j§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§6"#§);
         §1!j§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §1!j§.stage.addEventListener(Event.MOUSE_LEAVE,this.§%s§);
         this.§!!8§ = 0;
         this.§^!2§ = 0;
         var _loc1_:String = §<!L§.§'g§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §1!j§.setText(_loc1_,"TextField_Version_Number");
         §1!j§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §]^§() : void
      {
         AngryBirdsFP11.§]^§();
      }
      
      private function §7!h§(param1:MouseEvent) : Boolean
      {
         if(§1!j§.stage.mouseX < §1!j§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §4R§(param1:MouseEvent) : void
      {
         if(this.§'"'§)
         {
            if(!this.§7!h§(param1))
            {
               this.§'"'§ = false;
               return;
            }
            if(this.§+!I§ - §1!j§.stage.mouseY > 0)
            {
               this.§!!8§ = this.§+!I§ - §1!j§.stage.mouseY;
               this.§+!I§ = §1!j§.stage.mouseY;
            }
            else if(this.§+!I§ - §1!j§.stage.mouseY < 0)
            {
               this.§!!8§ = this.§+!I§ - §1!j§.stage.mouseY;
               this.§+!I§ = §1!j§.stage.mouseY;
            }
         }
      }
      
      private function §7"5§(param1:MouseEvent) : void
      {
         if(this.§7!h§(param1))
         {
            if(!§8!0§.isPaused)
            {
               this.§'"'§ = true;
               this.§+!I§ = §1!j§.stage.mouseY;
            }
         }
      }
      
      private function §6"#§(param1:MouseEvent) : void
      {
         this.§'"'§ = false;
      }
      
      private function §%s§(param1:Event) : void
      {
         this.§'"'§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§7!h§(param1))
         {
            if(param1.delta < 0)
            {
               this.§^!2§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§^!2§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§8!0§.isPaused)
         {
            §8!0§.§00§.update(param1);
            (§1!j§.getItemByName("Container_Credits") as § use§).setVisibility(true);
            this.§4y§();
            (§1!j§.getItemByName("Container_Credits") as § use§).y = Math.floor(-this.§ >§);
            this.§2!t§(param1);
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      protected function §4y§() : void
      {
      }
      
      private function §2!t§(param1:Number) : void
      {
         this.§ >§ += this.§!!8§;
         this.§ >§ += this.§^!2§;
         if(!this.§'"'§ && Math.abs(this.§^!2§) < param1 / 15)
         {
            this.§ >§ += param1 / 15;
         }
         if(this.§ >§ < -AngryBirdsFP11.§7!;§ * §8!0§.§6S§)
         {
            this.§ >§ = this.§4D§;
         }
         else if(this.§ >§ > this.§4D§)
         {
            this.§ >§ = -AngryBirdsFP11.§7!;§ * §8!0§.§6S§;
         }
         if(!this.§'"'§)
         {
            this.§!!8§ *= 0.9;
            this.§^!2§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §1!j§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§4R§);
         §1!j§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7"5§);
         §1!j§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§6"#§);
         §1!j§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §1!j§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§%s§);
         (§1!j§.getItemByName("Container_Credits") as § use§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §3" §.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
   }
}
