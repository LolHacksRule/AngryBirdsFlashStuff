package §,!"§
{
   import §"U§.§[Q§;
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §?#§.§1!;§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,!#§ extends §'!#§
   {
      
      public static const §-A§:String = "CreditsState";
       
      
      protected var §4!I§:§1!;§ = null;
      
      private var §"q§:Boolean;
      
      private var §<>§:Number;
      
      private var §,!L§:Number;
      
      private var §'W§:Number;
      
      private var §-!!§:Number;
      
      private var §^X§:Number;
      
      public function §,!#§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_Credits[0]);
         this.§4!I§ = new §1!;§(§#! §.§`'§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^X§ = (§0q§.getItemByName("Container_Credits") as §[Q§).height + §#! §.§5!9§ * §#! §.§+!E§;
         this.§-!!§ = -this.§^X§;
         §#! §.§`'§.§^!6§(true);
         §#! §.resume();
         §#! §.§;]§(this.§4!I§);
         this.§4!I§.init();
         this.§[5§();
         §0q§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-B§);
         §0q§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!5§);
         §0q§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§+5§);
         §0q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §0q§.stage.addEventListener(Event.MOUSE_LEAVE,this.§+S§);
         this.§<>§ = 0;
         this.§,!L§ = 0;
         var _loc1_:String = § L§.§;!+§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §0q§.setText(_loc1_,"TextField_Version_Number");
         §0q§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §[5§() : void
      {
         AngryBirdsFP11.§[5§();
      }
      
      private function §!!C§(param1:MouseEvent) : Boolean
      {
         if(§0q§.stage.mouseX < §0q§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §-B§(param1:MouseEvent) : void
      {
         if(this.§"q§)
         {
            if(!this.§!!C§(param1))
            {
               this.§"q§ = false;
               return;
            }
            if(this.§'W§ - §0q§.stage.mouseY > 0)
            {
               this.§<>§ = this.§'W§ - §0q§.stage.mouseY;
               this.§'W§ = §0q§.stage.mouseY;
            }
            else if(this.§'W§ - §0q§.stage.mouseY < 0)
            {
               this.§<>§ = this.§'W§ - §0q§.stage.mouseY;
               this.§'W§ = §0q§.stage.mouseY;
            }
         }
      }
      
      private function §1!5§(param1:MouseEvent) : void
      {
         if(this.§!!C§(param1))
         {
            if(!§#! §.isPaused)
            {
               this.§"q§ = true;
               this.§'W§ = §0q§.stage.mouseY;
            }
         }
      }
      
      private function §+5§(param1:MouseEvent) : void
      {
         this.§"q§ = false;
      }
      
      private function §+S§(param1:Event) : void
      {
         this.§"q§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§!!C§(param1))
         {
            if(param1.delta < 0)
            {
               this.§,!L§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§,!L§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§#! §.isPaused)
         {
            §#! §.controller.update(param1);
            (§0q§.getItemByName("Container_Credits") as §[Q§).setVisibility(true);
            this.readyToShowCredits();
            (§0q§.getItemByName("Container_Credits") as §[Q§).y = Math.floor(-this.§-!!§);
            this.§@5§(param1);
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §@5§(param1:Number) : void
      {
         this.§-!!§ += this.§<>§;
         this.§-!!§ += this.§,!L§;
         if(!this.§"q§ && Math.abs(this.§,!L§) < param1 / 15)
         {
            this.§-!!§ += param1 / 15;
         }
         if(this.§-!!§ < -AngryBirdsFP11.§8!4§ * §#! §.§+!E§)
         {
            this.§-!!§ = this.§^X§;
         }
         else if(this.§-!!§ > this.§^X§)
         {
            this.§-!!§ = -AngryBirdsFP11.§8!4§ * §#! §.§+!E§;
         }
         if(!this.§"q§)
         {
            this.§<>§ *= 0.9;
            this.§,!L§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §0q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-B§);
         §0q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!5§);
         §0q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+5§);
         §0q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §0q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§+S§);
         (§0q§.getItemByName("Container_Credits") as §[Q§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §8j§.§-A§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
   }
}
