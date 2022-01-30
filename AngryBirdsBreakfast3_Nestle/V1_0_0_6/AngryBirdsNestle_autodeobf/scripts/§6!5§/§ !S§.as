package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§^!#§;
   import §0!$§.§#!-§;
   import §2!N§.§#?§;
   import §[!F§.§3j§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § !S§ extends §3!3§
   {
      
      public static const §7w§:String = "CreditsState";
       
      
      protected var §;"1§:§#?§ = null;
      
      private var §1!r§:Boolean;
      
      private var §2+§:Number;
      
      private var §5!$§:Number;
      
      private var §`4§:Number;
      
      private var §2!B§:Number;
      
      private var §`!t§:Number;
      
      public function § !S§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_Credits[0]);
         this.§;"1§ = new §#?§(§6!E§.§7I§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1!r§ = false;
         this.§`!t§ = (§ !z§.getItemByName("Container_Credits") as §3j§).height + §6!E§.§<N§ * §6!E§.§5!=§;
         this.§2!B§ = -this.§`!t§;
         this.activateLevelEngine();
         § !z§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!&§);
         § !z§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!4§);
         § !z§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§&T§);
         § !z§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § !z§.stage.addEventListener(Event.MOUSE_LEAVE,this.§@!4§);
         this.§2+§ = 0;
         this.§5!$§ = 0;
         this.§8!1§();
      }
      
      protected function activateLevelEngine() : void
      {
         §6!E§.§7I§.§'F§(true);
         §6!E§.resume();
         §6!E§.setController(this.§;"1§);
         this.§;"1§.init();
         §-!I§.§[f§.§[g§();
      }
      
      protected function §8!1§() : void
      {
         var _loc1_:String = §#!-§.§'c§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         § !z§.setText(_loc1_,"TextField_Version_Number");
         § !z§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §!!7§(param1:MouseEvent) : Boolean
      {
         if(§ !z§.stage.mouseX < § !z§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §%!&§(param1:MouseEvent) : void
      {
         if(this.§1!r§)
         {
            if(!this.§!!7§(param1))
            {
               this.§1!r§ = false;
               return;
            }
            if(this.§`4§ - § !z§.stage.mouseY > 0)
            {
               this.§2+§ = this.§`4§ - § !z§.stage.mouseY;
               this.§`4§ = § !z§.stage.mouseY;
            }
            else if(this.§`4§ - § !z§.stage.mouseY < 0)
            {
               this.§2+§ = this.§`4§ - § !z§.stage.mouseY;
               this.§`4§ = § !z§.stage.mouseY;
            }
         }
      }
      
      private function §[!4§(param1:MouseEvent) : void
      {
         if(this.§!!7§(param1))
         {
            if(!§6!E§.isPaused)
            {
               this.§1!r§ = true;
               this.§`4§ = § !z§.stage.mouseY;
            }
         }
      }
      
      private function §&T§(param1:MouseEvent) : void
      {
         this.§1!r§ = false;
      }
      
      private function §@!4§(param1:Event) : void
      {
         this.§1!r§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§!!7§(param1))
         {
            if(param1.delta < 0)
            {
               this.§5!$§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§5!$§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§6!E§.isPaused)
         {
            §6!E§.controller.update(param1);
            (§ !z§.getItemByName("Container_Credits") as §3j§).setVisibility(true);
            this.§!!s§();
            (§ !z§.getItemByName("Container_Credits") as §3j§).y = Math.floor(-this.§2!B§);
            this.§?p§(param1);
         }
      }
      
      protected function §!!s§() : void
      {
      }
      
      private function §?p§(param1:Number) : void
      {
         this.§2!B§ += this.§2+§;
         this.§2!B§ += this.§5!$§;
         if(!this.§1!r§ && Math.abs(this.§5!$§) < param1 / 15)
         {
            this.§2!B§ += param1 / 15;
         }
         if(this.§2!B§ < -§-!I§.§&!P§ * §6!E§.§5!=§)
         {
            this.§2!B§ = this.§`!t§;
         }
         else if(this.§2!B§ > this.§`!t§)
         {
            this.§2!B§ = -§-!I§.§&!P§ * §6!E§.§5!=§;
         }
         if(!this.§1!r§)
         {
            this.§2+§ *= 0.9;
            this.§5!$§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         § !z§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!&§);
         § !z§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!4§);
         § !z§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§&T§);
         § !z§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         § !z§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§@!4§);
         (§ !z§.getItemByName("Container_Credits") as §3j§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §?n§(§4q§.§7w§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
   }
}
