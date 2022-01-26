package §&!`§
{
   import § =§.§ x§;
   import §!4§.§=!Z§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §-!T§.§&,§;
   import §<s§.§]@§;
   import §[%§.§&a§;
   import §]_§.§!F§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §^!%§ extends § x§
   {
      
      public static const §="§:String = "CreditsState";
       
      
      private var §7!&§:§&,§ = null;
      
      private var §@!2§:Boolean;
      
      private var §1!S§:Number;
      
      private var §'!%§:Number;
      
      private var §&I§:Number;
      
      private var §>7§:Number;
      
      private var §2!D§:Number;
      
      public function §^!%§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_Credits[0]);
         this.§7!&§ = new §&,§(§3>§.§8!$§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         §3>§.§8!$§.§8M§(true);
         §3>§.§ !G§(this.§7!&§);
         this.§7!&§.init();
         §3§.§>!V§();
         §!F§.§5!H§.isPaused = false;
         var _loc1_:§&a§ = §^!]§.container.getItemByName("Container_Credits") as §&a§;
         §^!]§.addEventListener(MouseEvent.MOUSE_MOVE,this.§2!A§);
         §^!]§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0h§);
         §^!]§.addEventListener(MouseEvent.MOUSE_UP,this.§;j§);
         §^!]§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!]§.stage.addEventListener(Event.MOUSE_LEAVE,this.§9!V§);
         this.§>7§ = 0;
         this.§1!S§ = 0;
         this.§'!%§ = 0;
         this.§2!D§ = _loc1_.height + §3>§.§'Z§ * §3>§.§&e§;
         this.§>7§ = -this.§2!D§;
         §^!]§.setText(§=!Z§.§1a§,"TextField_Version_Number");
      }
      
      private function §2!A§(param1:MouseEvent) : void
      {
         if(this.§@!2§)
         {
            if(this.§&I§ - §^!]§.mouseY > 0)
            {
               this.§1!S§ = this.§&I§ - §^!]§.mouseY;
               this.§&I§ = §^!]§.mouseY;
            }
            else if(this.§&I§ - §^!]§.mouseY < 0)
            {
               this.§1!S§ = this.§&I§ - §^!]§.mouseY;
               this.§&I§ = §^!]§.mouseY;
            }
         }
      }
      
      private function §0h§(param1:MouseEvent) : void
      {
         this.§@!2§ = true;
         this.§&I§ = §^!]§.mouseY;
      }
      
      private function §;j§(param1:MouseEvent) : void
      {
         this.§@!2§ = false;
      }
      
      private function §9!V§(param1:Event) : void
      {
         this.§@!2§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§'!%§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§'!%§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §3>§.§;O§.update(param1);
         (§^!]§.getItemByName("Container_Credits") as §&a§).y = Math.floor(-this.§>7§);
         this.§#!?§(param1);
         (§^!]§.getItemByName("Container_Credits") as §&a§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      private function §#!?§(param1:Number) : void
      {
         this.§>7§ += this.§1!S§;
         this.§>7§ += this.§'!%§;
         if(!this.§@!2§ && Math.abs(this.§'!%§) < param1 / 15)
         {
            this.§>7§ += param1 / 15;
         }
         if(this.§>7§ < -§3§.§'Z§ * §3>§.§&e§)
         {
            this.§>7§ = this.§2!D§;
         }
         else if(this.§>7§ > this.§2!D§)
         {
            this.§>7§ = -§3§.§'Z§ * §3>§.§&e§;
         }
         if(!this.§@!2§)
         {
            this.§1!S§ *= 0.9;
            this.§'!%§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §^!]§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§2!A§);
         §^!]§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0h§);
         §^!]§.removeEventListener(MouseEvent.MOUSE_UP,this.§;j§);
         §^!]§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §^!]§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§9!V§);
         (§^!]§.getItemByName("Container_Credits") as §&a§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §4q§.§="§;
               break;
            case "PRIVACY_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "EULA_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
               break;
            case "FAQ_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/en/our-work/games/view/1/angry-birds/faq/"),"_blank");
         }
      }
   }
}
