package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§1!=§;
   import §6H§.§>3§;
   import §=E§.§;S§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §>!G§ extends §>3§
   {
      
      public static const §-!A§:String = "CreditsState";
       
      
      protected var §1w§:§;S§ = null;
      
      private var §`O§:Boolean;
      
      private var §5s§:Number;
      
      private var §;t§:Number;
      
      private var §`!;§:Number;
      
      private var §?C§:Number;
      
      private var §"C§:Number;
      
      public function §>!G§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_Credits[0]);
         this.§1w§ = new §;S§(§"h§.§1C§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"C§ = (§-f§.getItemByName("Container_Credits") as §1!=§).height + §"h§.§0!$§ * §"h§.§for§;
         this.§?C§ = -this.§"C§;
         §"h§.§1C§.§]!!§(true);
         §"h§.resume();
         §"h§.§;j§(this.§1w§);
         this.§1w§.init();
         AngryBirdsFP11.§'!!§();
         §-f§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §-f§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§7]§);
         §-f§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§5o§);
         §-f§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §-f§.stage.addEventListener(Event.MOUSE_LEAVE,this.§5t§);
         this.§5s§ = 0;
         this.§;t§ = 0;
         var _loc1_:String = §9X§.§ G§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §-f§.setText(_loc1_,"TextField_Version_Number");
         §-f§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §29§(param1:MouseEvent) : Boolean
      {
         if(§-f§.stage.mouseX < §-f§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§`O§)
         {
            if(!this.§29§(param1))
            {
               this.§`O§ = false;
               return;
            }
            if(this.§`!;§ - §-f§.stage.mouseY > 0)
            {
               this.§5s§ = this.§`!;§ - §-f§.stage.mouseY;
               this.§`!;§ = §-f§.stage.mouseY;
            }
            else if(this.§`!;§ - §-f§.stage.mouseY < 0)
            {
               this.§5s§ = this.§`!;§ - §-f§.stage.mouseY;
               this.§`!;§ = §-f§.stage.mouseY;
            }
         }
      }
      
      private function §7]§(param1:MouseEvent) : void
      {
         if(this.§29§(param1))
         {
            if(!§"h§.isPaused)
            {
               this.§`O§ = true;
               this.§`!;§ = §-f§.stage.mouseY;
            }
         }
      }
      
      private function §5o§(param1:MouseEvent) : void
      {
         this.§`O§ = false;
      }
      
      private function §5t§(param1:Event) : void
      {
         this.§`O§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§29§(param1))
         {
            if(param1.delta < 0)
            {
               this.§;t§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§;t§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§"h§.isPaused)
         {
            §"h§.controller.update(param1);
            (§-f§.getItemByName("Container_Credits") as §1!=§).setVisibility(true);
            this.§`P§();
            (§-f§.getItemByName("Container_Credits") as §1!=§).y = Math.floor(-this.§?C§);
            this.§3!8§(param1);
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      protected function §`P§() : void
      {
      }
      
      private function §3!8§(param1:Number) : void
      {
         this.§?C§ += this.§5s§;
         this.§?C§ += this.§;t§;
         if(!this.§`O§ && Math.abs(this.§;t§) < param1 / 15)
         {
            this.§?C§ += param1 / 15;
         }
         if(this.§?C§ < -AngryBirdsFP11.screenHeight * §"h§.§for§)
         {
            this.§?C§ = this.§"C§;
         }
         else if(this.§?C§ > this.§"C§)
         {
            this.§?C§ = -AngryBirdsFP11.screenHeight * §"h§.§for§;
         }
         if(!this.§`O§)
         {
            this.§5s§ *= 0.9;
            this.§;t§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §-f§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §-f§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7]§);
         §-f§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§5o§);
         §-f§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §-f§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§5t§);
         (§-f§.getItemByName("Container_Credits") as §1!=§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §1!§.§-!A§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
   }
}
