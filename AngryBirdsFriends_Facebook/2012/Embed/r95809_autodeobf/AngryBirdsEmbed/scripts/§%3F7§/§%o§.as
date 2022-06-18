package §?7§
{
   import §"V§.§true§;
   import §'8§.§,,§;
   import §-l§.§?'§;
   import §2x§.§'!@§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import §[V§.§=!'§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%o§ extends §true§
   {
      
      public static const §4!&§:String = "CreditsState";
       
      
      protected var §&S§:§,,§ = null;
      
      private var §[!7§:Boolean;
      
      private var §@F§:Number;
      
      private var §1! §:Number;
      
      private var §;^§:Number;
      
      private var §3§:Number;
      
      private var §=a§:Number;
      
      public function §%o§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_Credits[0]);
         this.§&S§ = new §,,§(§?'§.§5!§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=a§ = (§6!$§.getItemByName("Container_Credits") as §=!'§).height + §?'§.§,!,§ * §?'§.§&!0§;
         this.§3§ = -this.§=a§;
         §?'§.§5!§.§`!?§(true);
         §?'§.resume();
         §?'§.§]`§(this.§&S§);
         this.§&S§.init();
         AngryBirdsFP11.§91§();
         §6!$§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §6!$§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0S§);
         §6!$§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§8!5§);
         §6!$§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6!$§.stage.addEventListener(Event.MOUSE_LEAVE,this.§1_§);
         this.§@F§ = 0;
         this.§1! § = 0;
         var _loc1_:String = §'!@§.§switch§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §6!$§.setText(_loc1_,"TextField_Version_Number");
         §6!$§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §8!%§(param1:MouseEvent) : Boolean
      {
         if(§6!$§.stage.mouseX < §6!$§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§[!7§)
         {
            if(!this.§8!%§(param1))
            {
               this.§[!7§ = false;
               return;
            }
            if(this.§;^§ - §6!$§.stage.mouseY > 0)
            {
               this.§@F§ = this.§;^§ - §6!$§.stage.mouseY;
               this.§;^§ = §6!$§.stage.mouseY;
            }
            else if(this.§;^§ - §6!$§.stage.mouseY < 0)
            {
               this.§@F§ = this.§;^§ - §6!$§.stage.mouseY;
               this.§;^§ = §6!$§.stage.mouseY;
            }
         }
      }
      
      private function §0S§(param1:MouseEvent) : void
      {
         if(this.§8!%§(param1))
         {
            if(!§?'§.§;P§)
            {
               this.§[!7§ = true;
               this.§;^§ = §6!$§.stage.mouseY;
            }
         }
      }
      
      private function §8!5§(param1:MouseEvent) : void
      {
         this.§[!7§ = false;
      }
      
      private function §1_§(param1:Event) : void
      {
         this.§[!7§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§8!%§(param1))
         {
            if(param1.delta < 0)
            {
               this.§1! § = 16;
            }
            else if(param1.delta > 0)
            {
               this.§1! § = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§?'§.§;P§)
         {
            §?'§.controller.update(param1);
            (§6!$§.getItemByName("Container_Credits") as §=!'§).setVisibility(true);
            this.§^!?§();
            (§6!$§.getItemByName("Container_Credits") as §=!'§).y = Math.floor(-this.§3§);
            this.§'h§(param1);
         }
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      protected function §^!?§() : void
      {
      }
      
      private function §'h§(param1:Number) : void
      {
         this.§3§ += this.§@F§;
         this.§3§ += this.§1! §;
         if(!this.§[!7§ && Math.abs(this.§1! §) < param1 / 15)
         {
            this.§3§ += param1 / 15;
         }
         if(this.§3§ < -AngryBirdsFP11.screenHeight * §?'§.§&!0§)
         {
            this.§3§ = this.§=a§;
         }
         else if(this.§3§ > this.§=a§)
         {
            this.§3§ = -AngryBirdsFP11.screenHeight * §?'§.§&!0§;
         }
         if(!this.§[!7§)
         {
            this.§@F§ *= 0.9;
            this.§1! § *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §6!$§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §6!$§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0S§);
         §6!$§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§8!5§);
         §6!$§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6!$§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§1_§);
         (§6!$§.getItemByName("Container_Credits") as §=!'§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §&M§.§4!&§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
   }
}
