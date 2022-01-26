package §'Q§
{
   import §!!S§.§^P§;
   import §3!M§.§7^§;
   import §;!X§.§7`§;
   import §;!Y§.§?+§;
   import §?!F§.§0!Y§;
   import §^!&§.§;C§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §7!2§ extends §0!Y§
   {
      
      public static const §1o§:String = "CreditsState";
       
      
      private var §&X§:§?+§ = null;
      
      private var §+!^§:Boolean;
      
      private var §`S§:Number;
      
      private var §&Z§:Number;
      
      private var §0>§:Number;
      
      private var §%!T§:Number;
      
      private var §`!F§:Number;
      
      public function §7!2§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_Credits[0]);
         this.§&X§ = new §?+§(§7`§.§2'§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         §7`§.§2'§.§8!-§(true);
         §7`§.§9Z§(this.§&X§);
         this.§&X§.init();
         §4+§.§]!§();
         §'C§.§&=§.isPaused = false;
         var _loc1_:§7^§ = §2m§.container.getItemByName("Container_Credits") as §7^§;
         §2m§.addEventListener(MouseEvent.MOUSE_MOVE,this.§,F§);
         §2m§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]y§);
         §2m§.addEventListener(MouseEvent.MOUSE_UP,this.§-5§);
         §2m§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2m§.stage.addEventListener(Event.MOUSE_LEAVE,this.§=!>§);
         this.§%!T§ = 0;
         this.§`S§ = 0;
         this.§&Z§ = 0;
         this.§`!F§ = _loc1_.height + §7`§.§@!#§ * §7`§.§4h§;
         this.§%!T§ = -this.§`!F§;
         §2m§.setText(§;C§.§const§,"TextField_Version_Number");
      }
      
      private function §,F§(param1:MouseEvent) : void
      {
         if(this.§+!^§)
         {
            if(this.§0>§ - §2m§.mouseY > 0)
            {
               this.§`S§ = this.§0>§ - §2m§.mouseY;
               this.§0>§ = §2m§.mouseY;
            }
            else if(this.§0>§ - §2m§.mouseY < 0)
            {
               this.§`S§ = this.§0>§ - §2m§.mouseY;
               this.§0>§ = §2m§.mouseY;
            }
         }
      }
      
      private function §]y§(param1:MouseEvent) : void
      {
         this.§+!^§ = true;
         this.§0>§ = §2m§.mouseY;
      }
      
      private function §-5§(param1:MouseEvent) : void
      {
         this.§+!^§ = false;
      }
      
      private function §=!>§(param1:Event) : void
      {
         this.§+!^§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§&Z§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§&Z§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §7`§.§`P§.update(param1);
         (§2m§.getItemByName("Container_Credits") as §7^§).y = Math.floor(-this.§%!T§);
         this.§1!P§(param1);
         (§2m§.getItemByName("Container_Credits") as §7^§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      private function §1!P§(param1:Number) : void
      {
         this.§%!T§ += this.§`S§;
         this.§%!T§ += this.§&Z§;
         if(!this.§+!^§ && Math.abs(this.§&Z§) < param1 / 15)
         {
            this.§%!T§ += param1 / 15;
         }
         if(this.§%!T§ < -§4+§.§@!#§ * §7`§.§4h§)
         {
            this.§%!T§ = this.§`!F§;
         }
         else if(this.§%!T§ > this.§`!F§)
         {
            this.§%!T§ = -§4+§.§@!#§ * §7`§.§4h§;
         }
         if(!this.§+!^§)
         {
            this.§`S§ *= 0.9;
            this.§&Z§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2m§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§,F§);
         §2m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]y§);
         §2m§.removeEventListener(MouseEvent.MOUSE_UP,this.§-5§);
         §2m§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2m§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§=!>§);
         (§2m§.getItemByName("Container_Credits") as §7^§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §@Q§.§1o§;
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
