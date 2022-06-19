package §%w§
{
   import § !G§.§ #§;
   import §%!,§.§26§;
   import §,j§.§1-§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§'n§;
   import §?m§.§7?§;
   import §`C§.§9!'§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §,%§ extends §&c§
   {
      
      public static const §9!P§:String = "CreditsState";
       
      
      private var §6-§:§26§ = null;
      
      private var §'4§:Boolean;
      
      private var §`!P§:Number;
      
      private var §1!N§:Number;
      
      private var §"0§:Number;
      
      private var §>a§:Number;
      
      private var §,A§:Number;
      
      public function §,%§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_Credits[0]);
         this.§6-§ = new §26§(§7?§.§4!H§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         §7?§.§4!H§.§'![§(true);
         §7?§.§-!P§(this.§6-§);
         this.§6-§.init();
         §#x§.§`! §();
         §9!'§.§`!@§.isPaused = false;
         var _loc1_:§1-§ = §3t§.container.getItemByName("Container_Credits") as §1-§;
         §3t§.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!R§);
         §3t§.addEventListener(MouseEvent.MOUSE_DOWN,this.§?d§);
         §3t§.addEventListener(MouseEvent.MOUSE_UP,this.§`!§);
         §3t§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3t§.stage.addEventListener(Event.MOUSE_LEAVE,this.§'h§);
         this.§>a§ = 0;
         this.§`!P§ = 0;
         this.§1!N§ = 0;
         this.§,A§ = _loc1_.height + §7?§.§0h§ * §7?§.§1H§;
         this.§>a§ = -this.§,A§;
         §3t§.setText(§ #§.§[!N§,"TextField_Version_Number");
      }
      
      private function §;!R§(param1:MouseEvent) : void
      {
         if(this.§'4§)
         {
            if(this.§"0§ - §3t§.mouseY > 0)
            {
               this.§`!P§ = this.§"0§ - §3t§.mouseY;
               this.§"0§ = §3t§.mouseY;
            }
            else if(this.§"0§ - §3t§.mouseY < 0)
            {
               this.§`!P§ = this.§"0§ - §3t§.mouseY;
               this.§"0§ = §3t§.mouseY;
            }
         }
      }
      
      private function §?d§(param1:MouseEvent) : void
      {
         this.§'4§ = true;
         this.§"0§ = §3t§.mouseY;
      }
      
      private function §`!§(param1:MouseEvent) : void
      {
         this.§'4§ = false;
      }
      
      private function §'h§(param1:Event) : void
      {
         this.§'4§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§1!N§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§1!N§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §7?§.§75§.update(param1);
         (§3t§.getItemByName("Container_Credits") as §1-§).y = Math.floor(-this.§>a§);
         this.§41§(param1);
         (§3t§.getItemByName("Container_Credits") as §1-§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      private function §41§(param1:Number) : void
      {
         this.§>a§ += this.§`!P§;
         this.§>a§ += this.§1!N§;
         if(!this.§'4§ && Math.abs(this.§1!N§) < param1 / 15)
         {
            this.§>a§ += param1 / 15;
         }
         if(this.§>a§ < -§#x§.§0h§ * §7?§.§1H§)
         {
            this.§>a§ = this.§,A§;
         }
         else if(this.§>a§ > this.§,A§)
         {
            this.§>a§ = -§#x§.§0h§ * §7?§.§1H§;
         }
         if(!this.§'4§)
         {
            this.§`!P§ *= 0.9;
            this.§1!N§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §3t§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;!R§);
         §3t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?d§);
         §3t§.removeEventListener(MouseEvent.MOUSE_UP,this.§`!§);
         §3t§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3t§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§'h§);
         (§3t§.getItemByName("Container_Credits") as §1-§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §`L§.§9!P§;
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
