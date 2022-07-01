package §]!V§
{
   import § !Q§.§"D§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §<!0§.§'!%§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import §^x§.§!b§;
   import com.angrybirds.§#Z§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §5"'§ extends §>!9§
   {
      
      public static const §+a§:String = "CreditsState";
       
      
      protected var §6!L§:§!b§ = null;
      
      private var §7!E§:Boolean;
      
      private var §]!y§:Number;
      
      private var §,!0§:Number;
      
      private var §[!#§:Number;
      
      private var § !0§:Number;
      
      private var §2g§:Number;
      
      public function §5"'§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_Credits[0]);
         this.§6!L§ = new §!b§(§#Z§.§'0§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7!E§ = false;
         this.§2g§ = (§5+§.getItemByName("Container_Credits") as §]"4§).height + §#Z§.§1<§ * §#Z§.§]w§;
         this.§ !0§ = -this.§2g§;
         this.activateLevelEngine();
         §5+§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<N§);
         §5+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!"-§);
         §5+§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§9#§);
         §5+§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5+§.stage.addEventListener(Event.MOUSE_LEAVE,this.§in§);
         this.§]!y§ = 0;
         this.§,!0§ = 0;
         this.§9!<§();
      }
      
      protected function activateLevelEngine() : void
      {
         §#Z§.§'0§.§#o§(true);
         §#Z§.resume();
         §#Z§.setController(this.§6!L§);
         this.§6!L§.init();
         §,!X§.§>!G§.§ " §();
      }
      
      protected function §9!<§() : void
      {
         var _loc1_:String = §"D§.§]R§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §5+§.setText(_loc1_,"TextField_Version_Number");
         §5+§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §!H§(param1:MouseEvent) : Boolean
      {
         if(§5+§.stage.mouseX < §5+§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §<N§(param1:MouseEvent) : void
      {
         if(this.§7!E§)
         {
            if(!this.§!H§(param1))
            {
               this.§7!E§ = false;
               return;
            }
            if(this.§[!#§ - §5+§.stage.mouseY > 0)
            {
               this.§]!y§ = this.§[!#§ - §5+§.stage.mouseY;
               this.§[!#§ = §5+§.stage.mouseY;
            }
            else if(this.§[!#§ - §5+§.stage.mouseY < 0)
            {
               this.§]!y§ = this.§[!#§ - §5+§.stage.mouseY;
               this.§[!#§ = §5+§.stage.mouseY;
            }
         }
      }
      
      private function §!"-§(param1:MouseEvent) : void
      {
         if(this.§!H§(param1))
         {
            if(!§#Z§.isPaused)
            {
               this.§7!E§ = true;
               this.§[!#§ = §5+§.stage.mouseY;
            }
         }
      }
      
      private function §9#§(param1:MouseEvent) : void
      {
         this.§7!E§ = false;
      }
      
      private function §in§(param1:Event) : void
      {
         this.§7!E§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§!H§(param1))
         {
            if(param1.delta < 0)
            {
               this.§,!0§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§,!0§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§#Z§.isPaused)
         {
            §#Z§.controller.update(param1);
            (§5+§.getItemByName("Container_Credits") as §]"4§).setVisibility(true);
            this.§3!q§();
            (§5+§.getItemByName("Container_Credits") as §]"4§).y = Math.floor(-this.§ !0§);
            this.§="#§(param1);
         }
      }
      
      protected function §3!q§() : void
      {
      }
      
      private function §="#§(param1:Number) : void
      {
         this.§ !0§ += this.§]!y§;
         this.§ !0§ += this.§,!0§;
         if(!this.§7!E§ && Math.abs(this.§,!0§) < param1 / 15)
         {
            this.§ !0§ += param1 / 15;
         }
         if(this.§ !0§ < -§,!X§.§^!Q§ * §#Z§.§]w§)
         {
            this.§ !0§ = this.§2g§;
         }
         else if(this.§ !0§ > this.§2g§)
         {
            this.§ !0§ = -§,!X§.§^!Q§ * §#Z§.§]w§;
         }
         if(!this.§7!E§)
         {
            this.§]!y§ *= 0.9;
            this.§,!0§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §5+§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<N§);
         §5+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!"-§);
         §5+§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§9#§);
         §5+§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §5+§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§in§);
         (§5+§.getItemByName("Container_Credits") as §]"4§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §8!`§(§`w§.§+a§);
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
   }
}
