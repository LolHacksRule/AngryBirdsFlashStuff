package §8;§
{
   import §%!;§.§!L§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §@V§.§`!5§;
   import §]G§.§;! §;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §8!4§ extends §!L§
   {
      
      public static const §"Z§:String = "CreditsState";
       
      
      protected var §&!E§:§;! § = null;
      
      private var §7!$§:Boolean;
      
      private var § ;§:Number;
      
      private var §!!4§:Number;
      
      private var §1!=§:Number;
      
      private var §&!H§:Number;
      
      private var §3c§:Number;
      
      public function §8!4§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_Credits[0]);
         this.§&!E§ = new §;! §(§5!+§.§6!§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3c§ = (§>2§.getItemByName("Container_Credits") as §9V§).height + §5!+§.§>!8§ * §5!+§.§?!#§;
         this.§&!H§ = -this.§3c§;
         §5!+§.§6!§.§'!+§(true);
         §5!+§.resume();
         §5!+§.§;&§(this.§&!E§);
         this.§&!E§.init();
         this.§6r§();
         §>2§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?y§);
         §>2§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§^z§);
         §>2§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§>f§);
         §>2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>2§.stage.addEventListener(Event.MOUSE_LEAVE,this.§^@§);
         this.§ ;§ = 0;
         this.§!!4§ = 0;
         var _loc1_:String = §`!5§.§%u§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §>2§.setText(_loc1_,"TextField_Version_Number");
         §>2§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §6r§() : void
      {
         AngryBirdsFP11.§6r§();
      }
      
      private function §?!N§(param1:MouseEvent) : Boolean
      {
         if(§>2§.stage.mouseX < §>2§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §?y§(param1:MouseEvent) : void
      {
         if(this.§7!$§)
         {
            if(!this.§?!N§(param1))
            {
               this.§7!$§ = false;
               return;
            }
            if(this.§1!=§ - §>2§.stage.mouseY > 0)
            {
               this.§ ;§ = this.§1!=§ - §>2§.stage.mouseY;
               this.§1!=§ = §>2§.stage.mouseY;
            }
            else if(this.§1!=§ - §>2§.stage.mouseY < 0)
            {
               this.§ ;§ = this.§1!=§ - §>2§.stage.mouseY;
               this.§1!=§ = §>2§.stage.mouseY;
            }
         }
      }
      
      private function §^z§(param1:MouseEvent) : void
      {
         if(this.§?!N§(param1))
         {
            if(!§5!+§.isPaused)
            {
               this.§7!$§ = true;
               this.§1!=§ = §>2§.stage.mouseY;
            }
         }
      }
      
      private function §>f§(param1:MouseEvent) : void
      {
         this.§7!$§ = false;
      }
      
      private function §^@§(param1:Event) : void
      {
         this.§7!$§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§?!N§(param1))
         {
            if(param1.delta < 0)
            {
               this.§!!4§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§!!4§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§5!+§.isPaused)
         {
            §5!+§.controller.update(param1);
            (§>2§.getItemByName("Container_Credits") as §9V§).setVisibility(true);
            this.readyToShowCredits();
            (§>2§.getItemByName("Container_Credits") as §9V§).y = Math.floor(-this.§&!H§);
            this.§2!F§(param1);
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §2!F§(param1:Number) : void
      {
         this.§&!H§ += this.§ ;§;
         this.§&!H§ += this.§!!4§;
         if(!this.§7!$§ && Math.abs(this.§!!4§) < param1 / 15)
         {
            this.§&!H§ += param1 / 15;
         }
         if(this.§&!H§ < -AngryBirdsFP11.§0O§ * §5!+§.§?!#§)
         {
            this.§&!H§ = this.§3c§;
         }
         else if(this.§&!H§ > this.§3c§)
         {
            this.§&!H§ = -AngryBirdsFP11.§0O§ * §5!+§.§?!#§;
         }
         if(!this.§7!$§)
         {
            this.§ ;§ *= 0.9;
            this.§!!4§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §>2§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?y§);
         §>2§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^z§);
         §>2§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§>f§);
         §>2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>2§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§^@§);
         (§>2§.getItemByName("Container_Credits") as §9V§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §6!F§.§"Z§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
   }
}
