package §`!6§
{
   import §3!!§.§5" §;
   import §;f§.§%!G§;
   import §=!7§.§1!7§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3B§ extends §-!c§
   {
      
      public static const §]O§:String = "CreditsState";
       
      
      protected var § Z§:§%!G§ = null;
      
      private var §7b§:Boolean;
      
      private var §@"+§:Number;
      
      private var §@"%§:Number;
      
      private var §4!4§:Number;
      
      private var §<!o§:Number;
      
      private var §&"+§:Number;
      
      public function §3B§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_Credits[0]);
         this.§ Z§ = new §%!G§(§4!l§.§,!8§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7b§ = false;
         this.§&"+§ = (§!^§.getItemByName("Container_Credits") as §5" §).height + §4!l§.§^!y§ * §4!l§.§@!9§;
         this.§<!o§ = -this.§&"+§;
         this.activateLevelEngine();
         §!^§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§5m§);
         §!^§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§@!i§);
         §!^§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§7q§);
         §!^§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!^§.stage.addEventListener(Event.MOUSE_LEAVE,this.§^!I§);
         this.§@"+§ = 0;
         this.§@"%§ = 0;
         this.§8U§();
      }
      
      protected function activateLevelEngine() : void
      {
         §4!l§.§,!8§.§&!L§(true);
         §4!l§.resume();
         §4!l§.setController(this.§ Z§);
         this.§ Z§.init();
         §&N§.§#Y§.§''§();
      }
      
      protected function §8U§() : void
      {
         var _loc1_:String = §1!7§.§%`§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §!^§.setText(_loc1_,"TextField_Version_Number");
         §!^§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §'%§(param1:MouseEvent) : Boolean
      {
         if(§!^§.stage.mouseX < §!^§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §5m§(param1:MouseEvent) : void
      {
         if(this.§7b§)
         {
            if(!this.§'%§(param1))
            {
               this.§7b§ = false;
               return;
            }
            if(this.§4!4§ - §!^§.stage.mouseY > 0)
            {
               this.§@"+§ = this.§4!4§ - §!^§.stage.mouseY;
               this.§4!4§ = §!^§.stage.mouseY;
            }
            else if(this.§4!4§ - §!^§.stage.mouseY < 0)
            {
               this.§@"+§ = this.§4!4§ - §!^§.stage.mouseY;
               this.§4!4§ = §!^§.stage.mouseY;
            }
         }
      }
      
      private function §@!i§(param1:MouseEvent) : void
      {
         if(this.§'%§(param1))
         {
            if(!§4!l§.isPaused)
            {
               this.§7b§ = true;
               this.§4!4§ = §!^§.stage.mouseY;
            }
         }
      }
      
      private function §7q§(param1:MouseEvent) : void
      {
         this.§7b§ = false;
      }
      
      private function §^!I§(param1:Event) : void
      {
         this.§7b§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§'%§(param1))
         {
            if(param1.delta < 0)
            {
               this.§@"%§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§@"%§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§4!l§.isPaused)
         {
            §4!l§.controller.update(param1);
            (§!^§.getItemByName("Container_Credits") as §5" §).setVisibility(true);
            this.§&!%§();
            (§!^§.getItemByName("Container_Credits") as §5" §).y = Math.floor(-this.§<!o§);
            this.§8X§(param1);
         }
      }
      
      protected function §&!%§() : void
      {
      }
      
      private function §8X§(param1:Number) : void
      {
         this.§<!o§ += this.§@"+§;
         this.§<!o§ += this.§@"%§;
         if(!this.§7b§ && Math.abs(this.§@"%§) < param1 / 15)
         {
            this.§<!o§ += param1 / 15;
         }
         if(this.§<!o§ < -§&N§.§3!O§ * §4!l§.§@!9§)
         {
            this.§<!o§ = this.§&"+§;
         }
         else if(this.§<!o§ > this.§&"+§)
         {
            this.§<!o§ = -§&N§.§3!O§ * §4!l§.§@!9§;
         }
         if(!this.§7b§)
         {
            this.§@"+§ *= 0.9;
            this.§@"%§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §!^§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§5m§);
         §!^§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@!i§);
         §!^§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§7q§);
         §!^§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!^§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§^!I§);
         (§!^§.getItemByName("Container_Credits") as §5" §).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §8=§(§+8§.§]O§);
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
   }
}
