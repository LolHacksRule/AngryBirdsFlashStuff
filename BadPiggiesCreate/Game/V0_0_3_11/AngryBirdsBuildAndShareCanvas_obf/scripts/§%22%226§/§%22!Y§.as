package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§6=§;
   import §2!O§.§,w§;
   import §62§.§5!P§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §"!Y§ extends §,w§
   {
      
      public static const §^z§:String = "CreditsState";
       
      
      protected var §7!R§:§5!P§ = null;
      
      private var §&W§:Boolean;
      
      private var §null§:Number;
      
      private var §>!_§:Number;
      
      private var §!!P§:Number;
      
      private var §!!m§:Number;
      
      private var §"!l§:Number;
      
      public function §"!Y§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_Credits[0]);
         this.§7!R§ = new §5!P§(§?z§.§=7§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"!l§ = (§%""§.getItemByName("Container_Credits") as §;!u§).height + §?z§.§%"2§ * §?z§.§%!K§;
         this.§!!m§ = -this.§"!l§;
         §?z§.§=7§.§,L§(true);
         §?z§.resume();
         §?z§.§5!R§(this.§7!R§);
         this.§7!R§.init();
         this.§5!q§();
         §%""§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§-!e§);
         §%""§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§;!z§);
         §%""§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§`Q§);
         §%""§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%""§.stage.addEventListener(Event.MOUSE_LEAVE,this.§1"2§);
         this.§null§ = 0;
         this.§>!_§ = 0;
         var _loc1_:String = § do§.§&b§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §%""§.setText(_loc1_,"TextField_Version_Number");
         §%""§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §5!q§() : void
      {
         AngryBirdsFP11.§5!q§();
      }
      
      private function §0!s§(param1:MouseEvent) : Boolean
      {
         if(§%""§.stage.mouseX < §%""§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §-!e§(param1:MouseEvent) : void
      {
         if(this.§&W§)
         {
            if(!this.§0!s§(param1))
            {
               this.§&W§ = false;
               return;
            }
            if(this.§!!P§ - §%""§.stage.mouseY > 0)
            {
               this.§null§ = this.§!!P§ - §%""§.stage.mouseY;
               this.§!!P§ = §%""§.stage.mouseY;
            }
            else if(this.§!!P§ - §%""§.stage.mouseY < 0)
            {
               this.§null§ = this.§!!P§ - §%""§.stage.mouseY;
               this.§!!P§ = §%""§.stage.mouseY;
            }
         }
      }
      
      private function §;!z§(param1:MouseEvent) : void
      {
         if(this.§0!s§(param1))
         {
            if(!§?z§.isPaused)
            {
               this.§&W§ = true;
               this.§!!P§ = §%""§.stage.mouseY;
            }
         }
      }
      
      private function §`Q§(param1:MouseEvent) : void
      {
         this.§&W§ = false;
      }
      
      private function §1"2§(param1:Event) : void
      {
         this.§&W§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§0!s§(param1))
         {
            if(param1.delta < 0)
            {
               this.§>!_§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§>!_§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§?z§.isPaused)
         {
            §?z§.§6!#§.update(param1);
            (§%""§.getItemByName("Container_Credits") as §;!u§).setVisibility(true);
            this.§%'§();
            (§%""§.getItemByName("Container_Credits") as §;!u§).y = Math.floor(-this.§!!m§);
            this.§#!x§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      protected function §%'§() : void
      {
      }
      
      private function §#!x§(param1:Number) : void
      {
         this.§!!m§ += this.§null§;
         this.§!!m§ += this.§>!_§;
         if(!this.§&W§ && Math.abs(this.§>!_§) < param1 / 15)
         {
            this.§!!m§ += param1 / 15;
         }
         if(this.§!!m§ < -AngryBirdsFP11.§!7§ * §?z§.§%!K§)
         {
            this.§!!m§ = this.§"!l§;
         }
         else if(this.§!!m§ > this.§"!l§)
         {
            this.§!!m§ = -AngryBirdsFP11.§!7§ * §?z§.§%!K§;
         }
         if(!this.§&W§)
         {
            this.§null§ *= 0.9;
            this.§>!_§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §%""§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-!e§);
         §%""§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;!z§);
         §%""§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§`Q§);
         §%""§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%""§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§1"2§);
         (§%""§.getItemByName("Container_Credits") as §;!u§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §;!U§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
   }
}
