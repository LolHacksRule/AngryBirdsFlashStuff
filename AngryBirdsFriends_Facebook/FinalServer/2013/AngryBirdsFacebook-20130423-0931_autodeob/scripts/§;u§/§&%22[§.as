package §;u§
{
   import §%i§.§0!Y§;
   import §+!c§.§;!=§;
   import §-p§.§&h§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&"[§ extends §+d§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §<!3§:§&h§ = null;
      
      private var § use§:Boolean;
      
      private var §+!X§:Number;
      
      private var §8![§:Number;
      
      private var §]!S§:Number;
      
      private var §2"G§:Number;
      
      private var §`"T§:Number;
      
      public function §&"[§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_Credits[0]);
         this.§<!3§ = new §&h§(§?l§.§'h§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ use§ = false;
         this.§`"T§ = (§2"@§.getItemByName("Container_Credits") as §0!Y§).height + §?l§.§<"P§ * §?l§.§0!S§;
         this.§2"G§ = -this.§`"T§;
         §?l§.§'h§.§#"[§(true);
         §?l§.resume();
         §?l§.setController(this.§<!3§);
         this.§<!3§.init();
         this.playThemeMusic();
         §2"@§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!`§);
         §2"@§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
         §2"@§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§"!+§);
         §2"@§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2"@§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[!&§);
         this.§+!X§ = 0;
         this.§8![§ = 0;
         var _loc1_:String = §;!=§.§5W§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.setVersionTexts(_loc1_,_loc2_);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         §2"@§.setText(param1,"TextField_Version_Number");
         §2"@§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      private function §8a§(param1:MouseEvent) : Boolean
      {
         if(§2"@§.stage.mouseX < §2"@§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §6!`§(param1:MouseEvent) : void
      {
         if(this.§ use§)
         {
            if(!this.§8a§(param1))
            {
               this.§ use§ = false;
               return;
            }
            if(this.§]!S§ - §2"@§.stage.mouseY > 0)
            {
               this.§+!X§ = this.§]!S§ - §2"@§.stage.mouseY;
               this.§]!S§ = §2"@§.stage.mouseY;
            }
            else if(this.§]!S§ - §2"@§.stage.mouseY < 0)
            {
               this.§+!X§ = this.§]!S§ - §2"@§.stage.mouseY;
               this.§]!S§ = §2"@§.stage.mouseY;
            }
         }
      }
      
      private function §%v§(param1:MouseEvent) : void
      {
         if(this.§8a§(param1))
         {
            if(!§?l§.isPaused)
            {
               this.§ use§ = true;
               this.§]!S§ = §2"@§.stage.mouseY;
            }
         }
      }
      
      private function §"!+§(param1:MouseEvent) : void
      {
         this.§ use§ = false;
      }
      
      private function §[!&§(param1:Event) : void
      {
         this.§ use§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§8a§(param1))
         {
            if(param1.delta < 0)
            {
               this.§8![§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§8![§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§?l§.isPaused)
         {
            §?l§.§5-§.update(param1);
            (§2"@§.getItemByName("Container_Credits") as §0!Y§).setVisibility(true);
            this.readyToShowCredits();
            (§2"@§.getItemByName("Container_Credits") as §0!Y§).y = Math.floor(-this.§2"G§);
            this.§-!s§(param1);
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §-!s§(param1:Number) : void
      {
         this.§2"G§ += this.§+!X§;
         this.§2"G§ += this.§8![§;
         if(!this.§ use§ && Math.abs(this.§8![§) < param1 / 15)
         {
            this.§2"G§ += param1 / 15;
         }
         if(this.§2"G§ < -AngryBirdsFP11.§?s§ * §?l§.§0!S§)
         {
            this.§2"G§ = this.§`"T§;
         }
         else if(this.§2"G§ > this.§`"T§)
         {
            this.§2"G§ = -AngryBirdsFP11.§?s§ * §?l§.§0!S§;
         }
         if(!this.§ use§)
         {
            this.§+!X§ *= 0.9;
            this.§8![§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2"@§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6!`§);
         §2"@§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%v§);
         §2"@§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§"!+§);
         §2"@§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2"@§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[!&§);
         (§2"@§.getItemByName("Container_Credits") as §0!Y§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §5!+§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
   }
}
