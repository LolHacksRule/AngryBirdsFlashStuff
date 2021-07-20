package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§]$+§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §1#v§.§;!Y§;
   import §4§.§%"o§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'#J§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §^5§:§%"o§ = null;
      
      private var §?#3§:Boolean;
      
      private var §-#&§:Number;
      
      private var §5v§:Number;
      
      private var §1"i§:Number;
      
      private var §4"A§:Number;
      
      private var §3!=§:Number;
      
      public function §'#J§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_Credits[0]);
         this.§^5§ = new §%"o§(§7n§.§6#K§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§?#3§ = false;
         this.§3!=§ = (§[$5§.getItemByName("Container_Credits") as §]$+§).height + §7n§.§##3§ * §7n§.§'#M§;
         this.§4"A§ = -this.§3!=§;
         this.activateLevelEngine();
         §[$5§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^e§);
         §[$5§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §[$5§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §[$5§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[$5§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[!A§);
         this.§-#&§ = 0;
         this.§5v§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §7n§.§6#K§.setVisible(true);
         §7n§.resume();
         §7n§.setController(this.§^5§);
         this.§^5§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §;!Y§.§2#M§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §[$5§.setText(_loc1_,"TextField_Version_Number");
         §[$5§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §9L§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§]#p§())
         {
            if(§[$5§.stage.mouseX < §[$5§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§[$5§.stage.mouseX < §[$5§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §^e§(param1:MouseEvent) : void
      {
         if(this.§?#3§)
         {
            if(!this.§9L§(param1))
            {
               this.§?#3§ = false;
               return;
            }
            if(this.§1"i§ - §[$5§.stage.mouseY > 0)
            {
               this.§-#&§ = this.§1"i§ - §[$5§.stage.mouseY;
               this.§1"i§ = §[$5§.stage.mouseY;
            }
            else if(this.§1"i§ - §[$5§.stage.mouseY < 0)
            {
               this.§-#&§ = this.§1"i§ - §[$5§.stage.mouseY;
               this.§1"i§ = §[$5§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§9L§(param1))
         {
            if(!§7n§.isPaused)
            {
               this.§?#3§ = true;
               this.§1"i§ = §[$5§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§?#3§ = false;
      }
      
      private function §[!A§(param1:Event) : void
      {
         this.§?#3§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§7n§.isPaused)
         {
            if(this.§9L§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§5v§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§5v§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§7n§.isPaused)
         {
            §7n§.§ "'§.update(param1);
            (§[$5§.getItemByName("Container_Credits") as §]$+§).setVisibility(true);
            this.readyToShowCredits();
            (§[$5§.getItemByName("Container_Credits") as §]$+§).y = Math.floor(-this.§4"A§);
            this.§!k§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §!k§(param1:Number) : void
      {
         this.§4"A§ += this.§-#&§;
         this.§4"A§ += this.§5v§;
         if(!this.§?#3§ && Math.abs(this.§5v§) < param1 / 15)
         {
            this.§4"A§ += param1 / 15;
         }
         if(this.§4"A§ < -AngryBirdsBase.screenHeight * §7n§.§'#M§)
         {
            this.§4"A§ = this.§3!=§;
         }
         else if(this.§4"A§ > this.§3!=§)
         {
            this.§4"A§ = -AngryBirdsBase.screenHeight * §7n§.§'#M§;
         }
         if(!this.§?#3§)
         {
            this.§-#&§ *= 0.9;
            this.§5v§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §[$5§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^e§);
         §[$5§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §[$5§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §[$5§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §[$5§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[!A§);
         (§[$5§.getItemByName("Container_Credits") as §]$+§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §1!L§(§,!F§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§1a§();
         }
      }
   }
}
