package §0![§
{
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §;'§.§7"'§;
   import §=!M§.§9!P§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §'"6§ extends §5y§
   {
      
      public static const §'=§:String = "CreditsState";
       
      
      protected var §?u§:§7"'§ = null;
      
      private var §+p§:Boolean;
      
      private var §4F§:Number;
      
      private var §>!b§:Number;
      
      private var §!!U§:Number;
      
      private var §]!r§:Number;
      
      private var §2",§:Number;
      
      public function §'"6§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_Credits[0]);
         this.§?u§ = new §7"'§(§=!X§.§!'§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2",§ = (§?E§.getItemByName("Container_Credits") as §`!T§).height + §=!X§.§5!P§ * §=!X§.§ !4§;
         this.§]!r§ = -this.§2",§;
         §=!X§.§!'§.§;p§(true);
         §=!X§.resume();
         §=!X§.§]T§(this.§?u§);
         this.§?u§.init();
         this.§<!,§();
         §?E§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
         §?E§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
         §?E§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
         §?E§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?E§.stage.addEventListener(Event.MOUSE_LEAVE,this.§,!_§);
         this.§4F§ = 0;
         this.§>!b§ = 0;
         var _loc1_:String = §9!P§.§-"-§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §?E§.setText(_loc1_,"TextField_Version_Number");
         §?E§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §<!,§() : void
      {
         AngryBirdsFP11.§<!,§();
      }
      
      private function §,z§(param1:MouseEvent) : Boolean
      {
         if(§?E§.stage.mouseX < §?E§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §2<§(param1:MouseEvent) : void
      {
         if(this.§+p§)
         {
            if(!this.§,z§(param1))
            {
               this.§+p§ = false;
               return;
            }
            if(this.§!!U§ - §?E§.stage.mouseY > 0)
            {
               this.§4F§ = this.§!!U§ - §?E§.stage.mouseY;
               this.§!!U§ = §?E§.stage.mouseY;
            }
            else if(this.§!!U§ - §?E§.stage.mouseY < 0)
            {
               this.§4F§ = this.§!!U§ - §?E§.stage.mouseY;
               this.§!!U§ = §?E§.stage.mouseY;
            }
         }
      }
      
      private function §,!k§(param1:MouseEvent) : void
      {
         if(this.§,z§(param1))
         {
            if(!§=!X§.isPaused)
            {
               this.§+p§ = true;
               this.§!!U§ = §?E§.stage.mouseY;
            }
         }
      }
      
      private function §#!d§(param1:MouseEvent) : void
      {
         this.§+p§ = false;
      }
      
      private function §,!_§(param1:Event) : void
      {
         this.§+p§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§,z§(param1))
         {
            if(param1.delta < 0)
            {
               this.§>!b§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§>!b§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§=!X§.isPaused)
         {
            §=!X§.§#H§.update(param1);
            (§?E§.getItemByName("Container_Credits") as §`!T§).setVisibility(true);
            this.§<!^§();
            (§?E§.getItemByName("Container_Credits") as §`!T§).y = Math.floor(-this.§]!r§);
            this.§-!N§(param1);
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      protected function §<!^§() : void
      {
      }
      
      private function §-!N§(param1:Number) : void
      {
         this.§]!r§ += this.§4F§;
         this.§]!r§ += this.§>!b§;
         if(!this.§+p§ && Math.abs(this.§>!b§) < param1 / 15)
         {
            this.§]!r§ += param1 / 15;
         }
         if(this.§]!r§ < -AngryBirdsFP11.§>Y§ * §=!X§.§ !4§)
         {
            this.§]!r§ = this.§2",§;
         }
         else if(this.§]!r§ > this.§2",§)
         {
            this.§]!r§ = -AngryBirdsFP11.§>Y§ * §=!X§.§ !4§;
         }
         if(!this.§+p§)
         {
            this.§4F§ *= 0.9;
            this.§>!b§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?E§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§2<§);
         §?E§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!k§);
         §?E§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§#!d§);
         §?E§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?E§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§,!_§);
         (§?E§.getItemByName("Container_Credits") as §`!T§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §]x§.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
   }
}
