package §1!F§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §5#§.§]]§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §?!M§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §7!D§:§]]§ = null;
      
      private var §8!I§:Boolean;
      
      private var §"!9§:Number;
      
      private var §?!j§:Number;
      
      private var §2&§:Number;
      
      private var §&!]§:Number;
      
      private var §2N§:Number;
      
      public function §?!M§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_Credits[0]);
         this.§7!D§ = new §]]§(§'!V§.§1!2§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2N§ = (§+!$§.getItemByName("Container_Credits") as §[!s§).height + §'!V§.§6k§ * §'!V§.§'A§;
         this.§&!]§ = -this.§2N§;
         §'!V§.§1!2§.§-I§(true);
         §'!V§.resume();
         §'!V§.§>_§(this.§7!D§);
         this.§7!D§.init();
         AngryBirdsFP11.§?!7§();
         §+!$§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §+!$§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §+!$§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §+!$§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!$§.stage.addEventListener(Event.MOUSE_LEAVE,this.§4E§);
         this.§"!9§ = 0;
         this.§?!j§ = 0;
         var _loc1_:String = §`![§.§38§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §+!$§.setText(_loc1_,"TextField_Version_Number");
         §+!$§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §!!`§(param1:MouseEvent) : Boolean
      {
         if(§+!$§.stage.mouseX < §+!$§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§8!I§)
         {
            if(!this.§!!`§(param1))
            {
               this.§8!I§ = false;
               return;
            }
            if(this.§2&§ - §+!$§.stage.mouseY > 0)
            {
               this.§"!9§ = this.§2&§ - §+!$§.stage.mouseY;
               this.§2&§ = §+!$§.stage.mouseY;
            }
            else if(this.§2&§ - §+!$§.stage.mouseY < 0)
            {
               this.§"!9§ = this.§2&§ - §+!$§.stage.mouseY;
               this.§2&§ = §+!$§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§!!`§(param1))
         {
            if(!§'!V§.§=!A§)
            {
               this.§8!I§ = true;
               this.§2&§ = §+!$§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§8!I§ = false;
      }
      
      private function §4E§(param1:Event) : void
      {
         this.§8!I§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§!!`§(param1))
         {
            if(param1.delta < 0)
            {
               this.§?!j§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§?!j§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§'!V§.§=!A§)
         {
            §'!V§.§?!G§.update(param1);
            (§+!$§.getItemByName("Container_Credits") as §[!s§).setVisibility(true);
            this.§;,§();
            (§+!$§.getItemByName("Container_Credits") as §[!s§).y = Math.floor(-this.§&!]§);
            this.§]!>§(param1);
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      protected function §;,§() : void
      {
      }
      
      private function §]!>§(param1:Number) : void
      {
         this.§&!]§ += this.§"!9§;
         this.§&!]§ += this.§?!j§;
         if(!this.§8!I§ && Math.abs(this.§?!j§) < param1 / 15)
         {
            this.§&!]§ += param1 / 15;
         }
         if(this.§&!]§ < -AngryBirdsFP11.screenHeight * §'!V§.§'A§)
         {
            this.§&!]§ = this.§2N§;
         }
         else if(this.§&!]§ > this.§2N§)
         {
            this.§&!]§ = -AngryBirdsFP11.screenHeight * §'!V§.§'A§;
         }
         if(!this.§8!I§)
         {
            this.§"!9§ *= 0.9;
            this.§?!j§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §+!$§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §+!$§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §+!$§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §+!$§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!$§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§4E§);
         (§+!$§.getItemByName("Container_Credits") as §[!s§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §#!@§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
   }
}
