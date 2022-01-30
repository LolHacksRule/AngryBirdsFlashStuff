package §,#§
{
   import §"!G§.§3!f§;
   import §1Q§.§%!Y§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §;"+§.§^!i§;
   import §;4§.§]!%§;
   import §>P§.§,3§;
   import com.angrybirds.§4"6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6L§ extends §@!4§
   {
      
      public static const §'u§:String = "CreditsState";
       
      
      protected var §5!Y§:§%!Y§ = null;
      
      private var §%8§:Boolean;
      
      private var §!!j§:Number;
      
      private var §&^§:Number;
      
      private var §>"%§:Number;
      
      private var §?!H§:Number;
      
      private var §8!Q§:Number;
      
      public function §6L§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_Credits[0]);
         this.§5!Y§ = new §%!Y§(§4"6§.§;!k§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%8§ = false;
         this.§8!Q§ = (§^!6§.getItemByName("Container_Credits") as §^!i§).height + §4"6§.§-v§ * §4"6§.§&!D§;
         this.§?!H§ = -this.§8!Q§;
         this.activateLevelEngine();
         §^!6§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;!o§);
         §^!6§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!h§);
         §^!6§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@8§);
         §^!6§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!6§.stage.addEventListener(Event.MOUSE_LEAVE,this.§`l§);
         this.§!!j§ = 0;
         this.§&^§ = 0;
         this.§?U§();
      }
      
      protected function activateLevelEngine() : void
      {
         §4"6§.§;!k§.§7!X§(true);
         §4"6§.resume();
         §4"6§.setController(this.§5!Y§);
         this.§5!Y§.init();
         §-O§.§5!1§.§"-§();
      }
      
      protected function §?U§() : void
      {
         var _loc1_:String = §]!%§.§]a§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §^!6§.setText(_loc1_,"TextField_Version_Number");
         §^!6§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §'!>§(param1:MouseEvent) : Boolean
      {
         if(§^!6§.stage.mouseX < §^!6§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §;!o§(param1:MouseEvent) : void
      {
         if(this.§%8§)
         {
            if(!this.§'!>§(param1))
            {
               this.§%8§ = false;
               return;
            }
            if(this.§>"%§ - §^!6§.stage.mouseY > 0)
            {
               this.§!!j§ = this.§>"%§ - §^!6§.stage.mouseY;
               this.§>"%§ = §^!6§.stage.mouseY;
            }
            else if(this.§>"%§ - §^!6§.stage.mouseY < 0)
            {
               this.§!!j§ = this.§>"%§ - §^!6§.stage.mouseY;
               this.§>"%§ = §^!6§.stage.mouseY;
            }
         }
      }
      
      private function §1!h§(param1:MouseEvent) : void
      {
         if(this.§'!>§(param1))
         {
            if(!§4"6§.isPaused)
            {
               this.§%8§ = true;
               this.§>"%§ = §^!6§.stage.mouseY;
            }
         }
      }
      
      private function §@8§(param1:MouseEvent) : void
      {
         this.§%8§ = false;
      }
      
      private function §`l§(param1:Event) : void
      {
         this.§%8§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§'!>§(param1))
         {
            if(param1.delta < 0)
            {
               this.§&^§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§&^§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§4"6§.isPaused)
         {
            §4"6§.controller.update(param1);
            (§^!6§.getItemByName("Container_Credits") as §^!i§).setVisibility(true);
            this.§3!=§();
            (§^!6§.getItemByName("Container_Credits") as §^!i§).y = Math.floor(-this.§?!H§);
            this.§1"#§(param1);
         }
      }
      
      protected function §3!=§() : void
      {
      }
      
      private function §1"#§(param1:Number) : void
      {
         this.§?!H§ += this.§!!j§;
         this.§?!H§ += this.§&^§;
         if(!this.§%8§ && Math.abs(this.§&^§) < param1 / 15)
         {
            this.§?!H§ += param1 / 15;
         }
         if(this.§?!H§ < -§-O§.§^,§ * §4"6§.§&!D§)
         {
            this.§?!H§ = this.§8!Q§;
         }
         else if(this.§?!H§ > this.§8!Q§)
         {
            this.§?!H§ = -§-O§.§^,§ * §4"6§.§&!D§;
         }
         if(!this.§%8§)
         {
            this.§!!j§ *= 0.9;
            this.§&^§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^!6§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;!o§);
         §^!6§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!h§);
         §^!6§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@8§);
         §^!6§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!6§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§`l§);
         (§^!6§.getItemByName("Container_Credits") as §^!i§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §'"6§(§&3§.§'u§);
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
   }
}
