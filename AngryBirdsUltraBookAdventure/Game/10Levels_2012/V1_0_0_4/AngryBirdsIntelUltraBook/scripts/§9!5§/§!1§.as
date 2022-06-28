package §9!5§
{
   import §"m§.§;!v§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§8;§;
   import §^_§.§!>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §!1§ extends §?Y§
   {
      
      public static const §?h§:String = "CreditsState";
       
      
      protected var §#j§:§;!v§ = null;
      
      private var §%!p§:Boolean;
      
      private var §4!5§:Number;
      
      private var §"9§:Number;
      
      private var §0Z§:Number;
      
      private var §=!F§:Number;
      
      private var §=J§:Number;
      
      public function §!1§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_Credits[0]);
         this.§#j§ = new §;!v§(§ _§.§!6§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=J§ = (§5!P§.getItemByName("Container_Credits") as §8;§).height + § _§.§-S§ * § _§.§[!Y§;
         this.§=!F§ = -this.§=J§;
         § _§.§!6§.§2!d§(true);
         § _§.resume();
         § _§.setController(this.§#j§);
         this.§#j§.init();
         AngryBirdsFP11.playThemeMusic();
         §5!P§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&b§);
         §5!P§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!C§);
         §5!P§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§+L§);
         §5!P§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!P§.stage.addEventListener(Event.MOUSE_LEAVE,this.§64§);
         this.§4!5§ = 0;
         this.§"9§ = 0;
         var _loc1_:String = §!>§.§<4§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §5!P§.setText(_loc1_,"TextField_Version_Number");
         §5!P§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §0!,§(param1:MouseEvent) : Boolean
      {
         if(§5!P§.stage.mouseX < §5!P§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §&b§(param1:MouseEvent) : void
      {
         if(this.§%!p§)
         {
            if(!this.§0!,§(param1))
            {
               this.§%!p§ = false;
               return;
            }
            if(this.§0Z§ - §5!P§.stage.mouseY > 0)
            {
               this.§4!5§ = this.§0Z§ - §5!P§.stage.mouseY;
               this.§0Z§ = §5!P§.stage.mouseY;
            }
            else if(this.§0Z§ - §5!P§.stage.mouseY < 0)
            {
               this.§4!5§ = this.§0Z§ - §5!P§.stage.mouseY;
               this.§0Z§ = §5!P§.stage.mouseY;
            }
         }
      }
      
      private function §2!C§(param1:MouseEvent) : void
      {
         if(this.§0!,§(param1))
         {
            if(!§ _§.isPaused)
            {
               this.§%!p§ = true;
               this.§0Z§ = §5!P§.stage.mouseY;
            }
         }
      }
      
      private function §+L§(param1:MouseEvent) : void
      {
         this.§%!p§ = false;
      }
      
      private function §64§(param1:Event) : void
      {
         this.§%!p§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§0!,§(param1))
         {
            if(param1.delta < 0)
            {
               this.§"9§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§"9§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§ _§.isPaused)
         {
            § _§.§?!]§.update(param1);
            (§5!P§.getItemByName("Container_Credits") as §8;§).setVisibility(true);
            this.readyToShowCredits();
            (§5!P§.getItemByName("Container_Credits") as §8;§).y = Math.floor(-this.§=!F§);
            this.§ !Z§(param1);
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function § !Z§(param1:Number) : void
      {
         this.§=!F§ += this.§4!5§;
         this.§=!F§ += this.§"9§;
         if(!this.§%!p§ && Math.abs(this.§"9§) < param1 / 15)
         {
            this.§=!F§ += param1 / 15;
         }
         if(this.§=!F§ < -AngryBirdsFP11.§@U§ * § _§.§[!Y§)
         {
            this.§=!F§ = this.§=J§;
         }
         else if(this.§=!F§ > this.§=J§)
         {
            this.§=!F§ = -AngryBirdsFP11.§@U§ * § _§.§[!Y§;
         }
         if(!this.§%!p§)
         {
            this.§4!5§ *= 0.9;
            this.§"9§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §5!P§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&b§);
         §5!P§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!C§);
         §5!P§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+L§);
         §5!P§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!P§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§64§);
         (§5!P§.getItemByName("Container_Credits") as §8;§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §!i§.§?h§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
   }
}
