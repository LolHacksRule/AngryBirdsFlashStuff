package §%Y§
{
   import §'!N§.§9!O§;
   import §'D§.§8e§;
   import §-!§.§-§;
   import §1!§.§@!Q§;
   import §5e§.§=!C§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §;[§.§>!^§;
   import §]m§.§-D§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §7!X§ extends §-D§
   {
      
      public static const §7!Q§:String = "CreditsState";
       
      
      private var §5!G§:§=!C§ = null;
      
      private var §%_§:Boolean;
      
      private var §+?§:Number;
      
      private var §0b§:Number;
      
      private var §;V§:Number;
      
      private var §-!L§:Number;
      
      private var § `§:Number;
      
      public function §7!X§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_Credits[0]);
         this.§5!G§ = new §=!C§(§@!Q§.§7l§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         §@!Q§.§7l§.§?!J§(true);
         §@!Q§.§5"§(this.§5!G§);
         this.§5!G§.init();
         §1R§.§&a§();
         §-§.§'L§.isPaused = false;
         var _loc1_:§>!^§ = §>#§.container.getItemByName("Container_Credits") as §>!^§;
         §>#§.addEventListener(MouseEvent.MOUSE_MOVE,this.§set §);
         §>#§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,>§);
         §>#§.addEventListener(MouseEvent.MOUSE_UP,this.§4!!§);
         §>#§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>#§.stage.addEventListener(Event.MOUSE_LEAVE,this.§#!§);
         this.§-!L§ = 0;
         this.§+?§ = 0;
         this.§0b§ = 0;
         this.§ `§ = _loc1_.height + §@!Q§.§1!9§ * §@!Q§.§2!M§;
         this.§-!L§ = -this.§ `§;
         §>#§.setText(§8e§.§<x§,"TextField_Version_Number");
      }
      
      private function §set §(param1:MouseEvent) : void
      {
         if(this.§%_§)
         {
            if(this.§;V§ - §>#§.mouseY > 0)
            {
               this.§+?§ = this.§;V§ - §>#§.mouseY;
               this.§;V§ = §>#§.mouseY;
            }
            else if(this.§;V§ - §>#§.mouseY < 0)
            {
               this.§+?§ = this.§;V§ - §>#§.mouseY;
               this.§;V§ = §>#§.mouseY;
            }
         }
      }
      
      private function §,>§(param1:MouseEvent) : void
      {
         this.§%_§ = true;
         this.§;V§ = §>#§.mouseY;
      }
      
      private function §4!!§(param1:MouseEvent) : void
      {
         this.§%_§ = false;
      }
      
      private function §#!§(param1:Event) : void
      {
         this.§%_§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§0b§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§0b§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §@!Q§.§ !=§.update(param1);
         (§>#§.getItemByName("Container_Credits") as §>!^§).y = Math.floor(-this.§-!L§);
         this.§]P§(param1);
         (§>#§.getItemByName("Container_Credits") as §>!^§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      private function §]P§(param1:Number) : void
      {
         this.§-!L§ += this.§+?§;
         this.§-!L§ += this.§0b§;
         if(!this.§%_§ && Math.abs(this.§0b§) < param1 / 15)
         {
            this.§-!L§ += param1 / 15;
         }
         if(this.§-!L§ < -§1R§.§1!9§ * §@!Q§.§2!M§)
         {
            this.§-!L§ = this.§ `§;
         }
         else if(this.§-!L§ > this.§ `§)
         {
            this.§-!L§ = -§1R§.§1!9§ * §@!Q§.§2!M§;
         }
         if(!this.§%_§)
         {
            this.§+?§ *= 0.9;
            this.§0b§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §>#§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§set §);
         §>#§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,>§);
         §>#§.removeEventListener(MouseEvent.MOUSE_UP,this.§4!!§);
         §>#§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>#§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§#!§);
         (§>#§.getItemByName("Container_Credits") as §>!^§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §@4§.§7!Q§;
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
