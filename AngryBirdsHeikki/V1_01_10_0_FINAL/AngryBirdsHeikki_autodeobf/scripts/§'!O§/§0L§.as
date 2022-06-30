package §'!O§
{
   import §"^§.§+!'§;
   import §'!N§.§2O§;
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §0L§ extends §=j§
   {
      
      public static const §@o§:String = "CreditsState";
       
      
      private var §%;§:§0!%§ = null;
      
      private var § r§:Boolean;
      
      private var §#C§:Number;
      
      private var §3N§:Number;
      
      private var §!!=§:Number;
      
      private var §[Z§:Number;
      
      private var §`!@§:Number;
      
      private var §#%§:Boolean;
      
      public function §0L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4!N§ = new §-k§(0,0,0,1);
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_Credits[0]);
         this.§%;§ = new §0!%§(§"!S§.§-!7§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#%§ = false;
         this.§`!@§ = (§]!9§.getItemByName("Container_Credits") as §2O§).height + §"!S§.§!!d§ * §"!S§.§[=§;
         this.§[Z§ = -this.§`!@§;
         sHighscoreSidebar.enableCreditsButton(false);
         §"!S§.§8m§(this.§%;§);
         this.§%;§.init();
         §,L§.§`!]§();
         §+!'§.§9!;§.isPaused = false;
         var _loc1_:§2O§ = §]!9§.container.getItemByName("Container_Credits") as §2O§;
         §]!9§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ use§);
         §]!9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4%§);
         §]!9§.addEventListener(MouseEvent.MOUSE_UP,this.§;!N§);
         §]!9§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §]!9§.stage.addEventListener(Event.MOUSE_LEAVE,this.§21§);
         this.§#C§ = 0;
         this.§3N§ = 0;
         §]!9§.setText(§4,§.§?!`§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§,L§.§[!;§ == §#!_§.§@o§)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function § use§(param1:MouseEvent) : void
      {
         if(this.§ r§)
         {
            if(this.§!!=§ - §]!9§.mouseY > 0)
            {
               this.§#C§ = this.§!!=§ - §]!9§.mouseY;
               this.§!!=§ = §]!9§.mouseY;
            }
            else if(this.§!!=§ - §]!9§.mouseY < 0)
            {
               this.§#C§ = this.§!!=§ - §]!9§.mouseY;
               this.§!!=§ = §]!9§.mouseY;
            }
         }
      }
      
      private function §4%§(param1:MouseEvent) : void
      {
         this.§ r§ = true;
         this.§!!=§ = §]!9§.mouseY;
      }
      
      private function §;!N§(param1:MouseEvent) : void
      {
         this.§ r§ = false;
      }
      
      private function §21§(param1:Event) : void
      {
         this.§ r§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§3N§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§3N§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§-Z§.§ !6§ || §"!b§.§5;§())
         {
            return §=p§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§]!9§.getItemByName("Container_Credits") as §2O§).y = Math.floor(-this.§[Z§);
         if(!§"!S§.isPaused)
         {
            §"!S§.§]O§.update(param1);
            this.§?4§(param1);
            this.§0e§();
         }
         else
         {
            §"!S§.§^e§();
         }
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      private function §0e§() : void
      {
         if(!this.§#%§)
         {
            §"!S§.§-!7§.§%2§(true);
            §"!S§.§-!7§.§3g§(true);
            this.§#%§ = true;
            §%!f§();
         }
         (§]!9§.getItemByName("Container_Credits") as §2O§).setVisibility(true);
      }
      
      private function §?4§(param1:Number) : void
      {
         this.§[Z§ += this.§#C§;
         this.§[Z§ += this.§3N§;
         if(!this.§ r§ && Math.abs(this.§3N§) < param1 / 15)
         {
            this.§[Z§ += param1 / 15;
         }
         if(this.§[Z§ < -§,L§.§!!d§ * §"!S§.§[=§)
         {
            this.§[Z§ = this.§`!@§;
         }
         else if(this.§[Z§ > this.§`!@§)
         {
            this.§[Z§ = -§,L§.§!!d§ * §"!S§.§[=§;
         }
         if(!this.§ r§)
         {
            this.§#C§ *= 0.9;
            this.§3N§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §]!9§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ use§);
         §]!9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4%§);
         §]!9§.removeEventListener(MouseEvent.MOUSE_UP,this.§;!N§);
         §]!9§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §]!9§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§21§);
         (§]!9§.getItemByName("Container_Credits") as §2O§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §,L§.§[!;§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
