package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §2!!§.§<!b§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import §`M§.§9!#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6!5§ extends §+_§
   {
      
      public static const §3F§:String = "CreditsState";
       
      
      protected var §+4§:§<!b§ = null;
      
      private var §`2§:Boolean;
      
      private var §?`§:Number;
      
      private var §=!T§:Number;
      
      private var §+S§:Number;
      
      private var §^!Z§:Number;
      
      private var §3W§:Number;
      
      public function §6!5§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_Credits[0]);
         this.§+4§ = new §<!b§(§4!]§.§8C§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3W§ = (§`-§.getItemByName("Container_Credits") as §9!#§).height + §4!]§.§0N§ * §4!]§.§%!'§;
         this.§^!Z§ = -this.§3W§;
         §4!]§.§8C§.§1B§(true);
         §4!]§.resume();
         §4!]§.setController(this.§+4§);
         this.§+4§.init();
         AngryBirdsFP11.playThemeMusic();
         §`-§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
         §`-§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§12§);
         §`-§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§-!d§);
         §`-§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`-§.stage.addEventListener(Event.MOUSE_LEAVE,this.§[!§);
         this.§?`§ = 0;
         this.§=!T§ = 0;
         var _loc1_:String = §[g§.§ !M§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §`-§.setText(_loc1_,"TextField_Version_Number");
         §`-§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §+!c§(param1:MouseEvent) : Boolean
      {
         if(§`-§.stage.mouseX < §`-§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §0!r§(param1:MouseEvent) : void
      {
         if(this.§`2§)
         {
            if(!this.§+!c§(param1))
            {
               this.§`2§ = false;
               return;
            }
            if(this.§+S§ - §`-§.stage.mouseY > 0)
            {
               this.§?`§ = this.§+S§ - §`-§.stage.mouseY;
               this.§+S§ = §`-§.stage.mouseY;
            }
            else if(this.§+S§ - §`-§.stage.mouseY < 0)
            {
               this.§?`§ = this.§+S§ - §`-§.stage.mouseY;
               this.§+S§ = §`-§.stage.mouseY;
            }
         }
      }
      
      private function §12§(param1:MouseEvent) : void
      {
         if(this.§+!c§(param1))
         {
            if(!§4!]§.isPaused)
            {
               this.§`2§ = true;
               this.§+S§ = §`-§.stage.mouseY;
            }
         }
      }
      
      private function §-!d§(param1:MouseEvent) : void
      {
         this.§`2§ = false;
      }
      
      private function §[!§(param1:Event) : void
      {
         this.§`2§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§+!c§(param1))
         {
            if(param1.delta < 0)
            {
               this.§=!T§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§=!T§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§4!]§.isPaused)
         {
            §4!]§.§=`§.update(param1);
            (§`-§.getItemByName("Container_Credits") as §9!#§).setVisibility(true);
            this.readyToShowCredits();
            (§`-§.getItemByName("Container_Credits") as §9!#§).y = Math.floor(-this.§^!Z§);
            this.§-!5§(param1);
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §-!5§(param1:Number) : void
      {
         this.§^!Z§ += this.§?`§;
         this.§^!Z§ += this.§=!T§;
         if(!this.§`2§ && Math.abs(this.§=!T§) < param1 / 15)
         {
            this.§^!Z§ += param1 / 15;
         }
         if(this.§^!Z§ < -AngryBirdsFP11.§7P§ * §4!]§.§%!'§)
         {
            this.§^!Z§ = this.§3W§;
         }
         else if(this.§^!Z§ > this.§3W§)
         {
            this.§^!Z§ = -AngryBirdsFP11.§7P§ * §4!]§.§%!'§;
         }
         if(!this.§`2§)
         {
            this.§?`§ *= 0.9;
            this.§=!T§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §`-§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§0!r§);
         §`-§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§12§);
         §`-§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§-!d§);
         §`-§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §`-§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§[!§);
         (§`-§.getItemByName("Container_Credits") as §9!#§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §4A§.§3F§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
   }
}
