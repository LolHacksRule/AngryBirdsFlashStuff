package §]§
{
   import § "L§.§23§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §6"p§.§^"t§;
   import §6#h§.§0!n§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §[#t§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var § 1§:§0!n§ = null;
      
      private var § #;§:Boolean;
      
      private var §]"#§:Number;
      
      private var §>"q§:Number;
      
      private var §=#!§:Number;
      
      private var §%#J§:Number;
      
      private var §4I§:Number;
      
      public function §[#t§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_Credits[0]);
         this.§ 1§ = new §0!n§(§]$?§.§2#§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ #;§ = false;
         this.§4I§ = (§;!w§.getItemByName("Container_Credits") as §23§).height + §]$?§.§@!=§ * §]$?§.§[#U§;
         this.§%#J§ = -this.§4I§;
         this.activateLevelEngine();
         §;!w§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         §;!w§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §;!w§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §;!w§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;!w§.stage.addEventListener(Event.MOUSE_LEAVE,this.§;A§);
         this.§]"#§ = 0;
         this.§>"q§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §]$?§.§2#§.setVisible(true);
         §]$?§.resume();
         §]$?§.setController(this.§ 1§);
         this.§ 1§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §^"t§.§`!C§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §;!w§.setText(_loc1_,"TextField_Version_Number");
         §;!w§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §%"4§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§ >§())
         {
            if(§;!w§.stage.mouseX < §;!w§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§;!w§.stage.mouseX < §;!w§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §<k§(param1:MouseEvent) : void
      {
         if(this.§ #;§)
         {
            if(!this.§%"4§(param1))
            {
               this.§ #;§ = false;
               return;
            }
            if(this.§=#!§ - §;!w§.stage.mouseY > 0)
            {
               this.§]"#§ = this.§=#!§ - §;!w§.stage.mouseY;
               this.§=#!§ = §;!w§.stage.mouseY;
            }
            else if(this.§=#!§ - §;!w§.stage.mouseY < 0)
            {
               this.§]"#§ = this.§=#!§ - §;!w§.stage.mouseY;
               this.§=#!§ = §;!w§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§%"4§(param1))
         {
            if(!§]$?§.isPaused)
            {
               this.§ #;§ = true;
               this.§=#!§ = §;!w§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§ #;§ = false;
      }
      
      private function §;A§(param1:Event) : void
      {
         this.§ #;§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§]$?§.isPaused)
         {
            if(this.§%"4§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§>"q§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§>"q§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§]$?§.isPaused)
         {
            §]$?§.§;r§.update(param1);
            (§;!w§.getItemByName("Container_Credits") as §23§).setVisibility(true);
            this.readyToShowCredits();
            (§;!w§.getItemByName("Container_Credits") as §23§).y = Math.floor(-this.§%#J§);
            this.§=!O§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §=!O§(param1:Number) : void
      {
         this.§%#J§ += this.§]"#§;
         this.§%#J§ += this.§>"q§;
         if(!this.§ #;§ && Math.abs(this.§>"q§) < param1 / 15)
         {
            this.§%#J§ += param1 / 15;
         }
         if(this.§%#J§ < -AngryBirdsBase.screenHeight * §]$?§.§[#U§)
         {
            this.§%#J§ = this.§4I§;
         }
         else if(this.§%#J§ > this.§4I§)
         {
            this.§%#J§ = -AngryBirdsBase.screenHeight * §]$?§.§[#U§;
         }
         if(!this.§ #;§)
         {
            this.§]"#§ *= 0.9;
            this.§>"q§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §;!w§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<k§);
         §;!w§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §;!w§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §;!w§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;!w§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§;A§);
         (§;!w§.getItemByName("Container_Credits") as §23§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §3#§(§;#D§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§`<§();
         }
      }
   }
}
