package §,H§
{
   import §!N§.§68§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §4!W§.§@R§;
   import §7!H§.§12§;
   import §8!<§.§2W§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import §<!!§.§-"§;
   import §=!#§.§4i§;
   import §=!#§.§^!>§;
   import §@W§.§2!_§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<Z§ extends §1!a§
   {
      
      public static const §^!O§:String = "CreditsState";
       
      
      private var §0t§:§68§ = null;
      
      private var §,^§:Boolean;
      
      private var §^8§:Number;
      
      private var §!n§:Number;
      
      private var §!!3§:Number;
      
      private var §4"§:Number;
      
      private var §?>§:Number;
      
      public function §<Z§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`! § = new §@R§(75,0,0,1);
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_Credits[0]);
         this.§0t§ = new §68§(§7!K§.§=j§,"INGAME_THEME_3",true,5);
      }
      
      override public function activate() : void
      {
         super.activate();
         §7!K§.§=j§.§ i§(true);
         §7!K§.§=j§.§6z§(true);
         §7!K§.§,'§(this.§0t§);
         this.§0t§.init();
         §6T§.§"t§();
         §9J§.§!L§.isPaused = false;
         var _loc1_:§2W§ = §=!I§.container.getItemByName("Container_Credits") as §2W§;
         §=!I§.addEventListener(MouseEvent.MOUSE_MOVE,this.§1!J§);
         §=!I§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!@§);
         §=!I§.addEventListener(MouseEvent.MOUSE_UP,this.§=6§);
         §=!I§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §=!I§.stage.addEventListener(Event.MOUSE_LEAVE,this.§<![§);
         this.§4"§ = 0;
         this.§^8§ = 0;
         this.§!n§ = 0;
         this.§?>§ = _loc1_.height + §7!K§.§+!U§ * §7!K§.§7Y§;
         this.§4"§ = -this.§?>§;
         §=!I§.setText(§-"§.§3h§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §+D§.changeState(§+D§.currentState);
         if(§6T§.§-5§ == §4!L§.§^!O§)
         {
            §+D§.enableLogOutButton(false);
         }
         else
         {
            §+D§.enableLogOutButton(true);
         }
         §+D§.enableCreditsButton(false);
      }
      
      private function §1!J§(param1:MouseEvent) : void
      {
         if(this.§,^§)
         {
            if(this.§!!3§ - §=!I§.mouseY > 0)
            {
               this.§^8§ = this.§!!3§ - §=!I§.mouseY;
               this.§!!3§ = §=!I§.mouseY;
            }
            else if(this.§!!3§ - §=!I§.mouseY < 0)
            {
               this.§^8§ = this.§!!3§ - §=!I§.mouseY;
               this.§!!3§ = §=!I§.mouseY;
            }
         }
      }
      
      private function §2!@§(param1:MouseEvent) : void
      {
         this.§,^§ = true;
         this.§!!3§ = §=!I§.mouseY;
      }
      
      private function §=6§(param1:MouseEvent) : void
      {
         this.§,^§ = false;
      }
      
      private function §<![§(param1:Event) : void
      {
         this.§,^§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§!n§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§!n§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§^!>§.isOpen || §4i§.§=B§())
         {
            return §2!_§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §7!K§.§0!9§.update(param1);
         (§=!I§.getItemByName("Container_Credits") as §2W§).y = Math.floor(-this.§4"§);
         this.§^!H§(param1);
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      private function §^!H§(param1:Number) : void
      {
         this.§4"§ += this.§^8§;
         this.§4"§ += this.§!n§;
         if(!this.§,^§ && Math.abs(this.§!n§) < param1 / 15)
         {
            this.§4"§ += param1 / 15;
         }
         if(this.§4"§ < -§6T§.§+!U§ * §7!K§.§7Y§)
         {
            this.§4"§ = this.§?>§;
         }
         else if(this.§4"§ > this.§?>§)
         {
            this.§4"§ = -§6T§.§+!U§ * §7!K§.§7Y§;
         }
         if(!this.§,^§)
         {
            this.§^8§ *= 0.9;
            this.§!n§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §=!I§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§1!J§);
         §=!I§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!@§);
         §=!I§.removeEventListener(MouseEvent.MOUSE_UP,this.§=6§);
         §=!I§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §=!I§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§<![§);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §6T§.§-5§;
         }
      }
   }
}
