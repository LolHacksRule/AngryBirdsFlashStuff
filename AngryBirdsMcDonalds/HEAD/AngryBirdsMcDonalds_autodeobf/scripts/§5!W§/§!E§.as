package §5!W§
{
   import §%%§.§3P§;
   import §'!D§.§7!c§;
   import §'+§.§1u§;
   import §+P§.§,z§;
   import §,!C§.§-6§;
   import §,!H§.§ for§;
   import §-a§.§5C§;
   import §2!G§.§-!3§;
   import §2!G§.§[!M§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §@-§.§[y§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §!E§ extends §`X§
   {
      
      public static const §>d§:String = "CreditsState";
       
      
      private var §+!M§:§7!c§ = null;
      
      private var §;!R§:Boolean;
      
      private var §0!j§:Number;
      
      private var §1!C§:Number;
      
      private var §2"§:Number;
      
      private var §#!?§:Number;
      
      private var §3!;§:Number;
      
      private var §,F§:Boolean;
      
      public function §!E§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#5§ = new §5C§(0,0,0,1);
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_Credits[0]);
         this.§+!M§ = new §7!c§(§2M§.§1?§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,F§ = false;
         this.§3!;§ = (mUIView.getItemByName("Container_Credits") as §-6§).height + §2M§.§0Z§ * §2M§.§50§;
         this.§#!?§ = -this.§3!;§;
         §2M§.setController(this.§+!M§);
         this.§+!M§.init();
         §3![§.§'S§();
         §3P§.§;m§.isPaused = false;
         var _loc1_:§-6§ = mUIView.container.getItemByName("Container_Credits") as §-6§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§[!D§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!;§);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§4W§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§6x§);
         this.§0!j§ = 0;
         this.§1!C§ = 0;
         mUIView.setText(§1u§.§3%§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
         if(§3![§.§5!6§.§%!%§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §[!D§(param1:MouseEvent) : void
      {
         if(this.§;!R§)
         {
            if(this.§2"§ - mUIView.mouseY > 0)
            {
               this.§0!j§ = this.§2"§ - mUIView.mouseY;
               this.§2"§ = mUIView.mouseY;
            }
            else if(this.§2"§ - mUIView.mouseY < 0)
            {
               this.§0!j§ = this.§2"§ - mUIView.mouseY;
               this.§2"§ = mUIView.mouseY;
            }
         }
      }
      
      private function §5!;§(param1:MouseEvent) : void
      {
         if(!this.§%T§())
         {
            this.§;!R§ = true;
            this.§2"§ = mUIView.mouseY;
         }
      }
      
      private function §4W§(param1:MouseEvent) : void
      {
         this.§;!R§ = false;
      }
      
      private function §6x§(param1:Event) : void
      {
         this.§;!R§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§%T§())
         {
            if(param1.delta < 0)
            {
               this.§1!C§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§1!C§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§[!M§.§8!o§ || §-!3§.§&!T§())
         {
            return § for§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as §-6§).y = Math.floor(-this.§#!?§);
         if(!§2M§.isPaused)
         {
            §2M§.§`r§.update(param1);
            this.§?!a§(param1);
            this.§-!Z§();
         }
         else
         {
            §2M§.§3!M§();
         }
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      private function §-!Z§() : void
      {
         if(!this.§,F§)
         {
            §2M§.§1?§.§9!=§(true);
            §2M§.§1?§.§4<§(true);
            (§2M§.§1?§.background as §,z§).loop = true;
            this.§,F§ = true;
            § 7§();
         }
         (mUIView.getItemByName("Container_Credits") as §-6§).setVisibility(true);
      }
      
      private function §?!a§(param1:Number) : void
      {
         this.§#!?§ += this.§0!j§;
         this.§#!?§ += this.§1!C§;
         if(!this.§;!R§ && Math.abs(this.§1!C§) < param1 / 15)
         {
            this.§#!?§ += param1 / 15;
         }
         if(this.§#!?§ < -§3![§.§0Z§ * §2M§.§50§)
         {
            this.§#!?§ = this.§3!;§;
         }
         else if(this.§#!?§ > this.§3!;§)
         {
            this.§#!?§ = -§3![§.§0Z§ * §2M§.§50§;
         }
         if(!this.§;!R§)
         {
            this.§0!j§ *= 0.9;
            this.§1!C§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[!D§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!;§);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§4W§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§6x§);
         (mUIView.getItemByName("Container_Credits") as §-6§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §3![§.§0#§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function §%T§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
