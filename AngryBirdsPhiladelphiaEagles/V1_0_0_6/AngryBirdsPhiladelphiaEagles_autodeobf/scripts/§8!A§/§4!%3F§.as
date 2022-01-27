package §8!A§
{
   import §!!0§.§ true§;
   import §&b§.§[F§;
   import §3!O§.§5q§;
   import §3?§.§=b§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §;!!§.§0H§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4!?§ extends §0H§
   {
      
      public static const §2`§:String = "CreditsState";
       
      
      protected var §9!J§:§=b§ = null;
      
      private var §,!6§:Boolean;
      
      private var §^t§:Number;
      
      private var §#!'§:Number;
      
      private var §%!<§:Number;
      
      private var §;!-§:Number;
      
      private var §[1§:Number;
      
      public function §4!?§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_Credits[0]);
         this.§9!J§ = new §=b§(§[F§.§9u§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§[1§ = (§<A§.getItemByName("Container_Credits") as §+a§).height + §[F§.§87§ * §[F§.§9!M§;
         this.§;!-§ = -this.§[1§;
         §[F§.§9u§.§#Q§(true);
         §[F§.resume();
         §[F§.§0D§(this.§9!J§);
         this.§9!J§.init();
         this.§=0§();
         §<A§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[Z§);
         §<A§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=w§);
         §<A§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&7§);
         §<A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<A§.stage.addEventListener(Event.MOUSE_LEAVE,this.§,W§);
         this.§^t§ = 0;
         this.§#!'§ = 0;
         var _loc1_:String = §5q§.§5U§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §<A§.setText(_loc1_,"TextField_Version_Number");
         §<A§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §=0§() : void
      {
         AngryBirdsFP11.§=0§();
      }
      
      private function §5"§(param1:MouseEvent) : Boolean
      {
         if(§<A§.stage.mouseX < §<A§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §[Z§(param1:MouseEvent) : void
      {
         if(this.§,!6§)
         {
            if(!this.§5"§(param1))
            {
               this.§,!6§ = false;
               return;
            }
            if(this.§%!<§ - §<A§.stage.mouseY > 0)
            {
               this.§^t§ = this.§%!<§ - §<A§.stage.mouseY;
               this.§%!<§ = §<A§.stage.mouseY;
            }
            else if(this.§%!<§ - §<A§.stage.mouseY < 0)
            {
               this.§^t§ = this.§%!<§ - §<A§.stage.mouseY;
               this.§%!<§ = §<A§.stage.mouseY;
            }
         }
      }
      
      private function §=w§(param1:MouseEvent) : void
      {
         if(this.§5"§(param1))
         {
            if(!§[F§.isPaused)
            {
               this.§,!6§ = true;
               this.§%!<§ = §<A§.stage.mouseY;
            }
         }
      }
      
      private function §&7§(param1:MouseEvent) : void
      {
         this.§,!6§ = false;
      }
      
      private function §,W§(param1:Event) : void
      {
         this.§,!6§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§5"§(param1))
         {
            if(param1.delta < 0)
            {
               this.§#!'§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§#!'§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§[F§.isPaused)
         {
            §[F§.controller.update(param1);
            (§<A§.getItemByName("Container_Credits") as §+a§).setVisibility(true);
            this.readyToShowCredits();
            (§<A§.getItemByName("Container_Credits") as §+a§).y = Math.floor(-this.§;!-§);
            this.§for§(param1);
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §for§(param1:Number) : void
      {
         this.§;!-§ += this.§^t§;
         this.§;!-§ += this.§#!'§;
         if(!this.§,!6§ && Math.abs(this.§#!'§) < param1 / 15)
         {
            this.§;!-§ += param1 / 15;
         }
         if(this.§;!-§ < -AngryBirdsFP11.§#,§ * §[F§.§9!M§)
         {
            this.§;!-§ = this.§[1§;
         }
         else if(this.§;!-§ > this.§[1§)
         {
            this.§;!-§ = -AngryBirdsFP11.§#,§ * §[F§.§9!M§;
         }
         if(!this.§,!6§)
         {
            this.§^t§ *= 0.9;
            this.§#!'§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §<A§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[Z§);
         §<A§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=w§);
         §<A§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&7§);
         §<A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<A§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§,W§);
         (§<A§.getItemByName("Container_Credits") as §+a§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §-h§.§2`§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
   }
}
