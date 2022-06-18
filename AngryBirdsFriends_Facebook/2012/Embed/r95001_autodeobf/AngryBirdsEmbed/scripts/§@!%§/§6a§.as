package §@!%§
{
   import §!!G§.§6i§;
   import §0m§.§1!,§;
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §4-§.§'J§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §9H§.§@M§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6a§ extends §1!,§
   {
      
      public static const §5%§:String = "CreditsState";
       
      
      private var §8!1§:§6i§ = null;
      
      private var §0l§:Boolean;
      
      private var §&w§:Number;
      
      private var §?2§:Number;
      
      private var §"!D§:Number;
      
      private var §=8§:Number;
      
      private var §"!G§:Number;
      
      public function §6a§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_Credits[0]);
         this.§8!1§ = new §6i§(§#!4§.§^Y§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"!G§ = (§`k§.getItemByName("Container_Credits") as §'J§).height + §#!4§.§81§ * §#!4§.§51§;
         this.§=8§ = -this.§"!G§;
         §#!4§.§^Y§.§<[§(true);
         §#!4§.resume();
         §#!4§.§>=§(this.§8!1§);
         this.§8!1§.init();
         AngryBirdsFP11.§7!0§();
         §`k§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §`k§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§]O§);
         §`k§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§!_§);
         §`k§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`k§.stage.addEventListener(Event.MOUSE_LEAVE,this.§ #§);
         this.§&w§ = 0;
         this.§?2§ = 0;
         var _loc1_:String = §@M§.§?T§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §`k§.setText(_loc1_,"TextField_Version_Number");
         §`k§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §,W§(param1:MouseEvent) : Boolean
      {
         if(§`k§.stage.mouseX < §`k§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§0l§)
         {
            if(!this.§,W§(param1))
            {
               this.§0l§ = false;
               return;
            }
            if(this.§"!D§ - §`k§.stage.mouseY > 0)
            {
               this.§&w§ = this.§"!D§ - §`k§.stage.mouseY;
               this.§"!D§ = §`k§.stage.mouseY;
            }
            else if(this.§"!D§ - §`k§.stage.mouseY < 0)
            {
               this.§&w§ = this.§"!D§ - §`k§.stage.mouseY;
               this.§"!D§ = §`k§.stage.mouseY;
            }
         }
      }
      
      private function §]O§(param1:MouseEvent) : void
      {
         if(this.§,W§(param1))
         {
            if(!§#!4§.§"7§)
            {
               this.§0l§ = true;
               this.§"!D§ = §`k§.stage.mouseY;
            }
         }
      }
      
      private function §!_§(param1:MouseEvent) : void
      {
         this.§0l§ = false;
      }
      
      private function § #§(param1:Event) : void
      {
         this.§0l§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§,W§(param1))
         {
            if(param1.delta < 0)
            {
               this.§?2§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§?2§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§#!4§.§"7§)
         {
            §#!4§.controller.update(param1);
            (§`k§.getItemByName("Container_Credits") as §'J§).setVisibility(true);
            this.§1!<§();
            (§`k§.getItemByName("Container_Credits") as §'J§).y = Math.floor(-this.§=8§);
            this.§4t§(param1);
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §1!<§() : void
      {
      }
      
      private function §4t§(param1:Number) : void
      {
         this.§=8§ += this.§&w§;
         this.§=8§ += this.§?2§;
         if(!this.§0l§ && Math.abs(this.§?2§) < param1 / 15)
         {
            this.§=8§ += param1 / 15;
         }
         if(this.§=8§ < -AngryBirdsFP11.screenHeight * §#!4§.§51§)
         {
            this.§=8§ = this.§"!G§;
         }
         else if(this.§=8§ > this.§"!G§)
         {
            this.§=8§ = -AngryBirdsFP11.screenHeight * §#!4§.§51§;
         }
         if(!this.§0l§)
         {
            this.§&w§ *= 0.9;
            this.§?2§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §`k§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §`k§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]O§);
         §`k§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§!_§);
         §`k§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`k§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§ #§);
         (§`k§.getItemByName("Container_Credits") as §'J§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §4P§.§5%§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
   }
}
