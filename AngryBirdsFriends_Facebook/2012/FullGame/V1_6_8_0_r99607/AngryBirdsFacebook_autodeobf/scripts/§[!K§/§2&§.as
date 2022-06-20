package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§<+§;
   import §+I§.§9!%§;
   import §-I§.§-"§;
   import §0!?§.§'!$§;
   import §1"2§.§,!]§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2&§ extends §,-§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §3!g§:§-"§ = null;
      
      private var §-!c§:Boolean;
      
      private var §2g§:Number;
      
      private var §+k§:Number;
      
      private var §7!Q§:Number;
      
      private var §<2§:Number;
      
      private var §"!>§:Number;
      
      public function §2&§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_Credits[0]);
         this.§3!g§ = new §-"§(§9!%§.§!!M§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"!>§ = (§2"-§.getItemByName("Container_Credits") as §<+§).height + §9!%§.§&"$§ * §9!%§.§,9§;
         this.§<2§ = -this.§"!>§;
         §9!%§.§!!M§.§5"!§(true);
         §9!%§.resume();
         §9!%§.setController(this.§3!g§);
         this.§3!g§.init();
         this.playThemeMusic();
         §2"-§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§"!R§);
         §2"-§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§continue§);
         §2"-§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&"'§);
         §2"-§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2"-§.stage.addEventListener(Event.MOUSE_LEAVE,this.§1A§);
         this.§2g§ = 0;
         this.§+k§ = 0;
         var _loc1_:String = §'!$§.§2V§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §2"-§.setText(_loc1_,"TextField_Version_Number");
         §2"-§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function playThemeMusic() : void
      {
         AngryBirdsFP11.playThemeMusic();
      }
      
      private function §"!z§(param1:MouseEvent) : Boolean
      {
         if(§2"-§.stage.mouseX < §2"-§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §"!R§(param1:MouseEvent) : void
      {
         if(this.§-!c§)
         {
            if(!this.§"!z§(param1))
            {
               this.§-!c§ = false;
               return;
            }
            if(this.§7!Q§ - §2"-§.stage.mouseY > 0)
            {
               this.§2g§ = this.§7!Q§ - §2"-§.stage.mouseY;
               this.§7!Q§ = §2"-§.stage.mouseY;
            }
            else if(this.§7!Q§ - §2"-§.stage.mouseY < 0)
            {
               this.§2g§ = this.§7!Q§ - §2"-§.stage.mouseY;
               this.§7!Q§ = §2"-§.stage.mouseY;
            }
         }
      }
      
      private function §continue§(param1:MouseEvent) : void
      {
         if(this.§"!z§(param1))
         {
            if(!§9!%§.isPaused)
            {
               this.§-!c§ = true;
               this.§7!Q§ = §2"-§.stage.mouseY;
            }
         }
      }
      
      private function §&"'§(param1:MouseEvent) : void
      {
         this.§-!c§ = false;
      }
      
      private function §1A§(param1:Event) : void
      {
         this.§-!c§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§"!z§(param1))
         {
            if(param1.delta < 0)
            {
               this.§+k§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§+k§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§9!%§.isPaused)
         {
            §9!%§.§&N§.update(param1);
            (§2"-§.getItemByName("Container_Credits") as §<+§).setVisibility(true);
            this.readyToShowCredits();
            (§2"-§.getItemByName("Container_Credits") as §<+§).y = Math.floor(-this.§<2§);
            this.§&]§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §&]§(param1:Number) : void
      {
         this.§<2§ += this.§2g§;
         this.§<2§ += this.§+k§;
         if(!this.§-!c§ && Math.abs(this.§+k§) < param1 / 15)
         {
            this.§<2§ += param1 / 15;
         }
         if(this.§<2§ < -AngryBirdsFP11.§+!e§ * §9!%§.§,9§)
         {
            this.§<2§ = this.§"!>§;
         }
         else if(this.§<2§ > this.§"!>§)
         {
            this.§<2§ = -AngryBirdsFP11.§+!e§ * §9!%§.§,9§;
         }
         if(!this.§-!c§)
         {
            this.§2g§ *= 0.9;
            this.§+k§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2"-§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§"!R§);
         §2"-§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§continue§);
         §2"-§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&"'§);
         §2"-§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2"-§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§1A§);
         (§2"-§.getItemByName("Container_Credits") as §<+§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §&!x§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
   }
}
