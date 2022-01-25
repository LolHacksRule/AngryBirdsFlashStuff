package §1!c§
{
   import §#!`§.§&!`§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §24§.;
   import §2u§.§,6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §1!Z§ extends §7X§
   {
      
      public static const §8"%§:String = "CreditsState";
       
      
      protected var §9!m§:§&!`§ = null;
      
      private var §6!5§:Boolean;
      
      private var §',§:Number;
      
      private var §;W§:Number;
      
      private var §#!7§:Number;
      
      private var §+6§:Number;
      
      private var §%§:Number;
      
      public function §1!Z§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_Credits[0]);
         this.§9!m§ = new §&!`§(§@!S§.§2A§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§6!5§ = false;
         this.§%§ = (§^!T§.getItemByName("Container_Credits") as §,6§).height + §@!S§.§`!,§ * §@!S§.§+!q§;
         this.§+6§ = -this.§%§;
         this.activateLevelEngine();
         §^!T§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§>Z§);
         §^!T§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
         §^!T§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<e§);
         §^!T§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!T§.stage.addEventListener(Event.MOUSE_LEAVE,this.§4f§);
         this.§',§ = 0;
         this.§;W§ = 0;
         this.§+b§();
      }
      
      protected function activateLevelEngine() : void
      {
         §@!S§.§2A§.§`!V§(true);
         §@!S§.resume();
         §@!S§.setController(this.§9!m§);
         this.§9!m§.init();
         § !4§.§%"7§.§get §();
      }
      
      protected function §+b§() : void
      {
         var _loc1_:String = §#7§.§02§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §^!T§.setText(_loc1_,"TextField_Version_Number");
         §^!T§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §?+§(param1:MouseEvent) : Boolean
      {
         if(§^!T§.stage.mouseX < §^!T§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §>Z§(param1:MouseEvent) : void
      {
         if(this.§6!5§)
         {
            if(!this.§?+§(param1))
            {
               this.§6!5§ = false;
               return;
            }
            if(this.§#!7§ - §^!T§.stage.mouseY > 0)
            {
               this.§',§ = this.§#!7§ - §^!T§.stage.mouseY;
               this.§#!7§ = §^!T§.stage.mouseY;
            }
            else if(this.§#!7§ - §^!T§.stage.mouseY < 0)
            {
               this.§',§ = this.§#!7§ - §^!T§.stage.mouseY;
               this.§#!7§ = §^!T§.stage.mouseY;
            }
         }
      }
      
      private function §=!H§(param1:MouseEvent) : void
      {
         if(this.§?+§(param1))
         {
            if(!§@!S§.isPaused)
            {
               this.§6!5§ = true;
               this.§#!7§ = §^!T§.stage.mouseY;
            }
         }
      }
      
      private function §<e§(param1:MouseEvent) : void
      {
         this.§6!5§ = false;
      }
      
      private function §4f§(param1:Event) : void
      {
         this.§6!5§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§?+§(param1))
         {
            if(param1.delta < 0)
            {
               this.§;W§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§;W§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§@!S§.isPaused)
         {
            §@!S§.controller.update(param1);
            (§^!T§.getItemByName("Container_Credits") as §,6§).setVisibility(true);
            this.§8p§();
            (§^!T§.getItemByName("Container_Credits") as §,6§).y = Math.floor(-this.§+6§);
            this.§4!`§(param1);
         }
      }
      
      protected function §8p§() : void
      {
      }
      
      private function §4!`§(param1:Number) : void
      {
         this.§+6§ += this.§',§;
         this.§+6§ += this.§;W§;
         if(!this.§6!5§ && Math.abs(this.§;W§) < param1 / 15)
         {
            this.§+6§ += param1 / 15;
         }
         if(this.§+6§ < -§ !4§.§,n§ * §@!S§.§+!q§)
         {
            this.§+6§ = this.§%§;
         }
         else if(this.§+6§ > this.§%§)
         {
            this.§+6§ = -§ !4§.§,n§ * §@!S§.§+!q§;
         }
         if(!this.§6!5§)
         {
            this.§',§ *= 0.9;
            this.§;W§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^!T§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§>Z§);
         §^!T§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!H§);
         §^!T§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<e§);
         §^!T§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!T§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§4f§);
         (§^!T§.getItemByName("Container_Credits") as §,6§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §7"6§(§`!z§.§8"%§);
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
   }
}
