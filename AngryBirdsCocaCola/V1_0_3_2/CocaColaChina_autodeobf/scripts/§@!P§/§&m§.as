package §@!P§
{
   import §!!L§.§&!R§;
   import §'b§.§'^§;
   import §+R§.§0O§;
   import §,f§.§=!0§;
   import §2!a§.§?O§;
   import §6!Q§.§7!7§;
   import §6l§.§#!Z§;
   import §;C§.§+!M§;
   import §;C§.§9!P§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&m§ extends §3!%§
   {
      
      public static const §'2§:String = "CreditsState";
       
      
      private var §5!7§:§=!0§ = null;
      
      private var §=!§:Boolean;
      
      private var §,E§:Number;
      
      private var §`E§:Number;
      
      private var §9C§:Number;
      
      private var §-I§:Number;
      
      private var §"!S§:Number;
      
      public function §&m§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#j§ = new §?O§(75,0,0,1);
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_Credits[0]);
         this.§5!7§ = new §=!0§(§"n§.§[b§,"INGAME_THEME_3",true,5);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"n§.§[b§.§+!U§(true);
         §"n§.§[b§.§9'§(true);
         §"n§.§51§(this.§5!7§);
         this.§5!7§.init();
         §=i§.§ !A§();
         §0O§.§&H§.§catch§ = false;
         var _loc1_:§'^§ = §+!`§.container.getItemByName("Container_Credits") as §'^§;
         §+!`§.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!F§);
         §+!`§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1R§);
         §+!`§.addEventListener(MouseEvent.MOUSE_UP,this.§1y§);
         §+!`§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!`§.stage.addEventListener(Event.MOUSE_LEAVE,this.§&B§);
         this.§-I§ = 0;
         this.§,E§ = 0;
         this.§`E§ = 0;
         this.§"!S§ = _loc1_.height + §"n§.§8-§ * §"n§.§+l§;
         this.§-I§ = -this.§"!S§;
         §+!`§.setText(§7!7§.§[!Q§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §@<§.changeState(§@<§.currentState);
         if(§=i§.§0!U§ == §7!<§.§'2§)
         {
            §@<§.enableLogOutButton(false);
         }
         else
         {
            §@<§.enableLogOutButton(true);
         }
         §@<§.enableCreditsButton(false);
      }
      
      private function §6!F§(param1:MouseEvent) : void
      {
         if(this.§=!§)
         {
            if(this.§9C§ - §+!`§.mouseY > 0)
            {
               this.§,E§ = this.§9C§ - §+!`§.mouseY;
               this.§9C§ = §+!`§.mouseY;
            }
            else if(this.§9C§ - §+!`§.mouseY < 0)
            {
               this.§,E§ = this.§9C§ - §+!`§.mouseY;
               this.§9C§ = §+!`§.mouseY;
            }
         }
      }
      
      private function §1R§(param1:MouseEvent) : void
      {
         this.§=!§ = true;
         this.§9C§ = §+!`§.mouseY;
      }
      
      private function §1y§(param1:MouseEvent) : void
      {
         this.§=!§ = false;
      }
      
      private function §&B§(param1:Event) : void
      {
         this.§=!§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§`E§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§`E§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§9!P§.isOpen || §+!M§.§1!X§())
         {
            return §&!R§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §"n§.§5]§.update(param1);
         (§+!`§.getItemByName("Container_Credits") as §'^§).y = Math.floor(-this.§-I§);
         this.§@!Y§(param1);
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      private function §@!Y§(param1:Number) : void
      {
         this.§-I§ += this.§,E§;
         this.§-I§ += this.§`E§;
         if(!this.§=!§ && Math.abs(this.§`E§) < param1 / 15)
         {
            this.§-I§ += param1 / 15;
         }
         if(this.§-I§ < -§=i§.§8-§ * §"n§.§+l§)
         {
            this.§-I§ = this.§"!S§;
         }
         else if(this.§-I§ > this.§"!S§)
         {
            this.§-I§ = -§=i§.§8-§ * §"n§.§+l§;
         }
         if(!this.§=!§)
         {
            this.§,E§ *= 0.9;
            this.§`E§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §+!`§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6!F§);
         §+!`§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1R§);
         §+!`§.removeEventListener(MouseEvent.MOUSE_UP,this.§1y§);
         §+!`§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!`§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§&B§);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §=i§.§0!U§;
         }
      }
   }
}
