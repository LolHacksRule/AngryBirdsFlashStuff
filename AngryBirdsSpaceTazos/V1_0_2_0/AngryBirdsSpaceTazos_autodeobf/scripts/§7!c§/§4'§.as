package §7!c§
{
   import §!i§.§1s§;
   import §"!>§.§<!o§;
   import §""<§.§#N§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §;!0§.;
   import §<"9§.§^"@§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4'§ extends §%<§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §#!"§:§^"@§ = null;
      
      private var §8!`§:Boolean;
      
      private var §<e§:Number;
      
      private var §["D§:Number;
      
      private var §'!]§:Number;
      
      private var §=,§:Number;
      
      private var §>"F§:Number;
      
      public function §4'§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_Credits[0]);
         this.§#!"§ = new §^"@§(§;0§.§@!^§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§>"F§ = (§4§.getItemByName("Container_Credits") as §1s§).height + §;0§.§5+§ * §;0§.§6[§;
         this.§=,§ = -this.§>"F§;
         this.activateLevelEngine();
         §4§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§48§);
         §4§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§%j§);
         §4§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§ !=§);
         §4§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4§.stage.addEventListener(Event.MOUSE_LEAVE,this.§`!b§);
         this.§<e§ = 0;
         this.§["D§ = 0;
         this.§?y§();
      }
      
      protected function activateLevelEngine() : void
      {
         §;0§.§@!^§.§'!z§(true);
         §;0§.resume();
         §;0§.§'"8§(this.§#!"§);
         this.§#!"§.init();
         §&!h§.§ u§.§`=§();
      }
      
      protected function §?y§() : void
      {
         var _loc1_:String = §#N§.§6>§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §4§.setText(_loc1_,"TextField_Version_Number");
         §4§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §9!5§(param1:MouseEvent) : Boolean
      {
         if(§4§.stage.mouseX < §4§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §48§(param1:MouseEvent) : void
      {
         if(this.§8!`§)
         {
            if(!this.§9!5§(param1))
            {
               this.§8!`§ = false;
               return;
            }
            if(this.§'!]§ - §4§.stage.mouseY > 0)
            {
               this.§<e§ = this.§'!]§ - §4§.stage.mouseY;
               this.§'!]§ = §4§.stage.mouseY;
            }
            else if(this.§'!]§ - §4§.stage.mouseY < 0)
            {
               this.§<e§ = this.§'!]§ - §4§.stage.mouseY;
               this.§'!]§ = §4§.stage.mouseY;
            }
         }
      }
      
      private function §%j§(param1:MouseEvent) : void
      {
         if(this.§9!5§(param1))
         {
            if(!§;0§.isPaused)
            {
               this.§8!`§ = true;
               this.§'!]§ = §4§.stage.mouseY;
            }
         }
      }
      
      private function § !=§(param1:MouseEvent) : void
      {
         this.§8!`§ = false;
      }
      
      private function §`!b§(param1:Event) : void
      {
         this.§8!`§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§9!5§(param1))
         {
            if(param1.delta < 0)
            {
               this.§["D§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§["D§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§;0§.isPaused)
         {
            §;0§.§%O§.update(param1);
            (§4§.getItemByName("Container_Credits") as §1s§).setVisibility(true);
            this.§3!3§();
            (§4§.getItemByName("Container_Credits") as §1s§).y = Math.floor(-this.§=,§);
            this.§!"#§(param1);
         }
      }
      
      protected function §3!3§() : void
      {
      }
      
      private function §!"#§(param1:Number) : void
      {
         this.§=,§ += this.§<e§;
         this.§=,§ += this.§["D§;
         if(!this.§8!`§ && Math.abs(this.§["D§) < param1 / 15)
         {
            this.§=,§ += param1 / 15;
         }
         if(this.§=,§ < -§&!h§.screenHeight * §;0§.§6[§)
         {
            this.§=,§ = this.§>"F§;
         }
         else if(this.§=,§ > this.§>"F§)
         {
            this.§=,§ = -§&!h§.screenHeight * §;0§.§6[§;
         }
         if(!this.§8!`§)
         {
            this.§<e§ *= 0.9;
            this.§["D§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §4§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§48§);
         §4§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%j§);
         §4§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§ !=§);
         §4§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §4§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`!b§);
         (§4§.getItemByName("Container_Credits") as §1s§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §2g§(§>!6§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
   }
}
