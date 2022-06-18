package §88§
{
   import § `§.§&!?§;
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §&U§.§05§;
   import §1t§.§`!B§;
   import §?!8§.§2>§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §7P§ extends §2q§
   {
      
      public static const §&! §:String = "CreditsState";
       
      
      protected var §8j§:§&!?§ = null;
      
      private var §=!4§:Boolean;
      
      private var §^!M§:Number;
      
      private var §7;§:Number;
      
      private var §"h§:Number;
      
      private var §=^§:Number;
      
      private var §?!B§:Number;
      
      public function §7P§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_Credits[0]);
         this.§8j§ = new §&!?§(§'5§.§^;§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=!4§ = false;
         this.§?!B§ = (§=V§.getItemByName("Container_Credits") as §05§).height + §'5§.§2!M§ * §'5§.§1G§;
         this.§=^§ = -this.§?!B§;
         §'5§.§^;§.§]g§(true);
         §'5§.resume();
         §'5§.§0o§(this.§8j§);
         this.§8j§.init();
         this.§7E§();
         §=V§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §=V§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!>§);
         §=V§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§1! §);
         §=V§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §=V§.stage.addEventListener(Event.MOUSE_LEAVE,this.§7Y§);
         this.§^!M§ = 0;
         this.§7;§ = 0;
         var _loc1_:String = §2>§.§%A§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.§ !7§(_loc1_,_loc2_);
      }
      
      protected function § !7§(param1:String, param2:String) : void
      {
         §=V§.setText(param1,"TextField_Version_Number");
         §=V§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function §7E§() : void
      {
         AngryBirdsFP11.§7E§();
      }
      
      private function §[Y§(param1:MouseEvent) : Boolean
      {
         if(§=V§.stage.mouseX < §=V§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§=!4§)
         {
            if(!this.§[Y§(param1))
            {
               this.§=!4§ = false;
               return;
            }
            if(this.§"h§ - §=V§.stage.mouseY > 0)
            {
               this.§^!M§ = this.§"h§ - §=V§.stage.mouseY;
               this.§"h§ = §=V§.stage.mouseY;
            }
            else if(this.§"h§ - §=V§.stage.mouseY < 0)
            {
               this.§^!M§ = this.§"h§ - §=V§.stage.mouseY;
               this.§"h§ = §=V§.stage.mouseY;
            }
         }
      }
      
      private function §@!>§(param1:MouseEvent) : void
      {
         if(this.§[Y§(param1))
         {
            if(!§'5§.isPaused)
            {
               this.§=!4§ = true;
               this.§"h§ = §=V§.stage.mouseY;
            }
         }
      }
      
      private function §1! §(param1:MouseEvent) : void
      {
         this.§=!4§ = false;
      }
      
      private function §7Y§(param1:Event) : void
      {
         this.§=!4§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§[Y§(param1))
         {
            if(param1.delta < 0)
            {
               this.§7;§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§7;§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§'5§.isPaused)
         {
            §'5§.controller.update(param1);
            (§=V§.getItemByName("Container_Credits") as §05§).setVisibility(true);
            this.§"!$§();
            (§=V§.getItemByName("Container_Credits") as §05§).y = Math.floor(-this.§=^§);
            this.§ 1§(param1);
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      protected function §"!$§() : void
      {
      }
      
      private function § 1§(param1:Number) : void
      {
         this.§=^§ += this.§^!M§;
         this.§=^§ += this.§7;§;
         if(!this.§=!4§ && Math.abs(this.§7;§) < param1 / 15)
         {
            this.§=^§ += param1 / 15;
         }
         if(this.§=^§ < -AngryBirdsFP11.screenHeight * §'5§.§1G§)
         {
            this.§=^§ = this.§?!B§;
         }
         else if(this.§=^§ > this.§?!B§)
         {
            this.§=^§ = -AngryBirdsFP11.screenHeight * §'5§.§1G§;
         }
         if(!this.§=!4§)
         {
            this.§^!M§ *= 0.9;
            this.§7;§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §=V§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §=V§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!>§);
         §=V§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§1! §);
         §=V§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §=V§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§7Y§);
         (§=V§.getItemByName("Container_Credits") as §05§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §'W§.§&! §;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
   }
}
