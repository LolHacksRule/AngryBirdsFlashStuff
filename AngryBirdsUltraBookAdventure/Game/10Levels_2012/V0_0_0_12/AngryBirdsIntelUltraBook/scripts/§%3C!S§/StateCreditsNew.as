package §<!S§
{
   import § D§.§]!B§;
   import §2!?§.§>X§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §6b§.Log;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIContainerRovio;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCreditsNew extends StateBase
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §8!i§:§>X§ = null;
      
      private var §1!@§:Boolean;
      
      private var §1W§:Number;
      
      private var §-j§:Number;
      
      private var §;w§:Number;
      
      private var §-!+§:Number;
      
      private var §<1§:Number;
      
      public function StateCreditsNew(initState:Boolean = false, name:String = "CreditsState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_Credits[0]);
         this.§8!i§ = new §>X§(§]!B§.§>F§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<1§ = (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).height + §]!B§.SCREEN_HEIGHT * §]!B§.§9$§;
         this.§-!+§ = -this.§<1§;
         §]!B§.§>F§.§,>§(true);
         §]!B§.resume();
         §]!B§.setController(this.§8!i§);
         this.§8!i§.init();
         AngryBirdsFP11.playThemeMusic();
         §5!M§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!§);
         §5!M§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5N§);
         §5!M§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§%!1§);
         §5!M§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!M§.stage.addEventListener(Event.MOUSE_LEAVE,this.§"X§);
         this.§1W§ = 0;
         this.§-j§ = 0;
         var verText:String = Log.§@!=§;
         var verTextServ:String = verText.slice(verText.search("Server:"),verText.length);
         verText = verText.slice(0,verText.search("Server:"));
         §5!M§.setText(verText,"TextField_Version_Number");
         §5!M§.setText(verTextServ,"TextField_Version_Number_Server");
      }
      
      private function §&%§(e:MouseEvent) : Boolean
      {
         if(§5!M§.stage.mouseX < §5!M§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §&!§(e:MouseEvent) : void
      {
         if(this.§1!@§)
         {
            if(!this.§&%§(e))
            {
               this.§1!@§ = false;
               return;
            }
            if(this.§;w§ - §5!M§.stage.mouseY > 0)
            {
               this.§1W§ = this.§;w§ - §5!M§.stage.mouseY;
               this.§;w§ = §5!M§.stage.mouseY;
            }
            else if(this.§;w§ - §5!M§.stage.mouseY < 0)
            {
               this.§1W§ = this.§;w§ - §5!M§.stage.mouseY;
               this.§;w§ = §5!M§.stage.mouseY;
            }
         }
      }
      
      private function §5N§(e:MouseEvent) : void
      {
         if(this.§&%§(e))
         {
            if(!§]!B§.isPaused)
            {
               this.§1!@§ = true;
               this.§;w§ = §5!M§.stage.mouseY;
            }
         }
      }
      
      private function §%!1§(e:MouseEvent) : void
      {
         this.§1!@§ = false;
      }
      
      private function §"X§(e:Event) : void
      {
         this.§1!@§ = false;
      }
      
      private function onMouseWheel(e:MouseEvent) : void
      {
         if(this.§&%§(e))
         {
            if(e.delta < 0)
            {
               this.§-j§ = 16;
            }
            else if(e.delta > 0)
            {
               this.§-j§ = -16;
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
         if(!§]!B§.isPaused)
         {
            §]!B§.controller.update(deltaTime);
            (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
            this.readyToShowCredits();
            (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.§-!+§);
            this.§4!&§(deltaTime);
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
      
      private function §4!&§(deltaTime:Number) : void
      {
         this.§-!+§ += this.§1W§;
         this.§-!+§ += this.§-j§;
         if(!this.§1!@§ && Math.abs(this.§-j§) < deltaTime / 15)
         {
            this.§-!+§ += deltaTime / 15;
         }
         if(this.§-!+§ < -AngryBirdsFP11.§1[§ * §]!B§.§9$§)
         {
            this.§-!+§ = this.§<1§;
         }
         else if(this.§-!+§ > this.§<1§)
         {
            this.§-!+§ = -AngryBirdsFP11.§1[§ * §]!B§.§9$§;
         }
         if(!this.§1!@§)
         {
            this.§1W§ *= 0.9;
            this.§-j§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §5!M§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!§);
         §5!M§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5N§);
         §5!M§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§%!1§);
         §5!M§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!M§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§"X§);
         (§5!M§.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
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
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
   }
}
