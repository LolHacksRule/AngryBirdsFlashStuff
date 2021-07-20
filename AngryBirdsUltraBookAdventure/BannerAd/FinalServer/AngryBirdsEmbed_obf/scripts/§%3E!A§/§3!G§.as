package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§5!<§;
   import §-!F§.§^h§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@!H§.§`L§;
   import §class§.§3C§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3!G§ extends §#!,§
   {
      
      public static const §?x§:String = "CreditsState";
       
      
      protected var §6=§:§`L§ = null;
      
      private var §^?§:Boolean;
      
      private var §+!<§:Number;
      
      private var § 0§:Number;
      
      private var §+z§:Number;
      
      private var §^S§:Number;
      
      private var §2!E§:Number;
      
      public function §3!G§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_Credits[0]);
         this.§6=§ = new §`L§(§[k§.§&@§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!E§ = (§[=§.getItemByName("Container_Credits") as §3C§).height + §[k§.§%i§ * §[k§.§@$§;
         this.§^S§ = -this.§2!E§;
         §[k§.§&@§.§`!G§(true);
         §[k§.resume();
         §[k§.§^L§(this.§6=§);
         this.§6=§.init();
         AngryBirdsFP11.§<!#§();
         §[=§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §[=§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§%!E§);
         §[=§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<!F§);
         §[=§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[=§.stage.addEventListener(Event.MOUSE_LEAVE,this.§7-§);
         this.§+!<§ = 0;
         this.§ 0§ = 0;
         var _loc1_:String = §5!<§.§!!0§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §[=§.setText(_loc1_,"TextField_Version_Number");
         §[=§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §,!;§(param1:MouseEvent) : Boolean
      {
         if(§[=§.stage.mouseX < §[=§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§^?§)
         {
            if(!this.§,!;§(param1))
            {
               this.§^?§ = false;
               return;
            }
            if(this.§+z§ - §[=§.stage.mouseY > 0)
            {
               this.§+!<§ = this.§+z§ - §[=§.stage.mouseY;
               this.§+z§ = §[=§.stage.mouseY;
            }
            else if(this.§+z§ - §[=§.stage.mouseY < 0)
            {
               this.§+!<§ = this.§+z§ - §[=§.stage.mouseY;
               this.§+z§ = §[=§.stage.mouseY;
            }
         }
      }
      
      private function §%!E§(param1:MouseEvent) : void
      {
         if(this.§,!;§(param1))
         {
            if(!§[k§.isPaused)
            {
               this.§^?§ = true;
               this.§+z§ = §[=§.stage.mouseY;
            }
         }
      }
      
      private function §<!F§(param1:MouseEvent) : void
      {
         this.§^?§ = false;
      }
      
      private function §7-§(param1:Event) : void
      {
         this.§^?§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§,!;§(param1))
         {
            if(param1.delta < 0)
            {
               this.§ 0§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§ 0§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§[k§.isPaused)
         {
            §[k§.controller.update(param1);
            (§[=§.getItemByName("Container_Credits") as §3C§).setVisibility(true);
            this.§3z§();
            (§[=§.getItemByName("Container_Credits") as §3C§).y = Math.floor(-this.§^S§);
            this.§?L§(param1);
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      protected function §3z§() : void
      {
      }
      
      private function §?L§(param1:Number) : void
      {
         this.§^S§ += this.§+!<§;
         this.§^S§ += this.§ 0§;
         if(!this.§^?§ && Math.abs(this.§ 0§) < param1 / 15)
         {
            this.§^S§ += param1 / 15;
         }
         if(this.§^S§ < -AngryBirdsFP11.screenHeight * §[k§.§@$§)
         {
            this.§^S§ = this.§2!E§;
         }
         else if(this.§^S§ > this.§2!E§)
         {
            this.§^S§ = -AngryBirdsFP11.screenHeight * §[k§.§@$§;
         }
         if(!this.§^?§)
         {
            this.§+!<§ *= 0.9;
            this.§ 0§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §[=§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §[=§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!E§);
         §[=§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<!F§);
         §[=§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[=§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§7-§);
         (§[=§.getItemByName("Container_Credits") as §3C§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §!!=§.§?x§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
   }
}
