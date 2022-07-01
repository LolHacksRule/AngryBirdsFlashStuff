package §?!E§
{
   import §"I§.§=!U§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §9!o§.§=!-§;
   import §;!b§.§%>§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import com.angrybirds.§6U§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2S§ extends §5"#§
   {
      
      public static const §+B§:String = "CreditsState";
       
      
      protected var §23§:§=!-§ = null;
      
      private var §@!3§:Boolean;
      
      private var §[V§:Number;
      
      private var §#?§:Number;
      
      private var §8"'§:Number;
      
      private var §=!G§:Number;
      
      private var §=!@§:Number;
      
      public function §2S§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_Credits[0]);
         this.§23§ = new §=!-§(§6U§.§+_§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!3§ = false;
         this.§=!@§ = (§#2§.getItemByName("Container_Credits") as §9!'§).height + §6U§.§1a§ * §6U§.§7Z§;
         this.§=!G§ = -this.§=!@§;
         this.activateLevelEngine();
         §#2§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§!"4§);
         §#2§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§!3§);
         §#2§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§6",§);
         §#2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §#2§.stage.addEventListener(Event.MOUSE_LEAVE,this.§>k§);
         this.§[V§ = 0;
         this.§#?§ = 0;
         this.§5!l§();
      }
      
      protected function activateLevelEngine() : void
      {
         §6U§.§+_§.§ W§(true);
         §6U§.resume();
         §6U§.setController(this.§23§);
         this.§23§.init();
         §-!l§.§"x§.§"H§();
      }
      
      protected function §5!l§() : void
      {
         var _loc1_:String = §=!U§.§>!+§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §#2§.setText(_loc1_,"TextField_Version_Number");
         §#2§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §;""§(param1:MouseEvent) : Boolean
      {
         if(§#2§.stage.mouseX < §#2§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §!"4§(param1:MouseEvent) : void
      {
         if(this.§@!3§)
         {
            if(!this.§;""§(param1))
            {
               this.§@!3§ = false;
               return;
            }
            if(this.§8"'§ - §#2§.stage.mouseY > 0)
            {
               this.§[V§ = this.§8"'§ - §#2§.stage.mouseY;
               this.§8"'§ = §#2§.stage.mouseY;
            }
            else if(this.§8"'§ - §#2§.stage.mouseY < 0)
            {
               this.§[V§ = this.§8"'§ - §#2§.stage.mouseY;
               this.§8"'§ = §#2§.stage.mouseY;
            }
         }
      }
      
      private function §!3§(param1:MouseEvent) : void
      {
         if(this.§;""§(param1))
         {
            if(!§6U§.isPaused)
            {
               this.§@!3§ = true;
               this.§8"'§ = §#2§.stage.mouseY;
            }
         }
      }
      
      private function §6",§(param1:MouseEvent) : void
      {
         this.§@!3§ = false;
      }
      
      private function §>k§(param1:Event) : void
      {
         this.§@!3§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§;""§(param1))
         {
            if(param1.delta < 0)
            {
               this.§#?§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§#?§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§6U§.isPaused)
         {
            §6U§.controller.update(param1);
            (§#2§.getItemByName("Container_Credits") as §9!'§).setVisibility(true);
            this.§6!r§();
            (§#2§.getItemByName("Container_Credits") as §9!'§).y = Math.floor(-this.§=!G§);
            this.§5!r§(param1);
         }
      }
      
      protected function §6!r§() : void
      {
      }
      
      private function §5!r§(param1:Number) : void
      {
         this.§=!G§ += this.§[V§;
         this.§=!G§ += this.§#?§;
         if(!this.§@!3§ && Math.abs(this.§#?§) < param1 / 15)
         {
            this.§=!G§ += param1 / 15;
         }
         if(this.§=!G§ < -§-!l§.§-!W§ * §6U§.§7Z§)
         {
            this.§=!G§ = this.§=!@§;
         }
         else if(this.§=!G§ > this.§=!@§)
         {
            this.§=!G§ = -§-!l§.§-!W§ * §6U§.§7Z§;
         }
         if(!this.§@!3§)
         {
            this.§[V§ *= 0.9;
            this.§#?§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §#2§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§!"4§);
         §#2§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!3§);
         §#2§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§6",§);
         §#2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §#2§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§>k§);
         (§#2§.getItemByName("Container_Credits") as §9!'§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §0!w§(§#V§.§+B§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
   }
}
