package § !@§
{
   import §%4§.§4!=§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §>!7§.§&V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!M§ extends §1Q§
   {
      
      public static const §>9§:String = "CreditsState";
       
      
      protected var §]!"§:§&V§ = null;
      
      private var §`!F§:Boolean;
      
      private var §9!>§:Number;
      
      private var §!!G§:Number;
      
      private var §5!<§:Number;
      
      private var §3!2§:Number;
      
      private var §?s§:Number;
      
      public function §8!M§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_Credits[0]);
         this.§]!"§ = new §&V§(§=w§.§ o§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`!F§ = false;
         this.§?s§ = (§]F§.getItemByName("Container_Credits") as §4!=§).height + §=w§.§0i§ * §=w§.§'c§;
         this.§3!2§ = -this.§?s§;
         §=w§.§ o§.§7!E§(true);
         §=w§.resume();
         §=w§.§>@§(this.§]!"§);
         this.§]!"§.init();
         this.§ x§();
         §]F§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §]F§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§#!#§);
         §]F§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§8y§);
         §]F§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §]F§.stage.addEventListener(Event.MOUSE_LEAVE,this.§`k§);
         this.§9!>§ = 0;
         this.§!!G§ = 0;
         var _loc1_:String = §7!+§.§9h§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.§%A§(_loc1_,_loc2_);
      }
      
      protected function §%A§(param1:String, param2:String) : void
      {
         §]F§.setText(param1,"TextField_Version_Number");
         §]F§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function § x§() : void
      {
         AngryBirdsFP11.§ x§();
      }
      
      private function §8C§(param1:MouseEvent) : Boolean
      {
         if(§]F§.stage.mouseX < §]F§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§`!F§)
         {
            if(!this.§8C§(param1))
            {
               this.§`!F§ = false;
               return;
            }
            if(this.§5!<§ - §]F§.stage.mouseY > 0)
            {
               this.§9!>§ = this.§5!<§ - §]F§.stage.mouseY;
               this.§5!<§ = §]F§.stage.mouseY;
            }
            else if(this.§5!<§ - §]F§.stage.mouseY < 0)
            {
               this.§9!>§ = this.§5!<§ - §]F§.stage.mouseY;
               this.§5!<§ = §]F§.stage.mouseY;
            }
         }
      }
      
      private function §#!#§(param1:MouseEvent) : void
      {
         if(this.§8C§(param1))
         {
            if(!§=w§.isPaused)
            {
               this.§`!F§ = true;
               this.§5!<§ = §]F§.stage.mouseY;
            }
         }
      }
      
      private function §8y§(param1:MouseEvent) : void
      {
         this.§`!F§ = false;
      }
      
      private function §`k§(param1:Event) : void
      {
         this.§`!F§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§8C§(param1))
         {
            if(param1.delta < 0)
            {
               this.§!!G§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§!!G§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§=w§.isPaused)
         {
            §=w§.controller.update(param1);
            (§]F§.getItemByName("Container_Credits") as §4!=§).setVisibility(true);
            this.§'!=§();
            (§]F§.getItemByName("Container_Credits") as §4!=§).y = Math.floor(-this.§3!2§);
            this.§2f§(param1);
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      protected function §'!=§() : void
      {
      }
      
      private function §2f§(param1:Number) : void
      {
         this.§3!2§ += this.§9!>§;
         this.§3!2§ += this.§!!G§;
         if(!this.§`!F§ && Math.abs(this.§!!G§) < param1 / 15)
         {
            this.§3!2§ += param1 / 15;
         }
         if(this.§3!2§ < -AngryBirdsFP11.screenHeight * §=w§.§'c§)
         {
            this.§3!2§ = this.§?s§;
         }
         else if(this.§3!2§ > this.§?s§)
         {
            this.§3!2§ = -AngryBirdsFP11.screenHeight * §=w§.§'c§;
         }
         if(!this.§`!F§)
         {
            this.§9!>§ *= 0.9;
            this.§!!G§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#!#§);
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§8y§);
         §]F§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §]F§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`k§);
         (§]F§.getItemByName("Container_Credits") as §4!=§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §5!#§.§>9§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
   }
}
