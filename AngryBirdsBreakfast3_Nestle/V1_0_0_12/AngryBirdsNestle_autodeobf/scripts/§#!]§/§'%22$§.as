package §#!]§
{
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §8!$§.§?p§;
   import §>T§.§3!V§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'"$§ extends §3_§
   {
      
      public static const §]!y§:String = "CreditsState";
       
      
      protected var §^!b§:§3!V§ = null;
      
      private var §!l§:Boolean;
      
      private var §8F§:Number;
      
      private var §,!S§:Number;
      
      private var §4"2§:Number;
      
      private var §%b§:Number;
      
      private var §"_§:Number;
      
      public function §'"$§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_Credits[0]);
         this.§^!b§ = new §3!V§(§`i§.§&!L§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!l§ = false;
         this.§"_§ = (§4!q§.getItemByName("Container_Credits") as §%n§).height + §`i§.§1k§ * §`i§.§%!a§;
         this.§%b§ = -this.§"_§;
         this.activateLevelEngine();
         §4!q§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§<!P§);
         §4!q§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§7j§);
         §4!q§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§?R§);
         §4!q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4!q§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3T§);
         this.§8F§ = 0;
         this.§,!S§ = 0;
         this.§27§();
      }
      
      protected function activateLevelEngine() : void
      {
         §`i§.§&!L§.§2!J§(true);
         §`i§.resume();
         §`i§.setController(this.§^!b§);
         this.§^!b§.init();
         §-!2§.§7O§.§>q§();
      }
      
      protected function §27§() : void
      {
         var _loc1_:String = §?p§.§"!'§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §4!q§.setText(_loc1_,"TextField_Version_Number");
         §4!q§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §<,§(param1:MouseEvent) : Boolean
      {
         if(§4!q§.stage.mouseX < §4!q§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §<!P§(param1:MouseEvent) : void
      {
         if(this.§!l§)
         {
            if(!this.§<,§(param1))
            {
               this.§!l§ = false;
               return;
            }
            if(this.§4"2§ - §4!q§.stage.mouseY > 0)
            {
               this.§8F§ = this.§4"2§ - §4!q§.stage.mouseY;
               this.§4"2§ = §4!q§.stage.mouseY;
            }
            else if(this.§4"2§ - §4!q§.stage.mouseY < 0)
            {
               this.§8F§ = this.§4"2§ - §4!q§.stage.mouseY;
               this.§4"2§ = §4!q§.stage.mouseY;
            }
         }
      }
      
      private function §7j§(param1:MouseEvent) : void
      {
         if(this.§<,§(param1))
         {
            if(!§`i§.isPaused)
            {
               this.§!l§ = true;
               this.§4"2§ = §4!q§.stage.mouseY;
            }
         }
      }
      
      private function §?R§(param1:MouseEvent) : void
      {
         this.§!l§ = false;
      }
      
      private function §3T§(param1:Event) : void
      {
         this.§!l§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§<,§(param1))
         {
            if(param1.delta < 0)
            {
               this.§,!S§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§,!S§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§`i§.isPaused)
         {
            §`i§.controller.update(param1);
            (§4!q§.getItemByName("Container_Credits") as §%n§).setVisibility(true);
            this.§0U§();
            (§4!q§.getItemByName("Container_Credits") as §%n§).y = Math.floor(-this.§%b§);
            this.§7-§(param1);
         }
      }
      
      protected function §0U§() : void
      {
      }
      
      private function §7-§(param1:Number) : void
      {
         this.§%b§ += this.§8F§;
         this.§%b§ += this.§,!S§;
         if(!this.§!l§ && Math.abs(this.§,!S§) < param1 / 15)
         {
            this.§%b§ += param1 / 15;
         }
         if(this.§%b§ < -§-!2§.§^s§ * §`i§.§%!a§)
         {
            this.§%b§ = this.§"_§;
         }
         else if(this.§%b§ > this.§"_§)
         {
            this.§%b§ = -§-!2§.§^s§ * §`i§.§%!a§;
         }
         if(!this.§!l§)
         {
            this.§8F§ *= 0.9;
            this.§,!S§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §4!q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§<!P§);
         §4!q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7j§);
         §4!q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§?R§);
         §4!q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4!q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3T§);
         (§4!q§.getItemByName("Container_Credits") as §%n§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §]a§(§@!t§.§]!y§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
   }
}
