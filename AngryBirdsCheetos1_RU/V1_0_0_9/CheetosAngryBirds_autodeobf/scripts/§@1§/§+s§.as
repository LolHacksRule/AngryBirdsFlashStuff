package §@1§
{
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §#j§.§!!?§;
   import §'!S§.§,!%§;
   import §-!6§.§>I§;
   import §7!U§.§2!7§;
   import §7f§.§?i§;
   import §<!P§.§>l§;
   import §^r§.§>`§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+s§ extends §>l§
   {
      
      public static const §]U§:String = "CreditsState";
       
      
      private var §]!-§:§!!?§ = null;
      
      private var §7!Q§:Boolean;
      
      private var §]B§:Number;
      
      private var §#!0§:Number;
      
      private var §`2§:Number;
      
      private var §`k§:Number;
      
      private var §8'§:Number;
      
      public function §+s§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_Credits[0]);
         this.§]!-§ = new §!!?§(§2!7§.§5G§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         §2!7§.§5G§.§@4§(true);
         §2!7§.§`!@§(this.§]!-§);
         this.§]!-§.init();
         §+§.§3"§();
         §,!%§.§7x§.isPaused = false;
         var _loc1_:§?i§ = §[B§.container.getItemByName("Container_Credits") as §?i§;
         §[B§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ !]§);
         §[B§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!L§);
         §[B§.addEventListener(MouseEvent.MOUSE_UP,this.§^!_§);
         §[B§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[B§.stage.addEventListener(Event.MOUSE_LEAVE,this.§%!S§);
         this.§`k§ = 0;
         this.§]B§ = 0;
         this.§#!0§ = 0;
         this.§8'§ = _loc1_.height + §2!7§.§&!8§ * §2!7§.§0m§;
         this.§`k§ = -this.§8'§;
         §[B§.setText(§>I§.§5!-§,"TextField_Version_Number");
      }
      
      private function § !]§(param1:MouseEvent) : void
      {
         if(this.§7!Q§)
         {
            if(this.§`2§ - §[B§.mouseY > 0)
            {
               this.§]B§ = this.§`2§ - §[B§.mouseY;
               this.§`2§ = §[B§.mouseY;
            }
            else if(this.§`2§ - §[B§.mouseY < 0)
            {
               this.§]B§ = this.§`2§ - §[B§.mouseY;
               this.§`2§ = §[B§.mouseY;
            }
         }
      }
      
      private function §+!L§(param1:MouseEvent) : void
      {
         this.§7!Q§ = true;
         this.§`2§ = §[B§.mouseY;
      }
      
      private function §^!_§(param1:MouseEvent) : void
      {
         this.§7!Q§ = false;
      }
      
      private function §%!S§(param1:Event) : void
      {
         this.§7!Q§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§#!0§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§#!0§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2!7§.§@!H§.update(param1);
         (§[B§.getItemByName("Container_Credits") as §?i§).y = Math.floor(-this.§`k§);
         this.§-!K§(param1);
         (§[B§.getItemByName("Container_Credits") as §?i§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      private function §-!K§(param1:Number) : void
      {
         this.§`k§ += this.§]B§;
         this.§`k§ += this.§#!0§;
         if(!this.§7!Q§ && Math.abs(this.§#!0§) < param1 / 15)
         {
            this.§`k§ += param1 / 15;
         }
         if(this.§`k§ < -§+§.§&!8§ * §2!7§.§0m§)
         {
            this.§`k§ = this.§8'§;
         }
         else if(this.§`k§ > this.§8'§)
         {
            this.§`k§ = -§+§.§&!8§ * §2!7§.§0m§;
         }
         if(!this.§7!Q§)
         {
            this.§]B§ *= 0.9;
            this.§#!0§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §[B§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ !]§);
         §[B§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+!L§);
         §[B§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!_§);
         §[B§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[B§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§%!S§);
         (§[B§.getItemByName("Container_Credits") as §?i§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §05§.§]U§;
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
