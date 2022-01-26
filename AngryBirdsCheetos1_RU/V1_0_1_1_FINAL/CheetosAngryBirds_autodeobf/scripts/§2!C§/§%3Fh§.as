package §2!C§
{
   import § N§.§]M§;
   import §&h§.§+Y§;
   import §-!-§.§5&§;
   import §2K§.§,!@§;
   import §6!K§.§#![§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §?h§ extends §+Y§
   {
      
      public static const §+!a§:String = "CreditsState";
       
      
      private var §<6§:§5&§ = null;
      
      private var §@!>§:Boolean;
      
      private var §-^§:Number;
      
      private var §0]§:Number;
      
      private var §`+§:Number;
      
      private var §!V§:Number;
      
      private var §?!A§:Number;
      
      public function §?h§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_Credits[0]);
         this.§<6§ = new §5&§(§,^§.§0K§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         §,^§.§0K§.§5W§(true);
         §,^§.§"1§(this.§<6§);
         this.§<6§.init();
         §7d§.§+!>§();
         §&!7§.§ h§.isPaused = false;
         var _loc1_:§,!@§ = §?!?§.container.getItemByName("Container_Credits") as §,!@§;
         §?!?§.addEventListener(MouseEvent.MOUSE_MOVE,this.§`>§);
         §?!?§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>! §);
         §?!?§.addEventListener(MouseEvent.MOUSE_UP,this.§?!c§);
         §?!?§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?!?§.stage.addEventListener(Event.MOUSE_LEAVE,this.§^;§);
         this.§!V§ = 0;
         this.§-^§ = 0;
         this.§0]§ = 0;
         this.§?!A§ = _loc1_.height + §,^§.§,n§ * §,^§.§=%§;
         this.§!V§ = -this.§?!A§;
         §?!?§.setText(§]M§.§4"§,"TextField_Version_Number");
      }
      
      private function §`>§(param1:MouseEvent) : void
      {
         if(this.§@!>§)
         {
            if(this.§`+§ - §?!?§.mouseY > 0)
            {
               this.§-^§ = this.§`+§ - §?!?§.mouseY;
               this.§`+§ = §?!?§.mouseY;
            }
            else if(this.§`+§ - §?!?§.mouseY < 0)
            {
               this.§-^§ = this.§`+§ - §?!?§.mouseY;
               this.§`+§ = §?!?§.mouseY;
            }
         }
      }
      
      private function §>! §(param1:MouseEvent) : void
      {
         this.§@!>§ = true;
         this.§`+§ = §?!?§.mouseY;
      }
      
      private function §?!c§(param1:MouseEvent) : void
      {
         this.§@!>§ = false;
      }
      
      private function §^;§(param1:Event) : void
      {
         this.§@!>§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§0]§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§0]§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §,^§.§;§.update(param1);
         (§?!?§.getItemByName("Container_Credits") as §,!@§).y = Math.floor(-this.§!V§);
         this.§`C§(param1);
         (§?!?§.getItemByName("Container_Credits") as §,!@§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      private function §`C§(param1:Number) : void
      {
         this.§!V§ += this.§-^§;
         this.§!V§ += this.§0]§;
         if(!this.§@!>§ && Math.abs(this.§0]§) < param1 / 15)
         {
            this.§!V§ += param1 / 15;
         }
         if(this.§!V§ < -§7d§.§,n§ * §,^§.§=%§)
         {
            this.§!V§ = this.§?!A§;
         }
         else if(this.§!V§ > this.§?!A§)
         {
            this.§!V§ = -§7d§.§,n§ * §,^§.§=%§;
         }
         if(!this.§@!>§)
         {
            this.§-^§ *= 0.9;
            this.§0]§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?!?§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§`>§);
         §?!?§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>! §);
         §?!?§.removeEventListener(MouseEvent.MOUSE_UP,this.§?!c§);
         §?!?§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?!?§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§^;§);
         (§?!?§.getItemByName("Container_Credits") as §,!@§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §^w§.§+!a§;
               break;
            case "PRIVACY_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "EULA_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
               break;
            case "FAQ_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/en/our-work/games/view/1/angry-birds/faq/"),"_blank");
         }
      }
   }
}
