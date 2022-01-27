package §8!_§
{
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §77§.§ ",§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4!U§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §'!v§:§`"2§ = null;
      
      private var §+H§:Boolean;
      
      private var §5_§:Number;
      
      private var §return§:Number;
      
      private var §8!8§:Number;
      
      private var §'!!§:Number;
      
      private var §2N§:Number;
      
      public function §4!U§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_Credits[0]);
         this.§'!v§ = new §`"2§(§9q§.§>!L§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§2N§ = (§8!A§.getItemByName("Container_Credits") as § ",§).height + §9q§.§3!h§ * §9q§.§+w§;
         this.§'!!§ = -this.§2N§;
         this.activateLevelEngine();
         §8!A§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
         §8!A§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
         §8!A§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§9v§);
         §8!A§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §8!A§.stage.addEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
         this.§5_§ = 0;
         this.§return§ = 0;
         this.§,!i§();
      }
      
      protected function activateLevelEngine() : void
      {
         §9q§.§>!L§.§0!M§(true);
         §9q§.resume();
         §9q§.§15§(this.§'!v§);
         this.§'!v§.init();
         § !g§.§;!'§.§2!M§();
      }
      
      protected function §,!i§() : void
      {
         var _loc1_:String = §2!@§.§'!S§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §8!A§.setText(_loc1_,"TextField_Version_Number");
         §8!A§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §;M§(param1:MouseEvent) : Boolean
      {
         if(§8!A§.stage.mouseX < §8!A§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         if(this.§+H§)
         {
            if(!this.§;M§(param1))
            {
               this.§+H§ = false;
               return;
            }
            if(this.§8!8§ - §8!A§.stage.mouseY > 0)
            {
               this.§5_§ = this.§8!8§ - §8!A§.stage.mouseY;
               this.§8!8§ = §8!A§.stage.mouseY;
            }
            else if(this.§8!8§ - §8!A§.stage.mouseY < 0)
            {
               this.§5_§ = this.§8!8§ - §8!A§.stage.mouseY;
               this.§8!8§ = §8!A§.stage.mouseY;
            }
         }
      }
      
      private function §4!E§(param1:MouseEvent) : void
      {
         if(this.§;M§(param1))
         {
            if(!§9q§.isPaused)
            {
               this.§+H§ = true;
               this.§8!8§ = §8!A§.stage.mouseY;
            }
         }
      }
      
      private function §9v§(param1:MouseEvent) : void
      {
         this.§+H§ = false;
      }
      
      private function §]!Y§(param1:Event) : void
      {
         this.§+H§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§;M§(param1))
         {
            if(param1.delta < 0)
            {
               this.§return§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§return§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§9q§.isPaused)
         {
            §9q§.§&!$§.update(param1);
            (§8!A§.getItemByName("Container_Credits") as § ",§).setVisibility(true);
            this.§47§();
            (§8!A§.getItemByName("Container_Credits") as § ",§).y = Math.floor(-this.§'!!§);
            this.§0`§(param1);
         }
      }
      
      protected function §47§() : void
      {
      }
      
      private function §0`§(param1:Number) : void
      {
         this.§'!!§ += this.§5_§;
         this.§'!!§ += this.§return§;
         if(!this.§+H§ && Math.abs(this.§return§) < param1 / 15)
         {
            this.§'!!§ += param1 / 15;
         }
         if(this.§'!!§ < -§ !g§.screenHeight * §9q§.§+w§)
         {
            this.§'!!§ = this.§2N§;
         }
         else if(this.§'!!§ > this.§2N§)
         {
            this.§'!!§ = -§ !g§.screenHeight * §9q§.§+w§;
         }
         if(!this.§+H§)
         {
            this.§5_§ *= 0.9;
            this.§return§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §8!A§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
         §8!A§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!E§);
         §8!A§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§9v§);
         §8!A§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §8!A§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
         (§8!A§.getItemByName("Container_Credits") as § ",§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §8!^§(§0!q§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
   }
}
