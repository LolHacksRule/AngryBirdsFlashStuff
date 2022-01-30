package §2x§
{
   import § true§.§1H§;
   import §&W§.§7L§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>!?§.§#!d§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §^f§ extends §>!T§
   {
      
      public static const §>H§:String = "CreditsState";
       
      
      protected var §&"!§:§#!d§ = null;
      
      private var §]u§:Boolean;
      
      private var §+!b§:Number;
      
      private var §[l§:Number;
      
      private var §7r§:Number;
      
      private var §[W§:Number;
      
      private var §+!5§:Number;
      
      public function §^f§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_Credits[0]);
         this.§&"!§ = new §#!d§(§5!U§.§,!E§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§+!5§ = (§3?§.getItemByName("Container_Credits") as §1H§).height + §5!U§.§?_§ * §5!U§.§#"1§;
         this.§[W§ = -this.§+!5§;
         §5!U§.§,!E§.§=""§(true);
         §5!U§.resume();
         §5!U§.§7!t§(this.§&"!§);
         this.§&"!§.init();
         this.§;!X§();
         §3?§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;M§);
         §3?§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§]r§);
         §3?§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5r§);
         §3?§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3?§.stage.addEventListener(Event.MOUSE_LEAVE,this.§'D§);
         this.§+!b§ = 0;
         this.§[l§ = 0;
         var _loc1_:String = §7L§.§`!W§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §3?§.setText(_loc1_,"TextField_Version_Number");
         §3?§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §;!X§() : void
      {
         AngryBirdsFP11.§;!X§();
      }
      
      private function §7!1§(param1:MouseEvent) : Boolean
      {
         if(§3?§.stage.mouseX < §3?§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §;M§(param1:MouseEvent) : void
      {
         if(this.§]u§)
         {
            if(!this.§7!1§(param1))
            {
               this.§]u§ = false;
               return;
            }
            if(this.§7r§ - §3?§.stage.mouseY > 0)
            {
               this.§+!b§ = this.§7r§ - §3?§.stage.mouseY;
               this.§7r§ = §3?§.stage.mouseY;
            }
            else if(this.§7r§ - §3?§.stage.mouseY < 0)
            {
               this.§+!b§ = this.§7r§ - §3?§.stage.mouseY;
               this.§7r§ = §3?§.stage.mouseY;
            }
         }
      }
      
      private function §]r§(param1:MouseEvent) : void
      {
         if(this.§7!1§(param1))
         {
            if(!§5!U§.isPaused)
            {
               this.§]u§ = true;
               this.§7r§ = §3?§.stage.mouseY;
            }
         }
      }
      
      private function §5r§(param1:MouseEvent) : void
      {
         this.§]u§ = false;
      }
      
      private function §'D§(param1:Event) : void
      {
         this.§]u§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§7!1§(param1))
         {
            if(param1.delta < 0)
            {
               this.§[l§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§[l§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§5!U§.isPaused)
         {
            §5!U§.§ !t§.update(param1);
            (§3?§.getItemByName("Container_Credits") as §1H§).setVisibility(true);
            this.§,!Z§();
            (§3?§.getItemByName("Container_Credits") as §1H§).y = Math.floor(-this.§[W§);
            this.§4!k§(param1);
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      protected function §,!Z§() : void
      {
      }
      
      private function §4!k§(param1:Number) : void
      {
         this.§[W§ += this.§+!b§;
         this.§[W§ += this.§[l§;
         if(!this.§]u§ && Math.abs(this.§[l§) < param1 / 15)
         {
            this.§[W§ += param1 / 15;
         }
         if(this.§[W§ < -AngryBirdsFP11.§!,§ * §5!U§.§#"1§)
         {
            this.§[W§ = this.§+!5§;
         }
         else if(this.§[W§ > this.§+!5§)
         {
            this.§[W§ = -AngryBirdsFP11.§!,§ * §5!U§.§#"1§;
         }
         if(!this.§]u§)
         {
            this.§+!b§ *= 0.9;
            this.§[l§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §3?§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;M§);
         §3?§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]r§);
         §3?§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5r§);
         §3?§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §3?§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§'D§);
         (§3?§.getItemByName("Container_Credits") as §1H§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §'5§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
   }
}
