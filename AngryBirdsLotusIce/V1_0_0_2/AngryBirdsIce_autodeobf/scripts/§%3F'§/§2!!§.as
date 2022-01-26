package §?'§
{
   import §%S§.§,1§;
   import §'m§.§^S§;
   import §7!4§.§+!2§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import §`<§.§,!6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §in§.§%K§;
   
   public class §2!!§ extends §,!6§
   {
      
      public static const §`%§:String = "CreditsState";
       
      
      protected var §&x§:§+!2§ = null;
      
      private var §9!!§:Boolean;
      
      private var §;3§:Number;
      
      private var §2Y§:Number;
      
      private var §3!<§:Number;
      
      private var §+!B§:Number;
      
      private var §2!C§:Number;
      
      public function §2!!§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_Credits[0]);
         this.§&x§ = new §+!2§(§8[§.§import§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!C§ = (§<o§.getItemByName("Container_Credits") as §,1§).height + §8[§.§2G§ * §8[§.§[!'§;
         this.§+!B§ = -this.§2!C§;
         §8[§.§import§.§5q§(true);
         §8[§.resume();
         §8[§.§[r§(this.§&x§);
         this.§&x§.init();
         AngryBirdsFP11.§!!9§();
         §<o§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §<o§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!=§);
         §<o§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§,#§);
         §<o§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<o§.stage.addEventListener(Event.MOUSE_LEAVE,this.§<!A§);
         this.§;3§ = 0;
         this.§2Y§ = 0;
         var _loc1_:String = §^S§.§?!G§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §<o§.setText(_loc1_,"TextField_Version_Number");
         §<o§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §3J§(param1:MouseEvent) : Boolean
      {
         if(§<o§.stage.mouseX < §<o§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§9!!§)
         {
            if(!this.§3J§(param1))
            {
               this.§9!!§ = false;
               return;
            }
            if(this.§3!<§ - §<o§.stage.mouseY > 0)
            {
               this.§;3§ = this.§3!<§ - §<o§.stage.mouseY;
               this.§3!<§ = §<o§.stage.mouseY;
            }
            else if(this.§3!<§ - §<o§.stage.mouseY < 0)
            {
               this.§;3§ = this.§3!<§ - §<o§.stage.mouseY;
               this.§3!<§ = §<o§.stage.mouseY;
            }
         }
      }
      
      private function §!=§(param1:MouseEvent) : void
      {
         if(this.§3J§(param1))
         {
            if(!§8[§.§;!A§)
            {
               this.§9!!§ = true;
               this.§3!<§ = §<o§.stage.mouseY;
            }
         }
      }
      
      private function §,#§(param1:MouseEvent) : void
      {
         this.§9!!§ = false;
      }
      
      private function §<!A§(param1:Event) : void
      {
         this.§9!!§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§3J§(param1))
         {
            if(param1.delta < 0)
            {
               this.§2Y§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§2Y§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§8[§.§;!A§)
         {
            §8[§.controller.update(param1);
            (§<o§.getItemByName("Container_Credits") as §,1§).setVisibility(true);
            this.readyToShowCredits();
            (§<o§.getItemByName("Container_Credits") as §,1§).y = Math.floor(-this.§+!B§);
            this.§7`§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §7`§(param1:Number) : void
      {
         this.§+!B§ += this.§;3§;
         this.§+!B§ += this.§2Y§;
         if(!this.§9!!§ && Math.abs(this.§2Y§) < param1 / 15)
         {
            this.§+!B§ += param1 / 15;
         }
         if(this.§+!B§ < -AngryBirdsFP11.screenHeight * §8[§.§[!'§)
         {
            this.§+!B§ = this.§2!C§;
         }
         else if(this.§+!B§ > this.§2!C§)
         {
            this.§+!B§ = -AngryBirdsFP11.screenHeight * §8[§.§[!'§;
         }
         if(!this.§9!!§)
         {
            this.§;3§ *= 0.9;
            this.§2Y§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §<o§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §<o§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!=§);
         §<o§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§,#§);
         §<o§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<o§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§<!A§);
         (§<o§.getItemByName("Container_Credits") as §,1§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = § 1§.§`%§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
   }
}
