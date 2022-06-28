package §;H§
{
   import §"x§.§-8§;
   import §+0§.§,!E§;
   import §-%§.§]!K§;
   import §1!E§.§#?§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!3§ extends §,!E§
   {
      
      public static const §"!s§:String = "CreditsState";
       
      
      protected var §+!h§:§]!K§ = null;
      
      private var §&!z§:Boolean;
      
      private var §?!Y§:Number;
      
      private var §#!U§:Number;
      
      private var §%!$§:Number;
      
      private var §?!n§:Number;
      
      private var §?!^§:Number;
      
      public function §9!3§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_Credits[0]);
         this.§+!h§ = new §]!K§(§^!c§.§5!Y§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?!^§ = (§&!m§.getItemByName("Container_Credits") as §#?§).height + §^!c§.§%g§ * §^!c§.§6W§;
         this.§?!n§ = -this.§?!^§;
         §^!c§.§5!Y§.§@!v§(true);
         §^!c§.resume();
         §^!c§.setController(this.§+!h§);
         this.§+!h§.init();
         AngryBirdsFP11.playThemeMusic();
         §&!m§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         §&!m§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !D§);
         §&!m§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§2!x§);
         §&!m§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §&!m§.stage.addEventListener(Event.MOUSE_LEAVE,this.§1!r§);
         this.§?!Y§ = 0;
         this.§#!U§ = 0;
         var _loc1_:String = §-8§.§9g§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §&!m§.setText(_loc1_,"TextField_Version_Number");
         §&!m§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function § use§(param1:MouseEvent) : Boolean
      {
         if(§&!m§.stage.mouseX < §&!m§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §<k§(param1:MouseEvent) : void
      {
         if(this.§&!z§)
         {
            if(!this.§ use§(param1))
            {
               this.§&!z§ = false;
               return;
            }
            if(this.§%!$§ - §&!m§.stage.mouseY > 0)
            {
               this.§?!Y§ = this.§%!$§ - §&!m§.stage.mouseY;
               this.§%!$§ = §&!m§.stage.mouseY;
            }
            else if(this.§%!$§ - §&!m§.stage.mouseY < 0)
            {
               this.§?!Y§ = this.§%!$§ - §&!m§.stage.mouseY;
               this.§%!$§ = §&!m§.stage.mouseY;
            }
         }
      }
      
      private function § !D§(param1:MouseEvent) : void
      {
         if(this.§ use§(param1))
         {
            if(!§^!c§.isPaused)
            {
               this.§&!z§ = true;
               this.§%!$§ = §&!m§.stage.mouseY;
            }
         }
      }
      
      private function §2!x§(param1:MouseEvent) : void
      {
         this.§&!z§ = false;
      }
      
      private function §1!r§(param1:Event) : void
      {
         this.§&!z§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§ use§(param1))
         {
            if(param1.delta < 0)
            {
               this.§#!U§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§#!U§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§^!c§.isPaused)
         {
            §^!c§.§-U§.update(param1);
            (§&!m§.getItemByName("Container_Credits") as §#?§).setVisibility(true);
            this.readyToShowCredits();
            (§&!m§.getItemByName("Container_Credits") as §#?§).y = Math.floor(-this.§?!n§);
            this.§6!Q§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §6!Q§(param1:Number) : void
      {
         this.§?!n§ += this.§?!Y§;
         this.§?!n§ += this.§#!U§;
         if(!this.§&!z§ && Math.abs(this.§#!U§) < param1 / 15)
         {
            this.§?!n§ += param1 / 15;
         }
         if(this.§?!n§ < -AngryBirdsFP11.§]!m§ * §^!c§.§6W§)
         {
            this.§?!n§ = this.§?!^§;
         }
         else if(this.§?!n§ > this.§?!^§)
         {
            this.§?!n§ = -AngryBirdsFP11.§]!m§ * §^!c§.§6W§;
         }
         if(!this.§&!z§)
         {
            this.§?!Y§ *= 0.9;
            this.§#!U§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §&!m§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         §&!m§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !D§);
         §&!m§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§2!x§);
         §&!m§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §&!m§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§1!r§);
         (§&!m§.getItemByName("Container_Credits") as §#?§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §%!R§.§"!s§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
   }
}
