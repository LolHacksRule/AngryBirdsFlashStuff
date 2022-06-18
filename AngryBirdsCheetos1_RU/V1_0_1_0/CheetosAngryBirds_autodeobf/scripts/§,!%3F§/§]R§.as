package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §#g§.§@`§;
   import §%t§.§@!%§;
   import §-!O§.§7'§;
   import §]!&§.§]!K§;
   import §]!5§.§-!3§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §]R§ extends §7'§
   {
      
      public static const §@B§:String = "CreditsState";
       
      
      private var §&8§:§@`§ = null;
      
      private var §>X§:Boolean;
      
      private var §4l§:Number;
      
      private var §;@§:Number;
      
      private var §2-§:Number;
      
      private var §9C§:Number;
      
      private var §?w§:Number;
      
      public function §]R§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_Credits[0]);
         this.§&8§ = new §@`§(§"_§.§+!^§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         §"_§.§+!^§.§[!U§(true);
         §"_§.§>!'§(this.§&8§);
         this.§&8§.init();
         §2!-§.§?p§();
         §<h§.§4!J§.isPaused = false;
         var _loc1_:§]!K§ = §??§.container.getItemByName("Container_Credits") as §]!K§;
         §??§.addEventListener(MouseEvent.MOUSE_MOVE,this.§+!V§);
         §??§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!§);
         §??§.addEventListener(MouseEvent.MOUSE_UP,this.§#!Q§);
         §??§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §??§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!9§);
         this.§9C§ = 0;
         this.§4l§ = 0;
         this.§;@§ = 0;
         this.§?w§ = _loc1_.height + §"_§.§-$§ * §"_§.§5o§;
         this.§9C§ = -this.§?w§;
         §??§.setText(§@!%§.§9D§,"TextField_Version_Number");
      }
      
      private function §+!V§(param1:MouseEvent) : void
      {
         if(this.§>X§)
         {
            if(this.§2-§ - §??§.mouseY > 0)
            {
               this.§4l§ = this.§2-§ - §??§.mouseY;
               this.§2-§ = §??§.mouseY;
            }
            else if(this.§2-§ - §??§.mouseY < 0)
            {
               this.§4l§ = this.§2-§ - §??§.mouseY;
               this.§2-§ = §??§.mouseY;
            }
         }
      }
      
      private function §'!§(param1:MouseEvent) : void
      {
         this.§>X§ = true;
         this.§2-§ = §??§.mouseY;
      }
      
      private function §#!Q§(param1:MouseEvent) : void
      {
         this.§>X§ = false;
      }
      
      private function §3!9§(param1:Event) : void
      {
         this.§>X§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§;@§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§;@§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §"_§.§,z§.update(param1);
         (§??§.getItemByName("Container_Credits") as §]!K§).y = Math.floor(-this.§9C§);
         this.§?!1§(param1);
         (§??§.getItemByName("Container_Credits") as §]!K§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      private function §?!1§(param1:Number) : void
      {
         this.§9C§ += this.§4l§;
         this.§9C§ += this.§;@§;
         if(!this.§>X§ && Math.abs(this.§;@§) < param1 / 15)
         {
            this.§9C§ += param1 / 15;
         }
         if(this.§9C§ < -§2!-§.§-$§ * §"_§.§5o§)
         {
            this.§9C§ = this.§?w§;
         }
         else if(this.§9C§ > this.§?w§)
         {
            this.§9C§ = -§2!-§.§-$§ * §"_§.§5o§;
         }
         if(!this.§>X§)
         {
            this.§4l§ *= 0.9;
            this.§;@§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §??§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§+!V§);
         §??§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!§);
         §??§.removeEventListener(MouseEvent.MOUSE_UP,this.§#!Q§);
         §??§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §??§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!9§);
         (§??§.getItemByName("Container_Credits") as §]!K§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §&c§.§@B§;
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
