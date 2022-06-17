package §3=§
{
   import §!L§.§""2§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§<c§;
   import §9#K§.§=#f§;
   import §=!2§.§%"T§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §1U§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §6U§:§""2§ = null;
      
      private var §]"-§:Boolean;
      
      private var §4[§:Number;
      
      private var §#!8§:Number;
      
      private var §3B§:Number;
      
      private var §;!m§:Number;
      
      private var §"6§:Number;
      
      public function §1U§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_Credits[0]);
         this.§6U§ = new §""2§(§%"T§.§;`§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§]"-§ = false;
         this.§"6§ = (§<"`§.getItemByName("Container_Credits") as §<c§).height + §%"T§.§01§ * §%"T§.§"x§;
         this.§;!m§ = -this.§"6§;
         this.activateLevelEngine();
         §<"`§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§''§);
         §<"`§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §<"`§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §<"`§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<"`§.stage.addEventListener(Event.MOUSE_LEAVE,this.§#!P§);
         this.§4[§ = 0;
         this.§#!8§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §%"T§.§;`§.setVisible(true);
         §%"T§.resume();
         §%"T§.setController(this.§6U§);
         this.§6U§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §=#f§.§;G§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §<"`§.setText(_loc1_,"TextField_Version_Number");
         §<"`§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §%!&§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§?$9§())
         {
            if(§<"`§.stage.mouseX < §<"`§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§<"`§.stage.mouseX < §<"`§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §''§(param1:MouseEvent) : void
      {
         if(this.§]"-§)
         {
            if(!this.§%!&§(param1))
            {
               this.§]"-§ = false;
               return;
            }
            if(this.§3B§ - §<"`§.stage.mouseY > 0)
            {
               this.§4[§ = this.§3B§ - §<"`§.stage.mouseY;
               this.§3B§ = §<"`§.stage.mouseY;
            }
            else if(this.§3B§ - §<"`§.stage.mouseY < 0)
            {
               this.§4[§ = this.§3B§ - §<"`§.stage.mouseY;
               this.§3B§ = §<"`§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§%!&§(param1))
         {
            if(!§%"T§.isPaused)
            {
               this.§]"-§ = true;
               this.§3B§ = §<"`§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§]"-§ = false;
      }
      
      private function §#!P§(param1:Event) : void
      {
         this.§]"-§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§%"T§.isPaused)
         {
            if(this.§%!&§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§#!8§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§#!8§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§%"T§.isPaused)
         {
            §%"T§.§+"M§.update(param1);
            (§<"`§.getItemByName("Container_Credits") as §<c§).setVisibility(true);
            this.readyToShowCredits();
            (§<"`§.getItemByName("Container_Credits") as §<c§).y = Math.floor(-this.§;!m§);
            this.§?$3§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §?$3§(param1:Number) : void
      {
         this.§;!m§ += this.§4[§;
         this.§;!m§ += this.§#!8§;
         if(!this.§]"-§ && Math.abs(this.§#!8§) < param1 / 15)
         {
            this.§;!m§ += param1 / 15;
         }
         if(this.§;!m§ < -AngryBirdsBase.screenHeight * §%"T§.§"x§)
         {
            this.§;!m§ = this.§"6§;
         }
         else if(this.§;!m§ > this.§"6§)
         {
            this.§;!m§ = -AngryBirdsBase.screenHeight * §%"T§.§"x§;
         }
         if(!this.§]"-§)
         {
            this.§4[§ *= 0.9;
            this.§#!8§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §<"`§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§''§);
         §<"`§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §<"`§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §<"`§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §<"`§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§#!P§);
         (§<"`§.getItemByName("Container_Credits") as §<c§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §%D§(§4#3§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§3'§();
         }
      }
   }
}
