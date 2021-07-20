package §2!U§
{
   import §1!B§.§<m§;
   import §2y§.§^! §;
   import §48§.§>6§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<&§ extends §9![§
   {
      
      public static const §'!q§:String = "CreditsState";
       
      
      protected var §0! §:§>6§ = null;
      
      private var §;!f§:Boolean;
      
      private var §@!-§:Number;
      
      private var §'c§:Number;
      
      private var §-!U§:Number;
      
      private var §!?§:Number;
      
      private var § !s§:Number;
      
      public function §<&§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_Credits[0]);
         this.§0! § = new §>6§(§,!s§.§=!I§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!f§ = false;
         this.§ !s§ = (§'!Q§.getItemByName("Container_Credits") as §^! §).height + §,!s§.§8p§ * §,!s§.§#d§;
         this.§!?§ = -this.§ !s§;
         §,!s§.§=!I§.§!C§(true);
         §,!s§.resume();
         §,!s§.setController(this.§0! §);
         this.§0! §.init();
         this.playThemeMusic();
         §'!Q§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
         §'!Q§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!&§);
         §'!Q§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&6§);
         §'!Q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §'!Q§.stage.addEventListener(Event.MOUSE_LEAVE,this.§!!?§);
         this.§@!-§ = 0;
         this.§'c§ = 0;
         var _loc1_:String = §<m§.§[![§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.setVersionTexts(_loc1_,_loc2_);
      }
      
      protected function setVersionTexts(param1:String, param2:String) : void
      {
         §'!Q§.setText(param1,"TextField_Version_Number");
         §'!Q§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      private function §+!&§(param1:MouseEvent) : Boolean
      {
         if(§'!Q§.stage.mouseX < §'!Q§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §>![§(param1:MouseEvent) : void
      {
         if(this.§;!f§)
         {
            if(!this.§+!&§(param1))
            {
               this.§;!f§ = false;
               return;
            }
            if(this.§-!U§ - §'!Q§.stage.mouseY > 0)
            {
               this.§@!-§ = this.§-!U§ - §'!Q§.stage.mouseY;
               this.§-!U§ = §'!Q§.stage.mouseY;
            }
            else if(this.§-!U§ - §'!Q§.stage.mouseY < 0)
            {
               this.§@!-§ = this.§-!U§ - §'!Q§.stage.mouseY;
               this.§-!U§ = §'!Q§.stage.mouseY;
            }
         }
      }
      
      private function §?!&§(param1:MouseEvent) : void
      {
         if(this.§+!&§(param1))
         {
            if(!§,!s§.isPaused)
            {
               this.§;!f§ = true;
               this.§-!U§ = §'!Q§.stage.mouseY;
            }
         }
      }
      
      private function §&6§(param1:MouseEvent) : void
      {
         this.§;!f§ = false;
      }
      
      private function §!!?§(param1:Event) : void
      {
         this.§;!f§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§+!&§(param1))
         {
            if(param1.delta < 0)
            {
               this.§'c§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§'c§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§,!s§.isPaused)
         {
            §,!s§.§ Q§.update(param1);
            (§'!Q§.getItemByName("Container_Credits") as §^! §).setVisibility(true);
            this.readyToShowCredits();
            (§'!Q§.getItemByName("Container_Credits") as §^! §).y = Math.floor(-this.§!?§);
            this.§]!a§(param1);
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §]!a§(param1:Number) : void
      {
         this.§!?§ += this.§@!-§;
         this.§!?§ += this.§'c§;
         if(!this.§;!f§ && Math.abs(this.§'c§) < param1 / 15)
         {
            this.§!?§ += param1 / 15;
         }
         if(this.§!?§ < -AngryBirdsFP11.§2" § * §,!s§.§#d§)
         {
            this.§!?§ = this.§ !s§;
         }
         else if(this.§!?§ > this.§ !s§)
         {
            this.§!?§ = -AngryBirdsFP11.§2" § * §,!s§.§#d§;
         }
         if(!this.§;!f§)
         {
            this.§@!-§ *= 0.9;
            this.§'c§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>![§);
         §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!&§);
         §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&6§);
         §'!Q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §'!Q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§!!?§);
         (§'!Q§.getItemByName("Container_Credits") as §^! §).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §&i§.§'!q§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
   }
}
