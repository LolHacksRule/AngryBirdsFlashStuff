package §>Y§
{
   import §!6§.§3!5§;
   import §"^§.§9=§;
   import §+=§.§=!4§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6[§ extends §<!>§
   {
      
      public static const §4!C§:String = "CreditsState";
       
      
      protected var §'!O§:§=!4§ = null;
      
      private var §#!4§:Boolean;
      
      private var §%2§:Number;
      
      private var §'8§:Number;
      
      private var §9!+§:Number;
      
      private var §5!1§:Number;
      
      private var §@q§:Number;
      
      public function §6[§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_Credits[0]);
         this.§'!O§ = new §=!4§(§9=§.§<!@§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@q§ = (§3g§.getItemByName("Container_Credits") as §>v§).height + §9=§.§"#§ * §9=§.§-m§;
         this.§5!1§ = -this.§@q§;
         §9=§.§<!@§.§2k§(true);
         §9=§.resume();
         §9=§.§2R§(this.§'!O§);
         this.§'!O§.init();
         this.§if §();
         §3g§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!E§);
         §3g§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!5§);
         §3g§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§,!=§);
         §3g§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3g§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[#§);
         this.§%2§ = 0;
         this.§'8§ = 0;
         var _loc1_:String = §3!5§.§ q§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §3g§.setText(_loc1_,"TextField_Version_Number");
         §3g§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §if §() : void
      {
         AngryBirdsFP11.§if §();
      }
      
      private function §"t§(param1:MouseEvent) : Boolean
      {
         if(§3g§.stage.mouseX < §3g§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §?!E§(param1:MouseEvent) : void
      {
         if(this.§#!4§)
         {
            if(!this.§"t§(param1))
            {
               this.§#!4§ = false;
               return;
            }
            if(this.§9!+§ - §3g§.stage.mouseY > 0)
            {
               this.§%2§ = this.§9!+§ - §3g§.stage.mouseY;
               this.§9!+§ = §3g§.stage.mouseY;
            }
            else if(this.§9!+§ - §3g§.stage.mouseY < 0)
            {
               this.§%2§ = this.§9!+§ - §3g§.stage.mouseY;
               this.§9!+§ = §3g§.stage.mouseY;
            }
         }
      }
      
      private function §?!5§(param1:MouseEvent) : void
      {
         if(this.§"t§(param1))
         {
            if(!§9=§.isPaused)
            {
               this.§#!4§ = true;
               this.§9!+§ = §3g§.stage.mouseY;
            }
         }
      }
      
      private function §,!=§(param1:MouseEvent) : void
      {
         this.§#!4§ = false;
      }
      
      private function §[#§(param1:Event) : void
      {
         this.§#!4§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§"t§(param1))
         {
            if(param1.delta < 0)
            {
               this.§'8§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§'8§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§9=§.isPaused)
         {
            §9=§.controller.update(param1);
            (§3g§.getItemByName("Container_Credits") as §>v§).setVisibility(true);
            this.readyToShowCredits();
            (§3g§.getItemByName("Container_Credits") as §>v§).y = Math.floor(-this.§5!1§);
            this.§^k§(param1);
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §^k§(param1:Number) : void
      {
         this.§5!1§ += this.§%2§;
         this.§5!1§ += this.§'8§;
         if(!this.§#!4§ && Math.abs(this.§'8§) < param1 / 15)
         {
            this.§5!1§ += param1 / 15;
         }
         if(this.§5!1§ < -AngryBirdsFP11.§,§ * §9=§.§-m§)
         {
            this.§5!1§ = this.§@q§;
         }
         else if(this.§5!1§ > this.§@q§)
         {
            this.§5!1§ = -AngryBirdsFP11.§,§ * §9=§.§-m§;
         }
         if(!this.§#!4§)
         {
            this.§%2§ *= 0.9;
            this.§'8§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §3g§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!E§);
         §3g§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!5§);
         §3g§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§,!=§);
         §3g§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3g§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[#§);
         (§3g§.getItemByName("Container_Credits") as §>v§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §>8§.§4!C§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
   }
}
