package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §3![§.§1F§;
   import §4!e§.§08§;
   import §6o§.§+!k§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9<§ extends §1-§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §[$§:§1F§ = null;
      
      private var §5f§:Boolean;
      
      private var §,!R§:Number;
      
      private var §6!w§:Number;
      
      private var §>8§:Number;
      
      private var §8O§:Number;
      
      private var §="1§:Number;
      
      public function §9<§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_Credits[0]);
         this.§[$§ = new §1F§(§#6§.§6!z§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§="1§ = (§6w§.getItemByName("Container_Credits") as §08§).height + §#6§.§+P§ * §#6§.§"e§;
         this.§8O§ = -this.§="1§;
         §#6§.§6!z§.§3H§(true);
         §#6§.resume();
         §#6§.setController(this.§[$§);
         this.§[$§.init();
         this.playThemeMusic();
         §6w§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§3[§);
         §6w§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§;8§);
         §6w§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§=!M§);
         §6w§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6w§.stage.addEventListener(Event.MOUSE_LEAVE,this.§<"'§);
         this.§,!R§ = 0;
         this.§6!w§ = 0;
         var _loc1_:String = §+!k§.§ n§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.setVersionTexts(_loc1_,_loc2_);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         §6w§.setText(param1,"TextField_Version_Number");
         §6w§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      private function §=t§(param1:MouseEvent) : Boolean
      {
         if(§6w§.stage.mouseX < §6w§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §3[§(param1:MouseEvent) : void
      {
         if(this.§5f§)
         {
            if(!this.§=t§(param1))
            {
               this.§5f§ = false;
               return;
            }
            if(this.§>8§ - §6w§.stage.mouseY > 0)
            {
               this.§,!R§ = this.§>8§ - §6w§.stage.mouseY;
               this.§>8§ = §6w§.stage.mouseY;
            }
            else if(this.§>8§ - §6w§.stage.mouseY < 0)
            {
               this.§,!R§ = this.§>8§ - §6w§.stage.mouseY;
               this.§>8§ = §6w§.stage.mouseY;
            }
         }
      }
      
      private function §;8§(param1:MouseEvent) : void
      {
         if(this.§=t§(param1))
         {
            if(!§#6§.isPaused)
            {
               this.§5f§ = true;
               this.§>8§ = §6w§.stage.mouseY;
            }
         }
      }
      
      private function §=!M§(param1:MouseEvent) : void
      {
         this.§5f§ = false;
      }
      
      private function §<"'§(param1:Event) : void
      {
         this.§5f§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§=t§(param1))
         {
            if(param1.delta < 0)
            {
               this.§6!w§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§6!w§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§#6§.isPaused)
         {
            §#6§.§'" §.update(param1);
            (§6w§.getItemByName("Container_Credits") as §08§).setVisibility(true);
            this.readyToShowCredits();
            (§6w§.getItemByName("Container_Credits") as §08§).y = Math.floor(-this.§8O§);
            this.§2!s§(param1);
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §2!s§(param1:Number) : void
      {
         this.§8O§ += this.§,!R§;
         this.§8O§ += this.§6!w§;
         if(!this.§5f§ && Math.abs(this.§6!w§) < param1 / 15)
         {
            this.§8O§ += param1 / 15;
         }
         if(this.§8O§ < -AngryBirdsFP11.§^!7§ * §#6§.§"e§)
         {
            this.§8O§ = this.§="1§;
         }
         else if(this.§8O§ > this.§="1§)
         {
            this.§8O§ = -AngryBirdsFP11.§^!7§ * §#6§.§"e§;
         }
         if(!this.§5f§)
         {
            this.§,!R§ *= 0.9;
            this.§6!w§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §6w§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§3[§);
         §6w§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;8§);
         §6w§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§=!M§);
         §6w§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6w§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§<"'§);
         (§6w§.getItemByName("Container_Credits") as §08§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §#;§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
   }
}
