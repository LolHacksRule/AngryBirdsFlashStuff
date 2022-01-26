package §<!U§
{
   import §!J§.§[&§;
   import §&N§.§@,§;
   import §'G§.§%!%§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§@R§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   import §9!-§.§[M§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5!5§ extends §[4§
   {
      
      public static const §`O§:String = "CreditsState";
       
      
      private var §+h§:§[M§ = null;
      
      private var §%!!§:Boolean;
      
      private var §>F§:Number;
      
      private var §0!@§:Number;
      
      private var §%!D§:Number;
      
      private var §8!3§:Number;
      
      private var §9!W§:Number;
      
      public function §5!5§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_Credits[0]);
         this.§+h§ = new §[M§(§[&§.§&!'§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         §[&§.§&!'§.§1K§(true);
         §[&§.§2P§(this.§+h§);
         this.§+h§.init();
         §,l§.§'!§();
         § !+§.§?!L§.§5!T§ = false;
         var _loc1_:§%!%§ = §"c§.container.getItemByName("Container_Credits") as §%!%§;
         §"c§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ I§);
         §"c§.addEventListener(MouseEvent.MOUSE_DOWN,this.§]z§);
         §"c§.addEventListener(MouseEvent.MOUSE_UP,this.§@!T§);
         §"c§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §"c§.stage.addEventListener(Event.MOUSE_LEAVE,this.§2,§);
         this.§8!3§ = 0;
         this.§>F§ = 0;
         this.§0!@§ = 0;
         this.§9!W§ = _loc1_.height + §[&§.§#S§ * §[&§.§6!H§;
         this.§8!3§ = -this.§9!W§;
         §"c§.setText(§@,§.§,f§,"TextField_Version_Number");
      }
      
      private function § I§(param1:MouseEvent) : void
      {
         if(this.§%!!§)
         {
            if(this.§%!D§ - §"c§.mouseY > 0)
            {
               this.§>F§ = this.§%!D§ - §"c§.mouseY;
               this.§%!D§ = §"c§.mouseY;
            }
            else if(this.§%!D§ - §"c§.mouseY < 0)
            {
               this.§>F§ = this.§%!D§ - §"c§.mouseY;
               this.§%!D§ = §"c§.mouseY;
            }
         }
      }
      
      private function §]z§(param1:MouseEvent) : void
      {
         this.§%!!§ = true;
         this.§%!D§ = §"c§.mouseY;
      }
      
      private function §@!T§(param1:MouseEvent) : void
      {
         this.§%!!§ = false;
      }
      
      private function §2,§(param1:Event) : void
      {
         this.§%!!§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§0!@§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§0!@§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §[&§.§&#§.update(param1);
         (§"c§.getItemByName("Container_Credits") as §%!%§).y = Math.floor(-this.§8!3§);
         this.§"m§(param1);
         (§"c§.getItemByName("Container_Credits") as §%!%§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      private function §"m§(param1:Number) : void
      {
         this.§8!3§ += this.§>F§;
         this.§8!3§ += this.§0!@§;
         if(!this.§%!!§ && Math.abs(this.§0!@§) < param1 / 15)
         {
            this.§8!3§ += param1 / 15;
         }
         if(this.§8!3§ < -§,l§.§#S§ * §[&§.§6!H§)
         {
            this.§8!3§ = this.§9!W§;
         }
         else if(this.§8!3§ > this.§9!W§)
         {
            this.§8!3§ = -§,l§.§#S§ * §[&§.§6!H§;
         }
         if(!this.§%!!§)
         {
            this.§>F§ *= 0.9;
            this.§0!@§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §"c§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ I§);
         §"c§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]z§);
         §"c§.removeEventListener(MouseEvent.MOUSE_UP,this.§@!T§);
         §"c§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §"c§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§2,§);
         (§"c§.getItemByName("Container_Credits") as §%!%§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §6l§.§`O§;
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
