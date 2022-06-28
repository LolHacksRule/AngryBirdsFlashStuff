package §`!%§
{
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§`f§;
   import §?!D§.§6s§;
   import §@s§.§'!0§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4N§ extends §9[§
   {
      
      public static const §0!7§:String = "CreditsState";
       
      
      protected var §2U§:§6s§ = null;
      
      private var §@!=§:Boolean;
      
      private var §^!F§:Number;
      
      private var §[! §:Number;
      
      private var §+_§:Number;
      
      private var §]!@§:Number;
      
      private var §?!G§:Number;
      
      public function §4N§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_Credits[0]);
         this.§2U§ = new §6s§(§,!!§.§;4§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?!G§ = (§#!4§.getItemByName("Container_Credits") as §`f§).height + §,!!§.§3L§ * §,!!§.§,`§;
         this.§]!@§ = -this.§?!G§;
         §,!!§.§;4§.§69§(true);
         §,!!§.resume();
         §,!!§.§ ]§(this.§2U§);
         this.§2U§.init();
         AngryBirdsFP11.§'!F§();
         §#!4§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §#!4§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§42§);
         §#!4§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5!9§);
         §#!4§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §#!4§.stage.addEventListener(Event.MOUSE_LEAVE,this.§?2§);
         this.§^!F§ = 0;
         this.§[! § = 0;
         var _loc1_:String = §#y§.§?[§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §#!4§.setText(_loc1_,"TextField_Version_Number");
         §#!4§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §,Z§(param1:MouseEvent) : Boolean
      {
         if(§#!4§.stage.mouseX < §#!4§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§@!=§)
         {
            if(!this.§,Z§(param1))
            {
               this.§@!=§ = false;
               return;
            }
            if(this.§+_§ - §#!4§.stage.mouseY > 0)
            {
               this.§^!F§ = this.§+_§ - §#!4§.stage.mouseY;
               this.§+_§ = §#!4§.stage.mouseY;
            }
            else if(this.§+_§ - §#!4§.stage.mouseY < 0)
            {
               this.§^!F§ = this.§+_§ - §#!4§.stage.mouseY;
               this.§+_§ = §#!4§.stage.mouseY;
            }
         }
      }
      
      private function §42§(param1:MouseEvent) : void
      {
         if(this.§,Z§(param1))
         {
            if(!§,!!§.isPaused)
            {
               this.§@!=§ = true;
               this.§+_§ = §#!4§.stage.mouseY;
            }
         }
      }
      
      private function §5!9§(param1:MouseEvent) : void
      {
         this.§@!=§ = false;
      }
      
      private function §?2§(param1:Event) : void
      {
         this.§@!=§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§,Z§(param1))
         {
            if(param1.delta < 0)
            {
               this.§[! § = 16;
            }
            else if(param1.delta > 0)
            {
               this.§[! § = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§,!!§.isPaused)
         {
            §,!!§.controller.update(param1);
            (§#!4§.getItemByName("Container_Credits") as §`f§).setVisibility(true);
            this.§]! §();
            (§#!4§.getItemByName("Container_Credits") as §`f§).y = Math.floor(-this.§]!@§);
            this.§^5§(param1);
         }
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      protected function §]! §() : void
      {
      }
      
      private function §^5§(param1:Number) : void
      {
         this.§]!@§ += this.§^!F§;
         this.§]!@§ += this.§[! §;
         if(!this.§@!=§ && Math.abs(this.§[! §) < param1 / 15)
         {
            this.§]!@§ += param1 / 15;
         }
         if(this.§]!@§ < -AngryBirdsFP11.screenHeight * §,!!§.§,`§)
         {
            this.§]!@§ = this.§?!G§;
         }
         else if(this.§]!@§ > this.§?!G§)
         {
            this.§]!@§ = -AngryBirdsFP11.screenHeight * §,!!§.§,`§;
         }
         if(!this.§@!=§)
         {
            this.§^!F§ *= 0.9;
            this.§[! § *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §#!4§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §#!4§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§42§);
         §#!4§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5!9§);
         §#!4§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §#!4§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§?2§);
         (§#!4§.getItemByName("Container_Credits") as §`f§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §9!@§.§0!7§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
   }
}
