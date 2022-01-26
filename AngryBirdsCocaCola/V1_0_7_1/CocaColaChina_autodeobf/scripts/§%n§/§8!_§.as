package §%n§
{
   import § F§.§3!&§;
   import §!E§.§-!%§;
   import §%!C§.§+!,§;
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §'4§.§0!D§;
   import §'4§.§@;§;
   import §,@§.§"!'§;
   import §-v§.§,!1§;
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §?@§.§"]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!_§ extends §91§
   {
      
      public static const §^6§:String = "CreditsState";
       
      
      private var §!2§:§+!,§ = null;
      
      private var §0Q§:Boolean;
      
      private var §"!B§:Number;
      
      private var §6!9§:Number;
      
      private var §!!M§:Number;
      
      private var §5Q§:Number;
      
      private var §6!T§:Number;
      
      public function §8!_§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5d§ = new §"!'§(75,0,0,1);
         §5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_Credits[0]);
         this.§!2§ = new §+!,§(§,!1§.§2T§,"INGAME_THEME_3",true,5);
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!1§.§2T§.§=!H§(true);
         §,!1§.§2T§.§&c§(true);
         §,!1§.§2!L§(this.§!2§);
         this.§!2§.init();
         §"!@§.§6t§();
         §3!&§.§#6§.isPaused = false;
         var _loc1_:§-!%§ = §5!R§.container.getItemByName("Container_Credits") as §-!%§;
         §5!R§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ v§);
         §5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         §5!R§.addEventListener(MouseEvent.MOUSE_UP,this.§-!'§);
         §5!R§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!R§.stage.addEventListener(Event.MOUSE_LEAVE,this.§#5§);
         this.§5Q§ = 0;
         this.§"!B§ = 0;
         this.§6!9§ = 0;
         this.§6!T§ = _loc1_.height + §,!1§.§9!;§ * §,!1§.§"R§;
         this.§5Q§ = -this.§6!T§;
         §5!R§.setText(§"]§.§!Z§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §'! §.changeState(§'! §.currentState);
         if(§"!@§.§9!L§ == §^3§.§^6§)
         {
            §'! §.enableLogOutButton(false);
         }
         else
         {
            §'! §.enableLogOutButton(true);
         }
         §'! §.enableCreditsButton(false);
      }
      
      private function § v§(param1:MouseEvent) : void
      {
         if(this.§0Q§)
         {
            if(this.§!!M§ - §5!R§.mouseY > 0)
            {
               this.§"!B§ = this.§!!M§ - §5!R§.mouseY;
               this.§!!M§ = §5!R§.mouseY;
            }
            else if(this.§!!M§ - §5!R§.mouseY < 0)
            {
               this.§"!B§ = this.§!!M§ - §5!R§.mouseY;
               this.§!!M§ = §5!R§.mouseY;
            }
         }
      }
      
      private function §9?§(param1:MouseEvent) : void
      {
         this.§0Q§ = true;
         this.§!!M§ = §5!R§.mouseY;
      }
      
      private function §-!'§(param1:MouseEvent) : void
      {
         this.§0Q§ = false;
      }
      
      private function §#5§(param1:Event) : void
      {
         this.§0Q§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§6!9§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§6!9§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§@;§.isOpen || §0!D§.§1@§())
         {
            return § !!§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §,!1§.§>o§.update(param1);
         (§5!R§.getItemByName("Container_Credits") as §-!%§).y = Math.floor(-this.§5Q§);
         this.§1!-§(param1);
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      private function §1!-§(param1:Number) : void
      {
         this.§5Q§ += this.§"!B§;
         this.§5Q§ += this.§6!9§;
         if(!this.§0Q§ && Math.abs(this.§6!9§) < param1 / 15)
         {
            this.§5Q§ += param1 / 15;
         }
         if(this.§5Q§ < -§"!@§.§9!;§ * §,!1§.§"R§)
         {
            this.§5Q§ = this.§6!T§;
         }
         else if(this.§5Q§ > this.§6!T§)
         {
            this.§5Q§ = -§"!@§.§9!;§ * §,!1§.§"R§;
         }
         if(!this.§0Q§)
         {
            this.§"!B§ *= 0.9;
            this.§6!9§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §5!R§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ v§);
         §5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
         §5!R§.removeEventListener(MouseEvent.MOUSE_UP,this.§-!'§);
         §5!R§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5!R§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§#5§);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §"!@§.§9!L§;
         }
      }
   }
}
