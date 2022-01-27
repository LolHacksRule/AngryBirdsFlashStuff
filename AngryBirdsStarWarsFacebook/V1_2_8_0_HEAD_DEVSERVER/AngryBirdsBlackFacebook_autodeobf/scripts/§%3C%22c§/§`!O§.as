package §<"c§
{
   import §"a§.§`!,§;
   import §+D§.§ #^§;
   import §5t§.Log;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`!O§ extends §]"_§
   {
      
      public static const §^!7§:String = "CreditsState";
       
      
      protected var §2#$§:§`!,§ = null;
      
      private var §&!8§:Boolean;
      
      private var §<u§:Number;
      
      private var §^#L§:Number;
      
      private var §@"t§:Number;
      
      private var §[s§:Number;
      
      private var §&Y§:Number;
      
      public function §`!O§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_Credits[0]);
         this.§2#$§ = new §`!,§(§,!q§.§9!,§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§&!8§ = false;
         this.§&Y§ = (§@;§.getItemByName("Container_Credits") as § #^§).height + §,!q§.§>#O§ * §,!q§.§!"N§;
         this.§[s§ = -this.§&Y§;
         this.§"#6§();
         §@;§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         §@;§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         §@;§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         §@;§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@;§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[u§);
         this.§<u§ = 0;
         this.§^#L§ = 0;
         this.§&!K§();
      }
      
      protected function §"#6§() : void
      {
         §,!q§.§9!,§.§]"J§(true);
         §,!q§.resume();
         §,!q§.§3!Q§(this.§2#$§);
         this.§2#$§.init();
         §4#;§.singleton.playThemeMusic();
      }
      
      protected function §&!K§() : void
      {
         var _loc1_:String = Log.§,#1§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §@;§.setText(_loc1_,"TextField_Version_Number");
         §@;§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §># §(param1:MouseEvent) : Boolean
      {
         if(§@;§.stage.mouseX < §@;§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         if(this.§&!8§)
         {
            if(!this.§># §(param1))
            {
               this.§&!8§ = false;
               return;
            }
            if(this.§@"t§ - §@;§.stage.mouseY > 0)
            {
               this.§<u§ = this.§@"t§ - §@;§.stage.mouseY;
               this.§@"t§ = §@;§.stage.mouseY;
            }
            else if(this.§@"t§ - §@;§.stage.mouseY < 0)
            {
               this.§<u§ = this.§@"t§ - §@;§.stage.mouseY;
               this.§@"t§ = §@;§.stage.mouseY;
            }
         }
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         if(this.§># §(param1))
         {
            if(!§,!q§.isPaused)
            {
               this.§&!8§ = true;
               this.§@"t§ = §@;§.stage.mouseY;
            }
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         this.§&!8§ = false;
      }
      
      private function §[u§(param1:Event) : void
      {
         this.§&!8§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§># §(param1))
         {
            if(param1.delta < 0)
            {
               this.§^#L§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§^#L§ = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§,!q§.isPaused)
         {
            §,!q§.§>k§.update(param1);
            (§@;§.getItemByName("Container_Credits") as § #^§).setVisibility(true);
            this.§5T§();
            (§@;§.getItemByName("Container_Credits") as § #^§).y = Math.floor(-this.§[s§);
            this.§4!x§(param1);
         }
      }
      
      protected function §5T§() : void
      {
      }
      
      private function §4!x§(param1:Number) : void
      {
         this.§[s§ += this.§<u§;
         this.§[s§ += this.§^#L§;
         if(!this.§&!8§ && Math.abs(this.§^#L§) < param1 / 15)
         {
            this.§[s§ += param1 / 15;
         }
         if(this.§[s§ < -§4#;§.screenHeight * §,!q§.§!"N§)
         {
            this.§[s§ = this.§&Y§;
         }
         else if(this.§[s§ > this.§&Y§)
         {
            this.§[s§ = -§4#;§.screenHeight * §,!q§.§!"N§;
         }
         if(!this.§&!8§)
         {
            this.§<u§ *= 0.9;
            this.§^#L§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §@;§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
         §@;§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
         §@;§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
         §@;§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §@;§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[u§);
         (§@;§.getItemByName("Container_Credits") as § #^§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               § g§(§+!n§.§^!7§);
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
   }
}
