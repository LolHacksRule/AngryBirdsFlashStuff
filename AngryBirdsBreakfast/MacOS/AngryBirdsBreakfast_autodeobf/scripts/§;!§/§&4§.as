package §;!§
{
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §^!3§.§9R§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&4§ extends §;" §
   {
      
      public static const §-!q§:String = "CreditsState";
       
      
      protected var §#!7§:§9R§ = null;
      
      private var §@!2§:Boolean;
      
      private var §@a§:Number;
      
      private var §4!0§:Number;
      
      private var §,!M§:Number;
      
      private var §6i§:Number;
      
      private var §>!=§:Number;
      
      public function §&4§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_Credits[0]);
         this.§#!7§ = new §9R§(§&!"§.§1!D§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!2§ = false;
         this.§>!=§ = (§?P§.getItemByName("Container_Credits") as §"!a§).height + §&!"§.§'+§ * §&!"§.§3H§;
         this.§6i§ = -this.§>!=§;
         this.activateLevelEngine();
         §?P§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§&!u§);
         §?P§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!M§);
         §?P§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§84§);
         §?P§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?P§.stage.addEventListener(Event.MOUSE_LEAVE,this.§`""§);
         this.§@a§ = 0;
         this.§4!0§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §&!"§.§1!D§.§"!Q§(true);
         §&!"§.resume();
         §&!"§.setController(this.§#!7§);
         this.§#!7§.init();
         §6!!§.singleton.§"!<§();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §!!'§.§^c§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §?P§.setText(_loc1_,"TextField_Version_Number");
         §?P§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §6;§(param1:MouseEvent) : Boolean
      {
         if(§?P§.stage.mouseX < §?P§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §&!u§(param1:MouseEvent) : void
      {
         if(this.§@!2§)
         {
            if(!this.§6;§(param1))
            {
               this.§@!2§ = false;
               return;
            }
            if(this.§,!M§ - §?P§.stage.mouseY > 0)
            {
               this.§@a§ = this.§,!M§ - §?P§.stage.mouseY;
               this.§,!M§ = §?P§.stage.mouseY;
            }
            else if(this.§,!M§ - §?P§.stage.mouseY < 0)
            {
               this.§@a§ = this.§,!M§ - §?P§.stage.mouseY;
               this.§,!M§ = §?P§.stage.mouseY;
            }
         }
      }
      
      private function §>!M§(param1:MouseEvent) : void
      {
         if(this.§6;§(param1))
         {
            if(!§&!"§.isPaused)
            {
               this.§@!2§ = true;
               this.§,!M§ = §?P§.stage.mouseY;
            }
         }
      }
      
      private function §84§(param1:MouseEvent) : void
      {
         this.§@!2§ = false;
      }
      
      private function §`""§(param1:Event) : void
      {
         this.§@!2§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§6;§(param1))
         {
            if(param1.delta < 0)
            {
               this.§4!0§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§4!0§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§&!"§.isPaused)
         {
            §&!"§.controller.update(param1);
            (§?P§.getItemByName("Container_Credits") as §"!a§).setVisibility(true);
            this.§ 6§();
            (§?P§.getItemByName("Container_Credits") as §"!a§).y = Math.floor(-this.§6i§);
            this.§2M§(param1);
         }
      }
      
      protected function § 6§() : void
      {
      }
      
      private function §2M§(param1:Number) : void
      {
         this.§6i§ += this.§@a§;
         this.§6i§ += this.§4!0§;
         if(!this.§@!2§ && Math.abs(this.§4!0§) < param1 / 15)
         {
            this.§6i§ += param1 / 15;
         }
         if(this.§6i§ < -§6!!§.§=!?§ * §&!"§.§3H§)
         {
            this.§6i§ = this.§>!=§;
         }
         else if(this.§6i§ > this.§>!=§)
         {
            this.§6i§ = -§6!!§.§=!?§ * §&!"§.§3H§;
         }
         if(!this.§@!2§)
         {
            this.§@a§ *= 0.9;
            this.§4!0§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?P§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§&!u§);
         §?P§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!M§);
         §?P§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§84§);
         §?P§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?P§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`""§);
         (§?P§.getItemByName("Container_Credits") as §"!a§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §<f§(§8^§.§-!q§);
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
   }
}
