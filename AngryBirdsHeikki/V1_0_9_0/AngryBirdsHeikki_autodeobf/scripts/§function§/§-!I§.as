package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §&o§.§7!C§;
   import §'!C§.§-!S§;
   import §0i§.§]_§;
   import §1Q§.§'!`§;
   import §1y§.§&!B§;
   import §44§.§#Z§;
   import §44§.§,!M§;
   import §>!F§.§9!Z§;
   import §@!]§.§'!9§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §-!I§ extends §1!@§
   {
      
      public static const §94§:String = "CreditsState";
       
      
      private var §,!J§:§7!C§ = null;
      
      private var §+>§:Boolean;
      
      private var §&B§:Number;
      
      private var §6!V§:Number;
      
      private var §!Z§:Number;
      
      private var §9S§:Number;
      
      private var §-8§:Number;
      
      private var §"!`§:Boolean;
      
      public function §-!I§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;'§ = new §-!S§(0,0,0,1);
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_Credits[0]);
         this.§,!J§ = new §7!C§(§9!Z§.§5!$§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"!`§ = false;
         this.§-8§ = (§@K§.getItemByName("Container_Credits") as §'!9§).height + §9!Z§.§5§ * §9!Z§.§+C§;
         this.§9S§ = -this.§-8§;
         sHighscoreSidebar.enableCreditsButton(false);
         §9!Z§.§5q§(this.§,!J§);
         this.§,!J§.init();
         §"H§.§4!Z§();
         §&!B§.§[q§.isPaused = false;
         var _loc1_:§'!9§ = §@K§.container.getItemByName("Container_Credits") as §'!9§;
         §@K§.addEventListener(MouseEvent.MOUSE_MOVE,this.§=B§);
         §@K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8<§);
         §@K§.addEventListener(MouseEvent.MOUSE_UP,this.§3!2§);
         §@K§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@K§.stage.addEventListener(Event.MOUSE_LEAVE,this.§7&§);
         this.§&B§ = 0;
         this.§6!V§ = 0;
         §@K§.setText(§]_§.§ !H§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§"H§.§]X§ == §'"§.§94§)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function §=B§(param1:MouseEvent) : void
      {
         if(this.§+>§)
         {
            if(this.§!Z§ - §@K§.mouseY > 0)
            {
               this.§&B§ = this.§!Z§ - §@K§.mouseY;
               this.§!Z§ = §@K§.mouseY;
            }
            else if(this.§!Z§ - §@K§.mouseY < 0)
            {
               this.§&B§ = this.§!Z§ - §@K§.mouseY;
               this.§!Z§ = §@K§.mouseY;
            }
         }
      }
      
      private function §8<§(param1:MouseEvent) : void
      {
         this.§+>§ = true;
         this.§!Z§ = §@K§.mouseY;
      }
      
      private function §3!2§(param1:MouseEvent) : void
      {
         this.§+>§ = false;
      }
      
      private function §7&§(param1:Event) : void
      {
         this.§+>§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§6!V§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§6!V§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§#Z§.§+!>§ || §,!M§.§%![§())
         {
            return §5r§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§@K§.getItemByName("Container_Credits") as §'!9§).y = Math.floor(-this.§9S§);
         if(!§9!Z§.isPaused)
         {
            §9!Z§.§[-§.update(param1);
            this.§8f§(param1);
            this.§<u§();
         }
         else
         {
            §9!Z§.§`5§();
         }
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      private function §<u§() : void
      {
         if(!this.§"!`§)
         {
            §9!Z§.§5!$§.§8t§(true);
            §9!Z§.§5!$§.§5!=§(true);
            this.§"!`§ = true;
            §&E§();
         }
         (§@K§.getItemByName("Container_Credits") as §'!9§).setVisibility(true);
      }
      
      private function §8f§(param1:Number) : void
      {
         this.§9S§ += this.§&B§;
         this.§9S§ += this.§6!V§;
         if(!this.§+>§ && Math.abs(this.§6!V§) < param1 / 15)
         {
            this.§9S§ += param1 / 15;
         }
         if(this.§9S§ < -§"H§.§5§ * §9!Z§.§+C§)
         {
            this.§9S§ = this.§-8§;
         }
         else if(this.§9S§ > this.§-8§)
         {
            this.§9S§ = -§"H§.§5§ * §9!Z§.§+C§;
         }
         if(!this.§+>§)
         {
            this.§&B§ *= 0.9;
            this.§6!V§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §@K§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§=B§);
         §@K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8<§);
         §@K§.removeEventListener(MouseEvent.MOUSE_UP,this.§3!2§);
         §@K§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@K§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§7&§);
         (§@K§.getItemByName("Container_Credits") as §'!9§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §"H§.§]X§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
