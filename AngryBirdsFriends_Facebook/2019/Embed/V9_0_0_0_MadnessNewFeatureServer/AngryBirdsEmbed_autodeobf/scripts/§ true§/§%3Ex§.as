package § true§
{
   import §"!B§.§58§;
   import §'6§.§?!L§;
   import §+_§.§,f§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §>x§ extends §,!?§
   {
      
      public static const §`W§:String = "CreditsState";
       
      
      protected var §7%§:§,f§ = null;
      
      private var §?Q§:Boolean;
      
      private var § w§:Number;
      
      private var §@v§:Number;
      
      private var §>!%§:Number;
      
      private var §;!J§:Number;
      
      private var §&!%§:Number;
      
      public function §>x§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_Credits[0]);
         this.§7%§ = new §,f§(§[+§.§,!&§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?Q§ = false;
         this.§&!%§ = (§while§.getItemByName("Container_Credits") as §58§).height + §[+§.§0!-§ * §[+§.§!M§;
         this.§;!J§ = -this.§&!%§;
         §[+§.§,!&§.§`9§(true);
         §[+§.resume();
         §[+§.§^!0§(this.§7%§);
         this.§7%§.init();
         this.§&n§();
         §while§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §while§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!4§);
         §while§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<!O§);
         §while§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §while§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!&§);
         this.§ w§ = 0;
         this.§@v§ = 0;
         var _loc1_:String = §?!L§.§#%§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.§6[§(_loc1_,_loc2_);
      }
      
      protected function §6[§(param1:String, param2:String) : void
      {
         §while§.setText(param1,"TextField_Version_Number");
         §while§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function §&n§() : void
      {
         AngryBirdsFP11.§&n§();
      }
      
      private function §`i§(param1:MouseEvent) : Boolean
      {
         if(§while§.stage.mouseX < §while§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§?Q§)
         {
            if(!this.§`i§(param1))
            {
               this.§?Q§ = false;
               return;
            }
            if(this.§>!%§ - §while§.stage.mouseY > 0)
            {
               this.§ w§ = this.§>!%§ - §while§.stage.mouseY;
               this.§>!%§ = §while§.stage.mouseY;
            }
            else if(this.§>!%§ - §while§.stage.mouseY < 0)
            {
               this.§ w§ = this.§>!%§ - §while§.stage.mouseY;
               this.§>!%§ = §while§.stage.mouseY;
            }
         }
      }
      
      private function §7!4§(param1:MouseEvent) : void
      {
         if(this.§`i§(param1))
         {
            if(!§[+§.isPaused)
            {
               this.§?Q§ = true;
               this.§>!%§ = §while§.stage.mouseY;
            }
         }
      }
      
      private function §<!O§(param1:MouseEvent) : void
      {
         this.§?Q§ = false;
      }
      
      private function §3!&§(param1:Event) : void
      {
         this.§?Q§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§`i§(param1))
         {
            if(param1.delta < 0)
            {
               this.§@v§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§@v§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§[+§.isPaused)
         {
            §[+§.controller.update(param1);
            (§while§.getItemByName("Container_Credits") as §58§).setVisibility(true);
            this.§@q§();
            (§while§.getItemByName("Container_Credits") as §58§).y = Math.floor(-this.§;!J§);
            this.§<!,§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      protected function §@q§() : void
      {
      }
      
      private function §<!,§(param1:Number) : void
      {
         this.§;!J§ += this.§ w§;
         this.§;!J§ += this.§@v§;
         if(!this.§?Q§ && Math.abs(this.§@v§) < param1 / 15)
         {
            this.§;!J§ += param1 / 15;
         }
         if(this.§;!J§ < -AngryBirdsFP11.screenHeight * §[+§.§!M§)
         {
            this.§;!J§ = this.§&!%§;
         }
         else if(this.§;!J§ > this.§&!%§)
         {
            this.§;!J§ = -AngryBirdsFP11.screenHeight * §[+§.§!M§;
         }
         if(!this.§?Q§)
         {
            this.§ w§ *= 0.9;
            this.§@v§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §while§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §while§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7!4§);
         §while§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<!O§);
         §while§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §while§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!&§);
         (§while§.getItemByName("Container_Credits") as §58§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §?,§.§`W§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
   }
}
