package §3n§
{
   import §+!^§.§'Y§;
   import §1Y§.§+$§;
   import §7!P§.§-3§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §<!D§.§9'§;
   import §>N§.§"u§;
   import §?>§.§ !V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §8s§ extends §+$§
   {
      
      public static const §,F§:String = "CreditsState";
       
      
      private var §#!U§:§9'§ = null;
      
      private var §[[§:Boolean;
      
      private var § =§:Number;
      
      private var §9!E§:Number;
      
      private var § !'§:Number;
      
      private var §7!;§:Number;
      
      private var §>!$§:Number;
      
      public function §8s§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_Credits[0]);
         this.§#!U§ = new §9'§(§'Y§.§@j§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         §'Y§.§@j§.§[!F§(true);
         §'Y§.§9!C§(this.§#!U§);
         this.§#!U§.init();
         §7!^§.§@$§();
         §"u§.§4f§.isPaused = false;
         var _loc1_:§ !V§ = §2!J§.container.getItemByName("Container_Credits") as § !V§;
         §2!J§.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!-§);
         §2!J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]=§);
         §2!J§.addEventListener(MouseEvent.MOUSE_UP,this.§9!7§);
         §2!J§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!J§.stage.addEventListener(Event.MOUSE_LEAVE,this.§=L§);
         this.§7!;§ = 0;
         this.§ =§ = 0;
         this.§9!E§ = 0;
         this.§>!$§ = _loc1_.height + §'Y§.§&I§ * §'Y§.§=!a§;
         this.§7!;§ = -this.§>!$§;
         §2!J§.setText(§-3§.§-$§,"TextField_Version_Number");
      }
      
      private function §%!-§(param1:MouseEvent) : void
      {
         if(this.§[[§)
         {
            if(this.§ !'§ - §2!J§.mouseY > 0)
            {
               this.§ =§ = this.§ !'§ - §2!J§.mouseY;
               this.§ !'§ = §2!J§.mouseY;
            }
            else if(this.§ !'§ - §2!J§.mouseY < 0)
            {
               this.§ =§ = this.§ !'§ - §2!J§.mouseY;
               this.§ !'§ = §2!J§.mouseY;
            }
         }
      }
      
      private function §]=§(param1:MouseEvent) : void
      {
         this.§[[§ = true;
         this.§ !'§ = §2!J§.mouseY;
      }
      
      private function §9!7§(param1:MouseEvent) : void
      {
         this.§[[§ = false;
      }
      
      private function §=L§(param1:Event) : void
      {
         this.§[[§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§9!E§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§9!E§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §'Y§.§>k§.update(param1);
         (§2!J§.getItemByName("Container_Credits") as § !V§).y = Math.floor(-this.§7!;§);
         this.§9!N§(param1);
         (§2!J§.getItemByName("Container_Credits") as § !V§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      private function §9!N§(param1:Number) : void
      {
         this.§7!;§ += this.§ =§;
         this.§7!;§ += this.§9!E§;
         if(!this.§[[§ && Math.abs(this.§9!E§) < param1 / 15)
         {
            this.§7!;§ += param1 / 15;
         }
         if(this.§7!;§ < -§7!^§.§&I§ * §'Y§.§=!a§)
         {
            this.§7!;§ = this.§>!$§;
         }
         else if(this.§7!;§ > this.§>!$§)
         {
            this.§7!;§ = -§7!^§.§&I§ * §'Y§.§=!a§;
         }
         if(!this.§[[§)
         {
            this.§ =§ *= 0.9;
            this.§9!E§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2!J§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!-§);
         §2!J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]=§);
         §2!J§.removeEventListener(MouseEvent.MOUSE_UP,this.§9!7§);
         §2!J§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!J§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§=L§);
         (§2!J§.getItemByName("Container_Credits") as § !V§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §-'§.§,F§;
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
