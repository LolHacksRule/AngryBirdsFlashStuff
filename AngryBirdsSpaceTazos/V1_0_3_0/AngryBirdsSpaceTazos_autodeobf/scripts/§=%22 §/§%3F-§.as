package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §5s§.§]s§;
   import §6!C§.§6E§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §?-§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var § case§:§]s§ = null;
      
      private var §<c§:Boolean;
      
      private var §%V§:Number;
      
      private var §"!E§:Number;
      
      private var §;!>§:Number;
      
      private var §#""§:Number;
      
      private var §9!N§:Number;
      
      public function §?-§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_Credits[0]);
         this.§ case§ = new §]s§(§8!w§.§5!V§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§9!N§ = (§6!J§.getItemByName("Container_Credits") as §5!k§).height + §8!w§.§9"-§ * §8!w§.§<"B§;
         this.§#""§ = -this.§9!N§;
         this.activateLevelEngine();
         §6!J§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§]"G§);
         §6!J§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§-_§);
         §6!J§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§%+§);
         §6!J§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6!J§.stage.addEventListener(Event.MOUSE_LEAVE,this.§<" §);
         this.§%V§ = 0;
         this.§"!E§ = 0;
         this.§@u§();
      }
      
      protected function activateLevelEngine() : void
      {
         §8!w§.§5!V§.§3r§(true);
         §8!w§.resume();
         §8!w§.§?<§(this.§ case§);
         this.§ case§.init();
         §&"<§.§<!7§.§>X§();
      }
      
      protected function §@u§() : void
      {
         var _loc1_:String = §6E§.§]u§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §6!J§.setText(_loc1_,"TextField_Version_Number");
         §6!J§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §%J§(param1:MouseEvent) : Boolean
      {
         if(§6!J§.stage.mouseX < §6!J§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §]"G§(param1:MouseEvent) : void
      {
         if(this.§<c§)
         {
            if(!this.§%J§(param1))
            {
               this.§<c§ = false;
               return;
            }
            if(this.§;!>§ - §6!J§.stage.mouseY > 0)
            {
               this.§%V§ = this.§;!>§ - §6!J§.stage.mouseY;
               this.§;!>§ = §6!J§.stage.mouseY;
            }
            else if(this.§;!>§ - §6!J§.stage.mouseY < 0)
            {
               this.§%V§ = this.§;!>§ - §6!J§.stage.mouseY;
               this.§;!>§ = §6!J§.stage.mouseY;
            }
         }
      }
      
      private function §-_§(param1:MouseEvent) : void
      {
         if(this.§%J§(param1))
         {
            if(!§8!w§.isPaused)
            {
               this.§<c§ = true;
               this.§;!>§ = §6!J§.stage.mouseY;
            }
         }
      }
      
      private function §%+§(param1:MouseEvent) : void
      {
         this.§<c§ = false;
      }
      
      private function §<" §(param1:Event) : void
      {
         this.§<c§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§%J§(param1))
         {
            if(param1.delta < 0)
            {
               this.§"!E§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§"!E§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§8!w§.isPaused)
         {
            §8!w§.§79§.update(param1);
            (§6!J§.getItemByName("Container_Credits") as §5!k§).setVisibility(true);
            this.§^n§();
            (§6!J§.getItemByName("Container_Credits") as §5!k§).y = Math.floor(-this.§#""§);
            this.§`!]§(param1);
         }
      }
      
      protected function §^n§() : void
      {
      }
      
      private function §`!]§(param1:Number) : void
      {
         this.§#""§ += this.§%V§;
         this.§#""§ += this.§"!E§;
         if(!this.§<c§ && Math.abs(this.§"!E§) < param1 / 15)
         {
            this.§#""§ += param1 / 15;
         }
         if(this.§#""§ < -§&"<§.screenHeight * §8!w§.§<"B§)
         {
            this.§#""§ = this.§9!N§;
         }
         else if(this.§#""§ > this.§9!N§)
         {
            this.§#""§ = -§&"<§.screenHeight * §8!w§.§<"B§;
         }
         if(!this.§<c§)
         {
            this.§%V§ *= 0.9;
            this.§"!E§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §6!J§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§]"G§);
         §6!J§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-_§);
         §6!J§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§%+§);
         §6!J§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §6!J§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§<" §);
         (§6!J§.getItemByName("Container_Credits") as §5!k§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §'Q§(§&";§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
   }
}
