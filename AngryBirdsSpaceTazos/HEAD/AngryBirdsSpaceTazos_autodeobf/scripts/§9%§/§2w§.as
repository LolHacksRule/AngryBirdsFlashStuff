package §9%§
{
   import §%"%§.§2Z§;
   import §&f§.§`"-§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§^!@§;
   import §7!6§.§@Y§;
   import §="<§.§,"$§;
   import §>"2§.§8k§;
   import §`!w§.§^!$§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2w§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §^!'§:§`"-§ = null;
      
      private var §'!K§:Boolean;
      
      private var §>!h§:Number;
      
      private var §=v§:Number;
      
      private var §-E§:Number;
      
      private var §1!+§:Number;
      
      private var §%&§:Number;
      
      public function §2w§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_Credits[0]);
         this.§^!'§ = new §`"-§(§8k§.§;!]§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%&§ = (§%!A§.getItemByName("Container_Credits") as §,"$§).height + §8k§.§[s§ * §8k§.§&i§;
         this.§1!+§ = -this.§%&§;
         this.activateLevelEngine();
         §%!A§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§6!8§);
         §%!A§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§#X§);
         §%!A§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@N§);
         §%!A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%!A§.stage.addEventListener(Event.MOUSE_LEAVE,this.§-=§);
         this.§>!h§ = 0;
         this.§=v§ = 0;
         this.§0"E§();
      }
      
      protected function activateLevelEngine() : void
      {
         §8k§.§;!]§.§#5§(true);
         §8k§.resume();
         §8k§.§&x§(this.§^!'§);
         this.§^!'§.init();
         §2&§.§6o§.§,k§();
      }
      
      protected function §0"E§() : void
      {
         var _loc1_:String = §^!$§.§2!#§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §%!A§.setText(_loc1_,"TextField_Version_Number");
         §%!A§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §,!m§(param1:MouseEvent) : Boolean
      {
         if(§%!A§.stage.mouseX < §%!A§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §6!8§(param1:MouseEvent) : void
      {
         if(this.§'!K§)
         {
            if(!this.§,!m§(param1))
            {
               this.§'!K§ = false;
               return;
            }
            if(this.§-E§ - §%!A§.stage.mouseY > 0)
            {
               this.§>!h§ = this.§-E§ - §%!A§.stage.mouseY;
               this.§-E§ = §%!A§.stage.mouseY;
            }
            else if(this.§-E§ - §%!A§.stage.mouseY < 0)
            {
               this.§>!h§ = this.§-E§ - §%!A§.stage.mouseY;
               this.§-E§ = §%!A§.stage.mouseY;
            }
         }
      }
      
      private function §#X§(param1:MouseEvent) : void
      {
         if(this.§,!m§(param1))
         {
            if(!§8k§.isPaused)
            {
               this.§'!K§ = true;
               this.§-E§ = §%!A§.stage.mouseY;
            }
         }
      }
      
      private function §@N§(param1:MouseEvent) : void
      {
         this.§'!K§ = false;
      }
      
      private function §-=§(param1:Event) : void
      {
         this.§'!K§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§,!m§(param1))
         {
            if(param1.delta < 0)
            {
               this.§=v§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§=v§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§8k§.isPaused)
         {
            §8k§.§0!Q§.update(param1);
            (§%!A§.getItemByName("Container_Credits") as §,"$§).setVisibility(true);
            this.§?o§();
            (§%!A§.getItemByName("Container_Credits") as §,"$§).y = Math.floor(-this.§1!+§);
            this.§5!>§(param1);
         }
      }
      
      protected function §?o§() : void
      {
      }
      
      private function §5!>§(param1:Number) : void
      {
         this.§1!+§ += this.§>!h§;
         this.§1!+§ += this.§=v§;
         if(!this.§'!K§ && Math.abs(this.§=v§) < param1 / 15)
         {
            this.§1!+§ += param1 / 15;
         }
         if(this.§1!+§ < -§2&§.screenHeight * §8k§.§&i§)
         {
            this.§1!+§ = this.§%&§;
         }
         else if(this.§1!+§ > this.§%&§)
         {
            this.§1!+§ = -§2&§.screenHeight * §8k§.§&i§;
         }
         if(!this.§'!K§)
         {
            this.§>!h§ *= 0.9;
            this.§=v§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §%!A§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§6!8§);
         §%!A§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§#X§);
         §%!A§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@N§);
         §%!A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §%!A§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§-=§);
         (§%!A§.getItemByName("Container_Credits") as §,"$§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               § !I§(§1"1§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
   }
}
