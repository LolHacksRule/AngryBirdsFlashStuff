package §=!0§
{
   import §!t§.§;1§;
   import §"1§.§3'§;
   import §5F§.§+!O§;
   import §=!1§.§4G§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!D§ extends §-!,§
   {
      
      public static const §@§:String = "CreditsState";
       
      
      protected var §;!K§:§4G§ = null;
      
      private var §1W§:Boolean;
      
      private var §5!K§:Number;
      
      private var §7s§:Number;
      
      private var §+A§:Number;
      
      private var §3N§:Number;
      
      private var §<!E§:Number;
      
      public function §9!D§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_Credits[0]);
         this.§;!K§ = new §4G§(§0!E§.§9!B§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<!E§ = (§;I§.getItemByName("Container_Credits") as §;1§).height + §0!E§.§4U§ * §0!E§.§2!A§;
         this.§3N§ = -this.§<!E§;
         §0!E§.§9!B§.§5!3§(true);
         §0!E§.resume();
         §0!E§.§7!H§(this.§;!K§);
         this.§;!K§.init();
         this.§!!!§();
         §;I§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<8§);
         §;I§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!! §);
         §;I§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ y§);
         §;I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;I§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[! §);
         this.§5!K§ = 0;
         this.§7s§ = 0;
         var _loc1_:String = §3'§.§>4§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §;I§.setText(_loc1_,"TextField_Version_Number");
         §;I§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §!!!§() : void
      {
         AngryBirdsFP11.§!!!§();
      }
      
      private function §+!#§(param1:MouseEvent) : Boolean
      {
         if(§;I§.stage.mouseX < §;I§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §<8§(param1:MouseEvent) : void
      {
         if(this.§1W§)
         {
            if(!this.§+!#§(param1))
            {
               this.§1W§ = false;
               return;
            }
            if(this.§+A§ - §;I§.stage.mouseY > 0)
            {
               this.§5!K§ = this.§+A§ - §;I§.stage.mouseY;
               this.§+A§ = §;I§.stage.mouseY;
            }
            else if(this.§+A§ - §;I§.stage.mouseY < 0)
            {
               this.§5!K§ = this.§+A§ - §;I§.stage.mouseY;
               this.§+A§ = §;I§.stage.mouseY;
            }
         }
      }
      
      private function §!! §(param1:MouseEvent) : void
      {
         if(this.§+!#§(param1))
         {
            if(!§0!E§.isPaused)
            {
               this.§1W§ = true;
               this.§+A§ = §;I§.stage.mouseY;
            }
         }
      }
      
      private function § y§(param1:MouseEvent) : void
      {
         this.§1W§ = false;
      }
      
      private function §[! §(param1:Event) : void
      {
         this.§1W§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§+!#§(param1))
         {
            if(param1.delta < 0)
            {
               this.§7s§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§7s§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§0!E§.isPaused)
         {
            §0!E§.controller.update(param1);
            (§;I§.getItemByName("Container_Credits") as §;1§).setVisibility(true);
            this.readyToShowCredits();
            (§;I§.getItemByName("Container_Credits") as §;1§).y = Math.floor(-this.§3N§);
            this.§#Q§(param1);
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §#Q§(param1:Number) : void
      {
         this.§3N§ += this.§5!K§;
         this.§3N§ += this.§7s§;
         if(!this.§1W§ && Math.abs(this.§7s§) < param1 / 15)
         {
            this.§3N§ += param1 / 15;
         }
         if(this.§3N§ < -AngryBirdsFP11.§3!§ * §0!E§.§2!A§)
         {
            this.§3N§ = this.§<!E§;
         }
         else if(this.§3N§ > this.§<!E§)
         {
            this.§3N§ = -AngryBirdsFP11.§3!§ * §0!E§.§2!A§;
         }
         if(!this.§1W§)
         {
            this.§5!K§ *= 0.9;
            this.§7s§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §;I§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<8§);
         §;I§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!! §);
         §;I§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ y§);
         §;I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;I§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[! §);
         (§;I§.getItemByName("Container_Credits") as §;1§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §"Y§.§@§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
   }
}
