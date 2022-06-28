package §7t§
{
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6a§.UIContainerRovio;
   import §91§.§4!"§;
   import §<u§.Log;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §?!Y§.§`S§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCreditsNew extends StateBase
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §3!'§:§4!"§ = null;
      
      private var §6L§:Boolean;
      
      private var §6!g§:Number;
      
      private var §^A§:Number;
      
      private var §&^§:Number;
      
      private var §^q§:Number;
      
      private var §^v§:Number;
      
      public function StateCreditsNew(initState:Boolean = false, name:String = "CreditsState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_Credits[0]);
         this.§3!'§ = new §4!"§(§`S§.§[o§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^v§ = (§`=§.getItemByName("Container_Credits") as UIContainerRovio).height + §`S§.SCREEN_HEIGHT * §`S§.§4+§;
         this.§^q§ = -this.§^v§;
         §`S§.§[o§.§#!$§(true);
         §`S§.resume();
         §`S§.setController(this.§3!'§);
         this.§3!'§.init();
         AngryBirdsFP11.playThemeMusic();
         §`=§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§#h§);
         §`=§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=1§);
         §`=§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§;<§);
         §`=§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`=§.stage.addEventListener(Event.MOUSE_LEAVE,this.§0!W§);
         this.§6!g§ = 0;
         this.§^A§ = 0;
         var verText:String = Log.§@!C§;
         var verTextServ:String = verText.slice(verText.search("Server:"),verText.length);
         verText = verText.slice(0,verText.search("Server:"));
         §`=§.setText(verText,"TextField_Version_Number");
         §`=§.setText(verTextServ,"TextField_Version_Number_Server");
      }
      
      private function §2!a§(e:MouseEvent) : Boolean
      {
         if(§`=§.stage.mouseX < §`=§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §#h§(e:MouseEvent) : void
      {
         if(this.§6L§)
         {
            if(!this.§2!a§(e))
            {
               this.§6L§ = false;
               return;
            }
            if(this.§&^§ - §`=§.stage.mouseY > 0)
            {
               this.§6!g§ = this.§&^§ - §`=§.stage.mouseY;
               this.§&^§ = §`=§.stage.mouseY;
            }
            else if(this.§&^§ - §`=§.stage.mouseY < 0)
            {
               this.§6!g§ = this.§&^§ - §`=§.stage.mouseY;
               this.§&^§ = §`=§.stage.mouseY;
            }
         }
      }
      
      private function §=1§(e:MouseEvent) : void
      {
         if(this.§2!a§(e))
         {
            if(!§`S§.isPaused)
            {
               this.§6L§ = true;
               this.§&^§ = §`=§.stage.mouseY;
            }
         }
      }
      
      private function §;<§(e:MouseEvent) : void
      {
         this.§6L§ = false;
      }
      
      private function §0!W§(e:Event) : void
      {
         this.§6L§ = false;
      }
      
      private function onMouseWheel(e:MouseEvent) : void
      {
         if(this.§2!a§(e))
         {
            if(e.delta < 0)
            {
               this.§^A§ = 16;
            }
            else if(e.delta > 0)
            {
               this.§^A§ = -16;
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
         if(!§`S§.isPaused)
         {
            §`S§.controller.update(deltaTime);
            (§`=§.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
            this.readyToShowCredits();
            (§`=§.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.§^q§);
            this.§@0§(deltaTime);
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
      
      private function §@0§(deltaTime:Number) : void
      {
         this.§^q§ += this.§6!g§;
         this.§^q§ += this.§^A§;
         if(!this.§6L§ && Math.abs(this.§^A§) < deltaTime / 15)
         {
            this.§^q§ += deltaTime / 15;
         }
         if(this.§^q§ < -AngryBirdsFP11.§!3§ * §`S§.§4+§)
         {
            this.§^q§ = this.§^v§;
         }
         else if(this.§^q§ > this.§^v§)
         {
            this.§^q§ = -AngryBirdsFP11.§!3§ * §`S§.§4+§;
         }
         if(!this.§6L§)
         {
            this.§6!g§ *= 0.9;
            this.§^A§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §`=§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§#h§);
         §`=§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=1§);
         §`=§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§;<§);
         §`=§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`=§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§0!W§);
         (§`=§.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
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
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
   }
}
