package §9c§
{
   import §"!2§.UIContainerRovio;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §9!H§.§@1§;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCreditsNew extends StateBase
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §5m§:§@1§ = null;
      
      private var §2t§:Boolean;
      
      private var §>y§:Number;
      
      private var § o§:Number;
      
      private var § !7§:Number;
      
      private var §6s§:Number;
      
      private var §2]§:Number;
      
      public function StateCreditsNew(initState:Boolean = false, name:String = "CreditsState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_Credits[0]);
         this.§5m§ = new §@1§(§4!T§.§1t§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2]§ = (§^,§.getItemByName("Container_Credits") as UIContainerRovio).height + §4!T§.SCREEN_HEIGHT * §4!T§.§=!_§;
         this.§6s§ = -this.§2]§;
         §4!T§.§1t§.§@!F§(true);
         §4!T§.resume();
         §4!T§.setController(this.§5m§);
         this.§5m§.init();
         AngryBirdsFP11.playThemeMusic();
         §^,§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§,!$§);
         §^,§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`!F§);
         §^,§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5f§);
         §^,§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^,§.stage.addEventListener(Event.MOUSE_LEAVE,this.§&!I§);
         this.§>y§ = 0;
         this.§ o§ = 0;
         var verText:String = Log.§;h§;
         var verTextServ:String = verText.slice(verText.search("Server:"),verText.length);
         verText = verText.slice(0,verText.search("Server:"));
         §^,§.setText(verText,"TextField_Version_Number");
         §^,§.setText(verTextServ,"TextField_Version_Number_Server");
      }
      
      private function §^y§(e:MouseEvent) : Boolean
      {
         if(§^,§.stage.mouseX < §^,§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §,!$§(e:MouseEvent) : void
      {
         if(this.§2t§)
         {
            if(!this.§^y§(e))
            {
               this.§2t§ = false;
               return;
            }
            if(this.§ !7§ - §^,§.stage.mouseY > 0)
            {
               this.§>y§ = this.§ !7§ - §^,§.stage.mouseY;
               this.§ !7§ = §^,§.stage.mouseY;
            }
            else if(this.§ !7§ - §^,§.stage.mouseY < 0)
            {
               this.§>y§ = this.§ !7§ - §^,§.stage.mouseY;
               this.§ !7§ = §^,§.stage.mouseY;
            }
         }
      }
      
      private function §`!F§(e:MouseEvent) : void
      {
         if(this.§^y§(e))
         {
            if(!§4!T§.isPaused)
            {
               this.§2t§ = true;
               this.§ !7§ = §^,§.stage.mouseY;
            }
         }
      }
      
      private function §5f§(e:MouseEvent) : void
      {
         this.§2t§ = false;
      }
      
      private function §&!I§(e:Event) : void
      {
         this.§2t§ = false;
      }
      
      private function onMouseWheel(e:MouseEvent) : void
      {
         if(this.§^y§(e))
         {
            if(e.delta < 0)
            {
               this.§ o§ = 16;
            }
            else if(e.delta > 0)
            {
               this.§ o§ = -16;
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(!§4!T§.isPaused)
         {
            §4!T§.controller.update(deltaTime);
            (§^,§.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
            this.readyToShowCredits();
            (§^,§.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.§6s§);
            this.§,P§(deltaTime);
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §,P§(deltaTime:Number) : void
      {
         this.§6s§ += this.§>y§;
         this.§6s§ += this.§ o§;
         if(!this.§2t§ && Math.abs(this.§ o§) < deltaTime / 15)
         {
            this.§6s§ += deltaTime / 15;
         }
         if(this.§6s§ < -AngryBirdsFP11.include * §4!T§.§=!_§)
         {
            this.§6s§ = this.§2]§;
         }
         else if(this.§6s§ > this.§2]§)
         {
            this.§6s§ = -AngryBirdsFP11.include * §4!T§.§=!_§;
         }
         if(!this.§2t§)
         {
            this.§>y§ *= 0.9;
            this.§ o§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^,§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,!$§);
         §^,§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`!F§);
         §^,§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5f§);
         §^,§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^,§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§&!I§);
         (§^,§.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = StateStart.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
   }
}
