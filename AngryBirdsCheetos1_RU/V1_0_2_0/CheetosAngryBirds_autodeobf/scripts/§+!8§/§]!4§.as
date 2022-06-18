package §+!8§
{
   import §"I§.§-x§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §+`§.§!j§;
   import §2!P§.§6=§;
   import §7L§.§9I§;
   import §=g§.§@!L§;
   import §@!W§.§8!W§;
   import §[]§.§`!`§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §]!4§ extends §-x§
   {
      
      public static const §,!+§:String = "CreditsState";
       
      
      private var §7-§:§!j§ = null;
      
      private var §!P§:Boolean;
      
      private var §[!]§:Number;
      
      private var §=!Y§:Number;
      
      private var §4P§:Number;
      
      private var §`!+§:Number;
      
      private var §=j§:Number;
      
      public function §]!4§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_Credits[0]);
         this.§7-§ = new §!j§(§8!W§.§=X§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         §8!W§.§=X§.§=!@§(true);
         §8!W§.§+!§(this.§7-§);
         this.§7-§.init();
         §@!!§.§;y§();
         §6=§.§6>§.isPaused = false;
         var _loc1_:§`!`§ = §&X§.container.getItemByName("Container_Credits") as §`!`§;
         §&X§.addEventListener(MouseEvent.MOUSE_MOVE,this.§!p§);
         §&X§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@r§);
         §&X§.addEventListener(MouseEvent.MOUSE_UP,this.§!!N§);
         §&X§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §&X§.stage.addEventListener(Event.MOUSE_LEAVE,this.§+!3§);
         this.§`!+§ = 0;
         this.§[!]§ = 0;
         this.§=!Y§ = 0;
         this.§=j§ = _loc1_.height + §8!W§.§!=§ * §8!W§.§@!+§;
         this.§`!+§ = -this.§=j§;
         §&X§.setText(§@!L§.§>!U§,"TextField_Version_Number");
      }
      
      private function §!p§(param1:MouseEvent) : void
      {
         if(this.§!P§)
         {
            if(this.§4P§ - §&X§.mouseY > 0)
            {
               this.§[!]§ = this.§4P§ - §&X§.mouseY;
               this.§4P§ = §&X§.mouseY;
            }
            else if(this.§4P§ - §&X§.mouseY < 0)
            {
               this.§[!]§ = this.§4P§ - §&X§.mouseY;
               this.§4P§ = §&X§.mouseY;
            }
         }
      }
      
      private function §@r§(param1:MouseEvent) : void
      {
         this.§!P§ = true;
         this.§4P§ = §&X§.mouseY;
      }
      
      private function §!!N§(param1:MouseEvent) : void
      {
         this.§!P§ = false;
      }
      
      private function §+!3§(param1:Event) : void
      {
         this.§!P§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§=!Y§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§=!Y§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §8!W§.§5!B§.update(param1);
         (§&X§.getItemByName("Container_Credits") as §`!`§).y = Math.floor(-this.§`!+§);
         this.§4@§(param1);
         (§&X§.getItemByName("Container_Credits") as §`!`§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      private function §4@§(param1:Number) : void
      {
         this.§`!+§ += this.§[!]§;
         this.§`!+§ += this.§=!Y§;
         if(!this.§!P§ && Math.abs(this.§=!Y§) < param1 / 15)
         {
            this.§`!+§ += param1 / 15;
         }
         if(this.§`!+§ < -§@!!§.§!=§ * §8!W§.§@!+§)
         {
            this.§`!+§ = this.§=j§;
         }
         else if(this.§`!+§ > this.§=j§)
         {
            this.§`!+§ = -§@!!§.§!=§ * §8!W§.§@!+§;
         }
         if(!this.§!P§)
         {
            this.§[!]§ *= 0.9;
            this.§=!Y§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §&X§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§!p§);
         §&X§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@r§);
         §&X§.removeEventListener(MouseEvent.MOUSE_UP,this.§!!N§);
         §&X§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §&X§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§+!3§);
         (§&X§.getItemByName("Container_Credits") as §`!`§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §=f§.§,!+§;
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
