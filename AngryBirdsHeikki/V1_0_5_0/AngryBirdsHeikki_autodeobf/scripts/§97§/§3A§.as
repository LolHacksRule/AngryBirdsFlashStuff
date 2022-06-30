package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §1!K§.§>!<§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§^!H§;
   import §=!c§.§=>§;
   import §>Q§.§5!5§;
   import §@!Y§.§-I§;
   import §@=§.§'3§;
   import §]c§.§6S§;
   import §]c§.§>g§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §3A§ extends §62§
   {
      
      public static const §4l§:String = "CreditsState";
       
      
      private var §9u§:§-I§ = null;
      
      private var §,K§:Boolean;
      
      private var §+q§:Number;
      
      private var §[!K§:Number;
      
      private var §3!`§:Number;
      
      private var §3f§:Number;
      
      private var §4z§:Number;
      
      private var §>S§:Boolean;
      
      public function §3A§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>l§ = new §'3§(0,0,0,1);
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_Credits[0]);
         this.§9u§ = new §-I§(§1L§.§"f§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>S§ = false;
         this.§4z§ = (§?P§.getItemByName("Container_Credits") as §=>§).height + §1L§.§[S§ * §1L§.§1t§;
         this.§3f§ = -this.§4z§;
         sHighscoreSidebar.enableCreditsButton(false);
         §1L§.§=c§(this.§9u§);
         this.§9u§.init();
         §,-§.§"!,§();
         §5!5§.§!J§.isPaused = false;
         var _loc1_:§=>§ = §?P§.container.getItemByName("Container_Credits") as §=>§;
         §?P§.addEventListener(MouseEvent.MOUSE_MOVE,this.§@R§);
         §?P§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!Q§);
         §?P§.addEventListener(MouseEvent.MOUSE_UP,this.§3!=§);
         §?P§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?P§.stage.addEventListener(Event.MOUSE_LEAVE,this.§,f§);
         this.§+q§ = 0;
         this.§[!K§ = 0;
         §?P§.setText(§>!<§.§-!#§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§,-§.§,O§ == §1j§.§4l§)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function §@R§(param1:MouseEvent) : void
      {
         if(this.§,K§)
         {
            if(this.§3!`§ - §?P§.mouseY > 0)
            {
               this.§+q§ = this.§3!`§ - §?P§.mouseY;
               this.§3!`§ = §?P§.mouseY;
            }
            else if(this.§3!`§ - §?P§.mouseY < 0)
            {
               this.§+q§ = this.§3!`§ - §?P§.mouseY;
               this.§3!`§ = §?P§.mouseY;
            }
         }
      }
      
      private function §@!Q§(param1:MouseEvent) : void
      {
         this.§,K§ = true;
         this.§3!`§ = §?P§.mouseY;
      }
      
      private function §3!=§(param1:MouseEvent) : void
      {
         this.§,K§ = false;
      }
      
      private function §,f§(param1:Event) : void
      {
         this.§,K§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§[!K§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§[!K§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§>g§.§]!$§ || §6S§.§]1§())
         {
            return §>!^§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§?P§.getItemByName("Container_Credits") as §=>§).y = Math.floor(-this.§3f§);
         if(!§1L§.isPaused)
         {
            §1L§.§[>§.update(param1);
            this.§0!1§(param1);
            this.§3u§();
         }
         else
         {
            §1L§.§'!Q§();
         }
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      private function §3u§() : void
      {
         if(!this.§>S§)
         {
            §1L§.§"f§.§2!A§(true);
            §1L§.§"f§.§`f§(true);
            this.§>S§ = true;
            §@!R§();
         }
         (§?P§.getItemByName("Container_Credits") as §=>§).setVisibility(true);
      }
      
      private function §0!1§(param1:Number) : void
      {
         this.§3f§ += this.§+q§;
         this.§3f§ += this.§[!K§;
         if(!this.§,K§ && Math.abs(this.§[!K§) < param1 / 15)
         {
            this.§3f§ += param1 / 15;
         }
         if(this.§3f§ < -§,-§.§[S§ * §1L§.§1t§)
         {
            this.§3f§ = this.§4z§;
         }
         else if(this.§3f§ > this.§4z§)
         {
            this.§3f§ = -§,-§.§[S§ * §1L§.§1t§;
         }
         if(!this.§,K§)
         {
            this.§+q§ *= 0.9;
            this.§[!K§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?P§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§@R§);
         §?P§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!Q§);
         §?P§.removeEventListener(MouseEvent.MOUSE_UP,this.§3!=§);
         §?P§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?P§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§,f§);
         (§?P§.getItemByName("Container_Credits") as §=>§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §,-§.§,O§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
