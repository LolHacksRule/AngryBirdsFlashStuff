package §5G§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §2!&§.§2p§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §6;§.§%[§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`h§.§@!Z§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!$§ extends §%!$§
   {
      
      public static const §3!?§:String = "CreditsState";
       
      
      private var §6!L§:§2p§ = null;
      
      private var §<H§:Boolean;
      
      private var §4!i§:Number;
      
      private var §?v§:Number;
      
      private var §+!Q§:Number;
      
      private var §<!3§:Number;
      
      private var §,?§:Number;
      
      protected var §#q§:§#x§ = null;
      
      private var §1!'§:Boolean;
      
      public function §9!$§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§#q§ = new §#x§(0,0,0,1);
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_Credits[0]);
         this.§6!L§ = new §2p§(§@!Z§.§;!,§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         this.§#q§.mouseEnabled = true;
         this.§1!'§ = false;
         §%!0§.container.mClip.addChild(this.§#q§);
         this.§]_§();
         §@!Z§.§;!,§.§;!i§(true);
         §@!Z§.§;!,§.§%d§(true);
         §@!Z§.§=!2§(this.§6!L§);
         this.§6!L§.init();
         §5!9§.§3!K§();
         §%[§.§6+§.isPaused = false;
         var _loc1_:§<6§ = §%!0§.container.getItemByName("Container_Credits") as §<6§;
         §%!0§.addEventListener(MouseEvent.MOUSE_MOVE,this.§5!A§);
         §%!0§.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!$§);
         §%!0§.addEventListener(MouseEvent.MOUSE_UP,this.§0!X§);
         §%!0§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!=§);
         this.§<!3§ = 0;
         this.§4!i§ = 0;
         this.§?v§ = 0;
         this.§,?§ = _loc1_.height + §@!Z§.§"r§ * §@!Z§.§5I§;
         this.§<!3§ = -this.§,?§;
         §%!0§.setText(§5!9§.§-!O§.getVersionInfo(),"TextField_Version_Number");
      }
      
      private function §5!A§(param1:MouseEvent) : void
      {
         if(this.§<H§)
         {
            if(this.§+!Q§ - §%!0§.mouseY > 0)
            {
               this.§4!i§ = this.§+!Q§ - §%!0§.mouseY;
               this.§+!Q§ = §%!0§.mouseY;
            }
            else if(this.§+!Q§ - §%!0§.mouseY < 0)
            {
               this.§4!i§ = this.§+!Q§ - §%!0§.mouseY;
               this.§+!Q§ = §%!0§.mouseY;
            }
         }
      }
      
      private function §5!$§(param1:MouseEvent) : void
      {
         this.§<H§ = true;
         this.§+!Q§ = §%!0§.mouseY;
      }
      
      private function §0!X§(param1:MouseEvent) : void
      {
         this.§<H§ = false;
      }
      
      private function §3!=§(param1:Event) : void
      {
         this.§<H§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§?v§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§?v§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §@!Z§.§^&§.update(param1);
         (§%!0§.getItemByName("Container_Credits") as §<6§).y = Math.floor(-this.§<!3§);
         this.§'6§(param1);
         (§%!0§.getItemByName("Container_Credits") as §<6§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      private function §'6§(param1:Number) : void
      {
         this.§<!3§ += this.§4!i§;
         this.§<!3§ += this.§?v§;
         if(!this.§<H§ && Math.abs(this.§?v§) < param1 / 15)
         {
            this.§<!3§ += param1 / 15;
         }
         if(this.§<!3§ < -§5!9§.§"r§ * §@!Z§.§5I§)
         {
            this.§<!3§ = this.§,?§;
         }
         else if(this.§<!3§ > this.§,?§)
         {
            this.§<!3§ = -§5!9§.§"r§ * §@!Z§.§5I§;
         }
         if(!this.§<H§)
         {
            this.§4!i§ *= 0.9;
            this.§?v§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§#q§.parent == §%!0§.container.mClip)
         {
            §%!0§.container.mClip.removeChild(this.§#q§);
         }
         §@!Z§.§;!,§.§;!i§(false);
         §%!0§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§5!A§);
         §%!0§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!$§);
         §%!0§.removeEventListener(MouseEvent.MOUSE_UP,this.§0!X§);
         §%!0§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%!0§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!=§);
         (§%!0§.getItemByName("Container_Credits") as §<6§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               this.§1!'§ = false;
               this.§@u§();
         }
      }
      
      protected function §@u§() : void
      {
         if(this.§#q§ && !this.§1!'§)
         {
            this.§#q§.mouseEnabled = true;
            this.§1!'§ = true;
            this.§#q§.§"!c§(0);
            this.§#q§.§'H§(1,0.25);
            this.§#q§.addEventListener(ColorFadeLayerEvent.§79§,this.§"y§);
         }
      }
      
      protected function §"y§(param1:ColorFadeLayerEvent) : void
      {
         this.§#q§.mouseEnabled = false;
         this.§#q§.removeEventListener(ColorFadeLayerEvent.§79§,this.§"y§);
         mNextState = §39§.§3!?§;
      }
      
      protected function §]_§() : void
      {
         if(this.§#q§ && !this.§1!'§)
         {
            this.§1!'§ = true;
            this.§#q§.§"!c§(1);
            this.§#q§.§'H§(0,0.25);
            this.§#q§.addEventListener(ColorFadeLayerEvent.§79§,this.§;!"§);
         }
      }
      
      private function §;!"§(param1:ColorFadeLayerEvent) : void
      {
         this.§#q§.mouseEnabled = false;
         this.§#q§.removeEventListener(ColorFadeLayerEvent.§79§,this.§;!"§);
      }
   }
}
