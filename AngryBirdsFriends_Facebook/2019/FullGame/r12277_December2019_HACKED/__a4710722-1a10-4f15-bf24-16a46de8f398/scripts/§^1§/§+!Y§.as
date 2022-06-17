package §^1§
{
   import § #_§.§?!>§;
   import §#"3§.§4!h§;
   import §+!n§.§+!p§;
   import §0!>§.§2"5§;
   import §2$;§.§!"e§;
   import §<8§.§8!g§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §+!Y§ extends §';§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §+#1§:§2"5§ = null;
      
      private var §^>§:Boolean;
      
      private var §<!Q§:Number;
      
      private var §2#N§:Number;
      
      private var §+"B§:Number;
      
      private var §%!b§:Number;
      
      private var §`$$§:Number;
      
      public function §+!Y§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_Credits[0]);
         this.§+#1§ = new §2"5§(§+!p§.§`?§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§^>§ = false;
         this.§`$$§ = (§@!D§.getItemByName("Container_Credits") as §!"e§).height + §+!p§.§%!"§ * §+!p§.§"#m§;
         this.§%!b§ = -this.§`$$§;
         this.activateLevelEngine();
         §@!D§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§["1§);
         §@!D§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §@!D§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §@!D§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@!D§.stage.addEventListener(Event.MOUSE_LEAVE,this.§9"1§);
         this.§<!Q§ = 0;
         this.§2#N§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §+!p§.§`?§.setVisible(true);
         §+!p§.resume();
         §+!p§.setController(this.§+#1§);
         this.§+#1§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §4!h§.§<"6§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §@!D§.setText(_loc1_,"TextField_Version_Number");
         §@!D§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §8"U§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§&m§())
         {
            if(§@!D§.stage.mouseX < §@!D§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§@!D§.stage.mouseX < §@!D§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §["1§(param1:MouseEvent) : void
      {
         if(this.§^>§)
         {
            if(!this.§8"U§(param1))
            {
               this.§^>§ = false;
               return;
            }
            if(this.§+"B§ - §@!D§.stage.mouseY > 0)
            {
               this.§<!Q§ = this.§+"B§ - §@!D§.stage.mouseY;
               this.§+"B§ = §@!D§.stage.mouseY;
            }
            else if(this.§+"B§ - §@!D§.stage.mouseY < 0)
            {
               this.§<!Q§ = this.§+"B§ - §@!D§.stage.mouseY;
               this.§+"B§ = §@!D§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§8"U§(param1))
         {
            if(!§+!p§.isPaused)
            {
               this.§^>§ = true;
               this.§+"B§ = §@!D§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§^>§ = false;
      }
      
      private function §9"1§(param1:Event) : void
      {
         this.§^>§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§+!p§.isPaused)
         {
            if(this.§8"U§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§2#N§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§2#N§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§+!p§.isPaused)
         {
            §+!p§.§-#W§.update(param1);
            (§@!D§.getItemByName("Container_Credits") as §!"e§).setVisibility(true);
            this.readyToShowCredits();
            (§@!D§.getItemByName("Container_Credits") as §!"e§).y = Math.floor(-this.§%!b§);
            this.§4o§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §4o§(param1:Number) : void
      {
         this.§%!b§ += this.§<!Q§;
         this.§%!b§ += this.§2#N§;
         if(!this.§^>§ && Math.abs(this.§2#N§) < param1 / 15)
         {
            this.§%!b§ += param1 / 15;
         }
         if(this.§%!b§ < -AngryBirdsBase.screenHeight * §+!p§.§"#m§)
         {
            this.§%!b§ = this.§`$$§;
         }
         else if(this.§%!b§ > this.§`$$§)
         {
            this.§%!b§ = -AngryBirdsBase.screenHeight * §+!p§.§"#m§;
         }
         if(!this.§^>§)
         {
            this.§<!Q§ *= 0.9;
            this.§2#N§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §@!D§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§["1§);
         §@!D§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §@!D§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §@!D§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@!D§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§9"1§);
         (§@!D§.getItemByName("Container_Credits") as §!"e§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §%!?§(§=!w§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
   }
}
