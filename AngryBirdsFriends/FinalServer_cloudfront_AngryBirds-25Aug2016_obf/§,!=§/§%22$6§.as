package §,!=§
{
   import §!x§.§4"d§;
   import §#v§.§#!?§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §'z§.§<"4§;
   import §6"r§.§0"<§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §"$6§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §#;§:§<"4§ = null;
      
      private var §9""§:Boolean;
      
      private var §9!5§:Number;
      
      private var §,"g§:Number;
      
      private var §6"6§:Number;
      
      private var §'#t§:Number;
      
      private var §2#-§:Number;
      
      public function §"$6§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_Credits[0]);
         this.§#;§ = new §<"4§(§>"$§.§3#'§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§9""§ = false;
         this.§2#-§ = (§!$§.getItemByName("Container_Credits") as §0"<§).height + §>"$§.§&#-§ * §>"$§.§`G§;
         this.§'#t§ = -this.§2#-§;
         this.activateLevelEngine();
         §!$§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;"B§);
         §!$§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §!$§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §!$§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!$§.stage.addEventListener(Event.MOUSE_LEAVE,this.§&!a§);
         this.§9!5§ = 0;
         this.§,"g§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §>"$§.§3#'§.§5'§(true);
         §>"$§.resume();
         §>"$§.setController(this.§#;§);
         this.§#;§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §4"d§.§>#k§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §!$§.setText(_loc1_,"TextField_Version_Number");
         §!$§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §,">§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§5#N§())
         {
            if(§!$§.stage.mouseX < §!$§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§!$§.stage.mouseX < §!$§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §;"B§(param1:MouseEvent) : void
      {
         if(this.§9""§)
         {
            if(!this.§,">§(param1))
            {
               this.§9""§ = false;
               return;
            }
            if(this.§6"6§ - §!$§.stage.mouseY > 0)
            {
               this.§9!5§ = this.§6"6§ - §!$§.stage.mouseY;
               this.§6"6§ = §!$§.stage.mouseY;
            }
            else if(this.§6"6§ - §!$§.stage.mouseY < 0)
            {
               this.§9!5§ = this.§6"6§ - §!$§.stage.mouseY;
               this.§6"6§ = §!$§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§,">§(param1))
         {
            if(!§>"$§.isPaused)
            {
               this.§9""§ = true;
               this.§6"6§ = §!$§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§9""§ = false;
      }
      
      private function §&!a§(param1:Event) : void
      {
         this.§9""§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§>"$§.isPaused)
         {
            if(this.§,">§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§,"g§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§,"g§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§>"$§.isPaused)
         {
            §>"$§.§#0§.update(param1);
            (§!$§.getItemByName("Container_Credits") as §0"<§).setVisibility(true);
            this.readyToShowCredits();
            (§!$§.getItemByName("Container_Credits") as §0"<§).y = Math.floor(-this.§'#t§);
            this.§'u§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §'u§(param1:Number) : void
      {
         this.§'#t§ += this.§9!5§;
         this.§'#t§ += this.§,"g§;
         if(!this.§9""§ && Math.abs(this.§,"g§) < param1 / 15)
         {
            this.§'#t§ += param1 / 15;
         }
         if(this.§'#t§ < -AngryBirdsBase.screenHeight * §>"$§.§`G§)
         {
            this.§'#t§ = this.§2#-§;
         }
         else if(this.§'#t§ > this.§2#-§)
         {
            this.§'#t§ = -AngryBirdsBase.screenHeight * §>"$§.§`G§;
         }
         if(!this.§9""§)
         {
            this.§9!5§ *= 0.9;
            this.§,"g§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §!$§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;"B§);
         §!$§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §!$§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §!$§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!$§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§&!a§);
         (§!$§.getItemByName("Container_Credits") as §0"<§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §7P§(§;P§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
   }
}
