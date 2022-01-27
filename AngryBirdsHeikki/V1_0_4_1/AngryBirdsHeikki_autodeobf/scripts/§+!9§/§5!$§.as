package §+!9§
{
   import §#!&§.§59§;
   import §%!$§.§[Z§;
   import §4;§.§,h§;
   import §6!"§.§<!+§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §8w§.§-x§;
   import §?!5§.§2d§;
   import §?!P§.§@@§;
   import §[!^§.§-m§;
   import §[!^§.§^2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §var§.§+!^§;
   
   public class §5!$§ extends §3!!§
   {
      
      public static const §6! §:String = "CreditsState";
       
      
      private var §<! §:§-x§ = null;
      
      private var §%m§:Boolean;
      
      private var §?!G§:Number;
      
      private var §<!Q§:Number;
      
      private var §>9§:Number;
      
      private var §1U§:Number;
      
      private var §#b§:Number;
      
      private var §3!a§:Boolean;
      
      public function §5!$§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1'§ = new §<!+§(0,0,0,1);
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_Credits[0]);
         this.§<! § = new §-x§(§@@§.§ !8§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!a§ = false;
         this.§#b§ = (§2!M§.getItemByName("Container_Credits") as §59§).height + §@@§.§9!8§ * §@@§.§@H§;
         this.§1U§ = -this.§#b§;
         sHighscoreSidebar.enableCreditsButton(false);
         §@@§.§1!V§(this.§<! §);
         this.§<! §.init();
         §1F§.§ 9§();
         §2d§.§8e§.isPaused = false;
         var _loc1_:§59§ = §2!M§.container.getItemByName("Container_Credits") as §59§;
         §2!M§.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!&§);
         §2!M§.addEventListener(MouseEvent.MOUSE_DOWN,this.§>`§);
         §2!M§.addEventListener(MouseEvent.MOUSE_UP,this.§>?§);
         §2!M§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!M§.stage.addEventListener(Event.MOUSE_LEAVE,this.§0!>§);
         this.§?!G§ = 0;
         this.§<!Q§ = 0;
         §2!M§.setText(§[Z§.§=E§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§1F§.§"T§ == §0!M§.§6! §)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function §^!&§(param1:MouseEvent) : void
      {
         if(this.§%m§)
         {
            if(this.§>9§ - §2!M§.mouseY > 0)
            {
               this.§?!G§ = this.§>9§ - §2!M§.mouseY;
               this.§>9§ = §2!M§.mouseY;
            }
            else if(this.§>9§ - §2!M§.mouseY < 0)
            {
               this.§?!G§ = this.§>9§ - §2!M§.mouseY;
               this.§>9§ = §2!M§.mouseY;
            }
         }
      }
      
      private function §>`§(param1:MouseEvent) : void
      {
         this.§%m§ = true;
         this.§>9§ = §2!M§.mouseY;
      }
      
      private function §>?§(param1:MouseEvent) : void
      {
         this.§%m§ = false;
      }
      
      private function §0!>§(param1:Event) : void
      {
         this.§%m§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§<!Q§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§<!Q§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§-m§.§'!E§ || §^2§.§->§())
         {
            return §,h§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§2!M§.getItemByName("Container_Credits") as §59§).y = Math.floor(-this.§1U§);
         if(!§@@§.isPaused)
         {
            §@@§.§6!L§.update(param1);
            this.§'9§(param1);
            this.§4o§();
         }
         else
         {
            §@@§.§"Q§();
         }
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      private function §4o§() : void
      {
         if(!this.§3!a§)
         {
            §@@§.§ !8§.§5!?§(true);
            §@@§.§ !8§.§,!Y§(true);
            this.§3!a§ = true;
            §5x§();
         }
         (§2!M§.getItemByName("Container_Credits") as §59§).setVisibility(true);
      }
      
      private function §'9§(param1:Number) : void
      {
         this.§1U§ += this.§?!G§;
         this.§1U§ += this.§<!Q§;
         if(!this.§%m§ && Math.abs(this.§<!Q§) < param1 / 15)
         {
            this.§1U§ += param1 / 15;
         }
         if(this.§1U§ < -§1F§.§9!8§ * §@@§.§@H§)
         {
            this.§1U§ = this.§#b§;
         }
         else if(this.§1U§ > this.§#b§)
         {
            this.§1U§ = -§1F§.§9!8§ * §@@§.§@H§;
         }
         if(!this.§%m§)
         {
            this.§?!G§ *= 0.9;
            this.§<!Q§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §2!M§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^!&§);
         §2!M§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>`§);
         §2!M§.removeEventListener(MouseEvent.MOUSE_UP,this.§>?§);
         §2!M§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §2!M§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§0!>§);
         (§2!M§.getItemByName("Container_Credits") as §59§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §1F§.§"T§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
