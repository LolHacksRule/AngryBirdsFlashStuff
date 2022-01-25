package §>I§
{
   import § !C§.§6!W§;
   import §&"§.§!!_§;
   import §&V§.§9t§;
   import §+&§.§?y§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §68§.§`?§;
   import §]n§.§9!-§;
   import §]n§.§=!O§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import §^=§.§8!6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §;!X§ extends §for §
   {
      
      public static const § !P§:String = "CreditsState";
       
      
      private var §5t§:§!!_§ = null;
      
      private var §[3§:Boolean;
      
      private var §#3§:Number;
      
      private var §?!`§:Number;
      
      private var §<!d§:Number;
      
      private var §&7§:Number;
      
      private var §5J§:Number;
      
      public function §;!X§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]Z§ = new §>!'§(75,0,0,1);
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_Credits[0]);
         this.§5t§ = new §!!_§(§#!=§.§&![§,"INGAME_THEME_3",true,5);
      }
      
      override public function activate() : void
      {
         super.activate();
         §#!=§.§&![§.§[!&§(true);
         §#!=§.§&![§.§0!D§(true);
         §#!=§.§5!7§(this.§5t§);
         this.§5t§.init();
         §-!#§.§each §();
         §?y§.§0&§.isPaused = false;
         var _loc1_:§`?§ = §^!;§.container.getItemByName("Container_Credits") as §`?§;
         §^!;§.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!!§);
         §^!;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§#6§);
         §^!;§.addEventListener(MouseEvent.MOUSE_UP,this.§?Y§);
         §^!;§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!;§.stage.addEventListener(Event.MOUSE_LEAVE,this.§5q§);
         this.§&7§ = 0;
         this.§#3§ = 0;
         this.§?!`§ = 0;
         this.§5J§ = _loc1_.height + §#!=§.§?!E§ * §#!=§.§>0§;
         this.§&7§ = -this.§5J§;
         §^!;§.setText(§8!6§.§"!d§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §^c§.changeState(§^c§.currentState);
         if(§-!#§.§2t§ == §1!Q§.§ !P§)
         {
            §^c§.enableLogOutButton(false);
         }
         else
         {
            §^c§.enableLogOutButton(true);
         }
         §^c§.enableCreditsButton(false);
      }
      
      private function §?!!§(param1:MouseEvent) : void
      {
         if(this.§[3§)
         {
            if(this.§<!d§ - §^!;§.mouseY > 0)
            {
               this.§#3§ = this.§<!d§ - §^!;§.mouseY;
               this.§<!d§ = §^!;§.mouseY;
            }
            else if(this.§<!d§ - §^!;§.mouseY < 0)
            {
               this.§#3§ = this.§<!d§ - §^!;§.mouseY;
               this.§<!d§ = §^!;§.mouseY;
            }
         }
      }
      
      private function §#6§(param1:MouseEvent) : void
      {
         this.§[3§ = true;
         this.§<!d§ = §^!;§.mouseY;
      }
      
      private function §?Y§(param1:MouseEvent) : void
      {
         this.§[3§ = false;
      }
      
      private function §5q§(param1:Event) : void
      {
         this.§[3§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§?!`§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§?!`§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§9!-§.isOpen || §=!O§.§%F§())
         {
            return §6!W§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §#!=§.§3!W§.update(param1);
         (§^!;§.getItemByName("Container_Credits") as §`?§).y = Math.floor(-this.§&7§);
         this.§'5§(param1);
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      private function §'5§(param1:Number) : void
      {
         this.§&7§ += this.§#3§;
         this.§&7§ += this.§?!`§;
         if(!this.§[3§ && Math.abs(this.§?!`§) < param1 / 15)
         {
            this.§&7§ += param1 / 15;
         }
         if(this.§&7§ < -§-!#§.§?!E§ * §#!=§.§>0§)
         {
            this.§&7§ = this.§5J§;
         }
         else if(this.§&7§ > this.§5J§)
         {
            this.§&7§ = -§-!#§.§?!E§ * §#!=§.§>0§;
         }
         if(!this.§[3§)
         {
            this.§#3§ *= 0.9;
            this.§?!`§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^!;§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!!§);
         §^!;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#6§);
         §^!;§.removeEventListener(MouseEvent.MOUSE_UP,this.§?Y§);
         §^!;§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!;§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§5q§);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §-!#§.§2t§;
         }
      }
   }
}
