package § C§
{
   import §!F§.§>J§;
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §;8§.§3f§;
   import §[v§.§&F§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §%H§ extends §-§
   {
      
      public static const §?B§:String = "CreditsState";
       
      
      protected var §6!6§:§>J§ = null;
      
      private var §@-§:Boolean;
      
      private var §&M§:Number;
      
      private var §extends§:Number;
      
      private var §2t§:Number;
      
      private var §5`§:Number;
      
      private var §3!3§:Number;
      
      public function §%H§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_Credits[0]);
         this.§6!6§ = new §>J§(§[o§.§='§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!3§ = (§,R§.getItemByName("Container_Credits") as §&F§).height + §[o§.§for§ * §[o§.§>k§;
         this.§5`§ = -this.§3!3§;
         §[o§.§='§.§"3§(true);
         §[o§.resume();
         §[o§.§%!<§(this.§6!6§);
         this.§6!6§.init();
         AngryBirdsFP11.§]!"§();
         §,R§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §,R§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!1§);
         §,R§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§0c§);
         §,R§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §,R§.stage.addEventListener(Event.MOUSE_LEAVE,this.§6!G§);
         this.§&M§ = 0;
         this.§extends§ = 0;
         var _loc1_:String = §3f§.§7f§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §,R§.setText(_loc1_,"TextField_Version_Number");
         §,R§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §+g§(param1:MouseEvent) : Boolean
      {
         if(§,R§.stage.mouseX < §,R§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§@-§)
         {
            if(!this.§+g§(param1))
            {
               this.§@-§ = false;
               return;
            }
            if(this.§2t§ - §,R§.stage.mouseY > 0)
            {
               this.§&M§ = this.§2t§ - §,R§.stage.mouseY;
               this.§2t§ = §,R§.stage.mouseY;
            }
            else if(this.§2t§ - §,R§.stage.mouseY < 0)
            {
               this.§&M§ = this.§2t§ - §,R§.stage.mouseY;
               this.§2t§ = §,R§.stage.mouseY;
            }
         }
      }
      
      private function §!1§(param1:MouseEvent) : void
      {
         if(this.§+g§(param1))
         {
            if(!§[o§.§'Z§)
            {
               this.§@-§ = true;
               this.§2t§ = §,R§.stage.mouseY;
            }
         }
      }
      
      private function §0c§(param1:MouseEvent) : void
      {
         this.§@-§ = false;
      }
      
      private function §6!G§(param1:Event) : void
      {
         this.§@-§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§+g§(param1))
         {
            if(param1.delta < 0)
            {
               this.§extends§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§extends§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§[o§.§'Z§)
         {
            §[o§.controller.update(param1);
            (§,R§.getItemByName("Container_Credits") as §&F§).setVisibility(true);
            this.readyToShowCredits();
            (§,R§.getItemByName("Container_Credits") as §&F§).y = Math.floor(-this.§5`§);
            this.§"h§(param1);
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §"h§(param1:Number) : void
      {
         this.§5`§ += this.§&M§;
         this.§5`§ += this.§extends§;
         if(!this.§@-§ && Math.abs(this.§extends§) < param1 / 15)
         {
            this.§5`§ += param1 / 15;
         }
         if(this.§5`§ < -AngryBirdsFP11.screenHeight * §[o§.§>k§)
         {
            this.§5`§ = this.§3!3§;
         }
         else if(this.§5`§ > this.§3!3§)
         {
            this.§5`§ = -AngryBirdsFP11.screenHeight * §[o§.§>k§;
         }
         if(!this.§@-§)
         {
            this.§&M§ *= 0.9;
            this.§extends§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §,R§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §,R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!1§);
         §,R§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§0c§);
         §,R§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §,R§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§6!G§);
         (§,R§.getItemByName("Container_Credits") as §&F§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §,!?§.§?B§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
   }
}
