package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §;<§.§'B§;
   import §=!7§.§6W§;
   import §@y§.§0=§;
   import §]§.§[!m§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<K§ extends §'B§
   {
      
      public static const §%!Q§:String = "CreditsState";
       
      
      protected var §6"=§:§[!m§ = null;
      
      private var §&"7§:Boolean;
      
      private var §1F§:Number;
      
      private var §#&§:Number;
      
      private var §`N§:Number;
      
      private var §0!v§:Number;
      
      private var §'F§:Number;
      
      public function §<K§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_Credits[0]);
         this.§6"=§ = new §[!m§(§'_§.§=M§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'F§ = (§`!v§.getItemByName("Container_Credits") as §6W§).height + §'_§.§7$§ * §'_§.§<e§;
         this.§0!v§ = -this.§'F§;
         §'_§.§=M§.§'"@§(true);
         §'_§.resume();
         §'_§.§^`§(this.§6"=§);
         this.§6"=§.init();
         this.§do §();
         §`!v§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
         §`!v§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
         §`!v§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
         §`!v§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`!v§.stage.addEventListener(Event.MOUSE_LEAVE,this.§%!3§);
         this.§1F§ = 0;
         this.§#&§ = 0;
         var _loc1_:String = §,"0§.§+9§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.§9!S§(_loc1_,_loc2_);
      }
      
      protected function §9!S§(param1:String, param2:String) : void
      {
         §`!v§.setText(param1,"TextField_Version_Number");
         §`!v§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function §do §() : void
      {
         AngryBirdsFP11.§do §();
      }
      
      private function §^!T§(param1:MouseEvent) : Boolean
      {
         if(§`!v§.stage.mouseX < §`!v§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §8x§(param1:MouseEvent) : void
      {
         if(this.§&"7§)
         {
            if(!this.§^!T§(param1))
            {
               this.§&"7§ = false;
               return;
            }
            if(this.§`N§ - §`!v§.stage.mouseY > 0)
            {
               this.§1F§ = this.§`N§ - §`!v§.stage.mouseY;
               this.§`N§ = §`!v§.stage.mouseY;
            }
            else if(this.§`N§ - §`!v§.stage.mouseY < 0)
            {
               this.§1F§ = this.§`N§ - §`!v§.stage.mouseY;
               this.§`N§ = §`!v§.stage.mouseY;
            }
         }
      }
      
      private function §=c§(param1:MouseEvent) : void
      {
         if(this.§^!T§(param1))
         {
            if(!§'_§.isPaused)
            {
               this.§&"7§ = true;
               this.§`N§ = §`!v§.stage.mouseY;
            }
         }
      }
      
      private function §8!R§(param1:MouseEvent) : void
      {
         this.§&"7§ = false;
      }
      
      private function §%!3§(param1:Event) : void
      {
         this.§&"7§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§^!T§(param1))
         {
            if(param1.delta < 0)
            {
               this.§#&§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§#&§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§'_§.isPaused)
         {
            §'_§.§=R§.update(param1);
            (§`!v§.getItemByName("Container_Credits") as §6W§).setVisibility(true);
            this.§2,§();
            (§`!v§.getItemByName("Container_Credits") as §6W§).y = Math.floor(-this.§0!v§);
            this.§+"'§(param1);
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      protected function §2,§() : void
      {
      }
      
      private function §+"'§(param1:Number) : void
      {
         this.§0!v§ += this.§1F§;
         this.§0!v§ += this.§#&§;
         if(!this.§&"7§ && Math.abs(this.§#&§) < param1 / 15)
         {
            this.§0!v§ += param1 / 15;
         }
         if(this.§0!v§ < -AngryBirdsFP11.§+#§ * §'_§.§<e§)
         {
            this.§0!v§ = this.§'F§;
         }
         else if(this.§0!v§ > this.§'F§)
         {
            this.§0!v§ = -AngryBirdsFP11.§+#§ * §'_§.§<e§;
         }
         if(!this.§&"7§)
         {
            this.§1F§ *= 0.9;
            this.§#&§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §`!v§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§8x§);
         §`!v§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=c§);
         §`!v§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§8!R§);
         §`!v§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`!v§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§%!3§);
         (§`!v§.getItemByName("Container_Credits") as §6W§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §7!X§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
   }
}
