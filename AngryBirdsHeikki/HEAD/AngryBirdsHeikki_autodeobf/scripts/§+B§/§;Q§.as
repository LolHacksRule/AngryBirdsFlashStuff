package §+B§
{
   import §&!b§.§ c§;
   import §&L§.§?]§;
   import §'!F§.§6!_§;
   import §'!F§.§>1§;
   import §+!M§.§7!0§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §8O§.§&#§;
   import §9!E§.§'!U§;
   import §>!G§.§6!9§;
   import §]!&§.§5!5§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §use §.§;0§;
   
   public class §;Q§ extends §-2§
   {
      
      public static const §[!%§:String = "CreditsState";
       
      
      private var §-&§:§'!U§ = null;
      
      private var §,6§:Boolean;
      
      private var §>!H§:Number;
      
      private var §2!+§:Number;
      
      private var §-N§:Number;
      
      private var §6n§:Number;
      
      private var §'&§:Number;
      
      private var § 6§:Boolean;
      
      public function §;Q§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#8§ = new §;0§(0,0,0,1);
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_Credits[0]);
         this.§-&§ = new §'!U§(§&#§.§3!D§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ 6§ = false;
         this.§'&§ = (§ ,§.getItemByName("Container_Credits") as §5!5§).height + §&#§.§1l§ * §&#§.§>!§;
         this.§6n§ = -this.§'&§;
         sHighscoreSidebar.enableCreditsButton(false);
         §&#§.§>A§(this.§-&§);
         this.§-&§.init();
         §"!R§.§1P§();
         §?]§.§+!9§.isPaused = false;
         var _loc1_:§5!5§ = § ,§.container.getItemByName("Container_Credits") as §5!5§;
         § ,§.addEventListener(MouseEvent.MOUSE_MOVE,this.§9!D§);
         § ,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§6z§);
         § ,§.addEventListener(MouseEvent.MOUSE_UP,this.§28§);
         § ,§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § ,§.stage.addEventListener(Event.MOUSE_LEAVE,this.§=u§);
         this.§>!H§ = 0;
         this.§2!+§ = 0;
         § ,§.setText(§ c§.§-!h§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         if(§"!R§.§54§ == §#!b§.§[!%§)
         {
            sHighscoreSidebar.enableLogOutButton(false);
         }
         else
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
      }
      
      private function §9!D§(param1:MouseEvent) : void
      {
         if(this.§,6§)
         {
            if(this.§-N§ - § ,§.mouseY > 0)
            {
               this.§>!H§ = this.§-N§ - § ,§.mouseY;
               this.§-N§ = § ,§.mouseY;
            }
            else if(this.§-N§ - § ,§.mouseY < 0)
            {
               this.§>!H§ = this.§-N§ - § ,§.mouseY;
               this.§-N§ = § ,§.mouseY;
            }
         }
      }
      
      private function §6z§(param1:MouseEvent) : void
      {
         this.§,6§ = true;
         this.§-N§ = § ,§.mouseY;
      }
      
      private function §28§(param1:MouseEvent) : void
      {
         this.§,6§ = false;
      }
      
      private function §=u§(param1:Event) : void
      {
         this.§,6§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§2!+§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§2!+§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§6!_§.§3!G§ || §>1§.§`4§())
         {
            return §6!9§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (§ ,§.getItemByName("Container_Credits") as §5!5§).y = Math.floor(-this.§6n§);
         if(!§&#§.isPaused)
         {
            §&#§.§"1§.update(param1);
            this.§?`§(param1);
            this.§-! §();
         }
         else
         {
            §&#§.§3!H§();
         }
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      private function §-! §() : void
      {
         if(!this.§ 6§)
         {
            §&#§.§3!D§.§"!E§(true);
            §&#§.§3!D§.§>!?§(true);
            this.§ 6§ = true;
            §4B§();
         }
         (§ ,§.getItemByName("Container_Credits") as §5!5§).setVisibility(true);
      }
      
      private function §?`§(param1:Number) : void
      {
         this.§6n§ += this.§>!H§;
         this.§6n§ += this.§2!+§;
         if(!this.§,6§ && Math.abs(this.§2!+§) < param1 / 15)
         {
            this.§6n§ += param1 / 15;
         }
         if(this.§6n§ < -§"!R§.§1l§ * §&#§.§>!§)
         {
            this.§6n§ = this.§'&§;
         }
         else if(this.§6n§ > this.§'&§)
         {
            this.§6n§ = -§"!R§.§1l§ * §&#§.§>!§;
         }
         if(!this.§,6§)
         {
            this.§>!H§ *= 0.9;
            this.§2!+§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         § ,§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§9!D§);
         § ,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6z§);
         § ,§.removeEventListener(MouseEvent.MOUSE_UP,this.§28§);
         § ,§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § ,§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§=u§);
         (§ ,§.getItemByName("Container_Credits") as §5!5§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §"!R§.§54§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
   }
}
