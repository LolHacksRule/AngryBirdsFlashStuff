package §!X§
{
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0"I§.§5!s§;
   import §4##§.§7!B§;
   import §]!=§.§<M§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §7"@§ extends §@!?§
   {
      
      public static const §'#2§:String = "CreditsState";
       
      
      protected var §`#%§:§<M§ = null;
      
      private var §%H§:Boolean;
      
      private var §]!§:Number;
      
      private var §[!o§:Number;
      
      private var §>Q§:Number;
      
      private var §1!U§:Number;
      
      private var §4"N§:Number;
      
      public function §7"@§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_Credits[0]);
         this.§`#%§ = new §<M§(§;!e§.§<x§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%H§ = false;
         this.§4"N§ = (§>I§.getItemByName("Container_Credits") as §,m§).height + §;!e§.§8"?§ * §;!e§.§1"6§;
         this.§1!U§ = -this.§4"N§;
         this.§4!a§();
         §>I§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§8;§);
         §>I§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§^!b§);
         §>I§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§+v§);
         §>I§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>I§.stage.addEventListener(Event.MOUSE_LEAVE,this.§7!-§);
         this.§]!§ = 0;
         this.§[!o§ = 0;
         this.§1F§();
      }
      
      protected function §4!a§() : void
      {
         §;!e§.§<x§.§5!y§(true);
         §;!e§.resume();
         §;!e§.§%!L§(this.§`#%§);
         this.§`#%§.init();
         §;"@§.singleton.playThemeMusic();
      }
      
      protected function §1F§() : void
      {
         var _loc1_:String = §5!s§.§4w§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §>I§.setText(_loc1_,"TextField_Version_Number");
         §>I§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §@n§(param1:MouseEvent) : Boolean
      {
         if(§>I§.stage.mouseX < §>I§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §8;§(param1:MouseEvent) : void
      {
         if(this.§%H§)
         {
            if(!this.§@n§(param1))
            {
               this.§%H§ = false;
               return;
            }
            if(this.§>Q§ - §>I§.stage.mouseY > 0)
            {
               this.§]!§ = this.§>Q§ - §>I§.stage.mouseY;
               this.§>Q§ = §>I§.stage.mouseY;
            }
            else if(this.§>Q§ - §>I§.stage.mouseY < 0)
            {
               this.§]!§ = this.§>Q§ - §>I§.stage.mouseY;
               this.§>Q§ = §>I§.stage.mouseY;
            }
         }
      }
      
      private function §^!b§(param1:MouseEvent) : void
      {
         if(this.§@n§(param1))
         {
            if(!§;!e§.isPaused)
            {
               this.§%H§ = true;
               this.§>Q§ = §>I§.stage.mouseY;
            }
         }
      }
      
      private function §+v§(param1:MouseEvent) : void
      {
         this.§%H§ = false;
      }
      
      private function §7!-§(param1:Event) : void
      {
         this.§%H§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§@n§(param1))
         {
            if(param1.delta < 0)
            {
               this.§[!o§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§[!o§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§;!e§.isPaused)
         {
            §;!e§.§%e§.update(param1);
            (§>I§.getItemByName("Container_Credits") as §,m§).setVisibility(true);
            this.§'!V§();
            (§>I§.getItemByName("Container_Credits") as §,m§).y = Math.floor(-this.§1!U§);
            this.§+[§(param1);
         }
      }
      
      protected function §'!V§() : void
      {
      }
      
      private function §+[§(param1:Number) : void
      {
         this.§1!U§ += this.§]!§;
         this.§1!U§ += this.§[!o§;
         if(!this.§%H§ && Math.abs(this.§[!o§) < param1 / 15)
         {
            this.§1!U§ += param1 / 15;
         }
         if(this.§1!U§ < -§;"@§.screenHeight * §;!e§.§1"6§)
         {
            this.§1!U§ = this.§4"N§;
         }
         else if(this.§1!U§ > this.§4"N§)
         {
            this.§1!U§ = -§;"@§.screenHeight * §;!e§.§1"6§;
         }
         if(!this.§%H§)
         {
            this.§]!§ *= 0.9;
            this.§[!o§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §>I§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§8;§);
         §>I§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^!b§);
         §>I§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+v§);
         §>I§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §>I§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§7!-§);
         (§>I§.getItemByName("Container_Credits") as §,m§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §0"B§(§'!X§.§'#2§);
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
   }
}
