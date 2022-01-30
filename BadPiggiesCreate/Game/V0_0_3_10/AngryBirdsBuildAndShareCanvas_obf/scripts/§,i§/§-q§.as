package §,i§
{
   import §,y§.§8!w§;
   import §0!d§.§7!a§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §9!G§.§]!e§;
   import §<8§.§7!n§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §-q§ extends §0!K§
   {
      
      public static const §]"2§:String = "CreditsState";
       
      
      protected var §<!;§:§8!w§ = null;
      
      private var §>!R§:Boolean;
      
      private var §;g§:Number;
      
      private var §9!]§:Number;
      
      private var §0!v§:Number;
      
      private var §?!u§:Number;
      
      private var §;!l§:Number;
      
      public function §-q§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_Credits[0]);
         this.§<!;§ = new §8!w§(§"!V§.§!j§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!l§ = (§'K§.getItemByName("Container_Credits") as §7!a§).height + §"!V§.§[V§ * §"!V§.§8!e§;
         this.§?!u§ = -this.§;!l§;
         §"!V§.§!j§.§9!q§(true);
         §"!V§.resume();
         §"!V§.§`!G§(this.§<!;§);
         this.§<!;§.init();
         this.§-"5§();
         §'K§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§^!V§);
         §'K§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!q§);
         §'K§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§<!9§);
         §'K§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §'K§.stage.addEventListener(Event.MOUSE_LEAVE,this.§5X§);
         this.§;g§ = 0;
         this.§9!]§ = 0;
         var _loc1_:String = §]!e§.§!!K§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §'K§.setText(_loc1_,"TextField_Version_Number");
         §'K§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §-"5§() : void
      {
         AngryBirdsFP11.§-"5§();
      }
      
      private function §>!c§(param1:MouseEvent) : Boolean
      {
         if(§'K§.stage.mouseX < §'K§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §^!V§(param1:MouseEvent) : void
      {
         if(this.§>!R§)
         {
            if(!this.§>!c§(param1))
            {
               this.§>!R§ = false;
               return;
            }
            if(this.§0!v§ - §'K§.stage.mouseY > 0)
            {
               this.§;g§ = this.§0!v§ - §'K§.stage.mouseY;
               this.§0!v§ = §'K§.stage.mouseY;
            }
            else if(this.§0!v§ - §'K§.stage.mouseY < 0)
            {
               this.§;g§ = this.§0!v§ - §'K§.stage.mouseY;
               this.§0!v§ = §'K§.stage.mouseY;
            }
         }
      }
      
      private function §+!q§(param1:MouseEvent) : void
      {
         if(this.§>!c§(param1))
         {
            if(!§"!V§.isPaused)
            {
               this.§>!R§ = true;
               this.§0!v§ = §'K§.stage.mouseY;
            }
         }
      }
      
      private function §<!9§(param1:MouseEvent) : void
      {
         this.§>!R§ = false;
      }
      
      private function §5X§(param1:Event) : void
      {
         this.§>!R§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§>!c§(param1))
         {
            if(param1.delta < 0)
            {
               this.§9!]§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§9!]§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§"!V§.isPaused)
         {
            §"!V§.§ !o§.update(param1);
            (§'K§.getItemByName("Container_Credits") as §7!a§).setVisibility(true);
            this.§`"'§();
            (§'K§.getItemByName("Container_Credits") as §7!a§).y = Math.floor(-this.§?!u§);
            this.§#'§(param1);
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      protected function §`"'§() : void
      {
      }
      
      private function §#'§(param1:Number) : void
      {
         this.§?!u§ += this.§;g§;
         this.§?!u§ += this.§9!]§;
         if(!this.§>!R§ && Math.abs(this.§9!]§) < param1 / 15)
         {
            this.§?!u§ += param1 / 15;
         }
         if(this.§?!u§ < -AngryBirdsFP11.§2!e§ * §"!V§.§8!e§)
         {
            this.§?!u§ = this.§;!l§;
         }
         else if(this.§?!u§ > this.§;!l§)
         {
            this.§?!u§ = -AngryBirdsFP11.§2!e§ * §"!V§.§8!e§;
         }
         if(!this.§>!R§)
         {
            this.§;g§ *= 0.9;
            this.§9!]§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §'K§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§^!V§);
         §'K§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+!q§);
         §'K§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§<!9§);
         §'K§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §'K§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§5X§);
         (§'K§.getItemByName("Container_Credits") as §7!a§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §#!G§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
   }
}
