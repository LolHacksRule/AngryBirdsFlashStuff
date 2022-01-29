package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§[#K§;
   import §=#G§.§]!W§;
   import §]!6§.§6Y§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § !K§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §-@§:§]!W§ = null;
      
      private var §"!B§:Boolean;
      
      private var §>"N§:Number;
      
      private var §[!G§:Number;
      
      private var §4"S§:Number;
      
      private var §,h§:Number;
      
      private var §;";§:Number;
      
      public function § !K§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_Credits[0]);
         this.§-@§ = new §]!W§(§3#U§.§#$4§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"!B§ = false;
         this.§;";§ = (§`!H§.getItemByName("Container_Credits") as §[#K§).height + §3#U§.§2b§ * §3#U§.§>!p§;
         this.§,h§ = -this.§;";§;
         this.activateLevelEngine();
         §`!H§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§+"Y§);
         §`!H§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §`!H§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §`!H§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`!H§.stage.addEventListener(Event.MOUSE_LEAVE,this.§8$'§);
         this.§>"N§ = 0;
         this.§[!G§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §3#U§.§#$4§.§;"?§(true);
         §3#U§.resume();
         §3#U§.setController(this.§-@§);
         this.§-@§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §6Y§.§2!§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §`!H§.setText(_loc1_,"TextField_Version_Number");
         §`!H§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §'!=§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§`$<§())
         {
            if(§`!H§.stage.mouseX < §`!H§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§`!H§.stage.mouseX < §`!H§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §+"Y§(param1:MouseEvent) : void
      {
         if(this.§"!B§)
         {
            if(!this.§'!=§(param1))
            {
               this.§"!B§ = false;
               return;
            }
            if(this.§4"S§ - §`!H§.stage.mouseY > 0)
            {
               this.§>"N§ = this.§4"S§ - §`!H§.stage.mouseY;
               this.§4"S§ = §`!H§.stage.mouseY;
            }
            else if(this.§4"S§ - §`!H§.stage.mouseY < 0)
            {
               this.§>"N§ = this.§4"S§ - §`!H§.stage.mouseY;
               this.§4"S§ = §`!H§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§'!=§(param1))
         {
            if(!§3#U§.isPaused)
            {
               this.§"!B§ = true;
               this.§4"S§ = §`!H§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§"!B§ = false;
      }
      
      private function §8$'§(param1:Event) : void
      {
         this.§"!B§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§3#U§.isPaused)
         {
            if(this.§'!=§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§[!G§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§[!G§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§3#U§.isPaused)
         {
            §3#U§.§8I§.update(param1);
            (§`!H§.getItemByName("Container_Credits") as §[#K§).setVisibility(true);
            this.readyToShowCredits();
            (§`!H§.getItemByName("Container_Credits") as §[#K§).y = Math.floor(-this.§,h§);
            this.§-!v§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §-!v§(param1:Number) : void
      {
         this.§,h§ += this.§>"N§;
         this.§,h§ += this.§[!G§;
         if(!this.§"!B§ && Math.abs(this.§[!G§) < param1 / 15)
         {
            this.§,h§ += param1 / 15;
         }
         if(this.§,h§ < -AngryBirdsBase.screenHeight * §3#U§.§>!p§)
         {
            this.§,h§ = this.§;";§;
         }
         else if(this.§,h§ > this.§;";§)
         {
            this.§,h§ = -AngryBirdsBase.screenHeight * §3#U§.§>!p§;
         }
         if(!this.§"!B§)
         {
            this.§>"N§ *= 0.9;
            this.§[!G§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §`!H§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§+"Y§);
         §`!H§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §`!H§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §`!H§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`!H§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§8$'§);
         (§`!H§.getItemByName("Container_Credits") as §[#K§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §1"h§(§!w§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§5#p§();
         }
      }
   }
}
