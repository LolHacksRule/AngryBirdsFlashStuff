package §94§
{
   import §%#A§.§]!_§;
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<"p§.§?!T§;
   import §@#§.§^#Q§;
   import §["-§.§##J§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §@"X§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var §6m§:§##J§ = null;
      
      private var §4t§:Boolean;
      
      private var §<"^§:Number;
      
      private var §"$7§:Number;
      
      private var §+!T§:Number;
      
      private var §8"9§:Number;
      
      private var §9"n§:Number;
      
      public function §@"X§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_Credits[0]);
         this.§6m§ = new §##J§(§!#A§.§#F§,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4t§ = false;
         this.§9"n§ = (§?Q§.getItemByName("Container_Credits") as §]!_§).height + §!#A§.§<!q§ * §!#A§.§5O§;
         this.§8"9§ = -this.§9"n§;
         this.activateLevelEngine();
         §?Q§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§9#U§);
         §?Q§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §?Q§.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §?Q§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?Q§.stage.addEventListener(Event.MOUSE_LEAVE,this.§5"v§);
         this.§<"^§ = 0;
         this.§"$7§ = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         §!#A§.§#F§.§8"d§(true);
         §!#A§.resume();
         §!#A§.setController(this.§6m§);
         this.§6m§.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = §?!T§.§?!u§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §?Q§.setText(_loc1_,"TextField_Version_Number");
         §?Q§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function § "U§(param1:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.§3#3§())
         {
            if(§?Q§.stage.mouseX < §?Q§.stage.width - 187)
            {
               return true;
            }
         }
         else if(§?Q§.stage.mouseX < §?Q§.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function §9#U§(param1:MouseEvent) : void
      {
         if(this.§4t§)
         {
            if(!this.§ "U§(param1))
            {
               this.§4t§ = false;
               return;
            }
            if(this.§+!T§ - §?Q§.stage.mouseY > 0)
            {
               this.§<"^§ = this.§+!T§ - §?Q§.stage.mouseY;
               this.§+!T§ = §?Q§.stage.mouseY;
            }
            else if(this.§+!T§ - §?Q§.stage.mouseY < 0)
            {
               this.§<"^§ = this.§+!T§ - §?Q§.stage.mouseY;
               this.§+!T§ = §?Q§.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.§ "U§(param1))
         {
            if(!§!#A§.isPaused)
            {
               this.§4t§ = true;
               this.§+!T§ = §?Q§.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.§4t§ = false;
      }
      
      private function §5"v§(param1:Event) : void
      {
         this.§4t§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!§!#A§.isPaused)
         {
            if(this.§ "U§(param1))
            {
               if(param1.delta < 0)
               {
                  this.§"$7§ = 16;
               }
               else if(param1.delta > 0)
               {
                  this.§"$7§ = -16;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!§!#A§.isPaused)
         {
            §!#A§.§=![§.update(param1);
            (§?Q§.getItemByName("Container_Credits") as §]!_§).setVisibility(true);
            this.readyToShowCredits();
            (§?Q§.getItemByName("Container_Credits") as §]!_§).y = Math.floor(-this.§8"9§);
            this.§="d§(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §="d§(param1:Number) : void
      {
         this.§8"9§ += this.§<"^§;
         this.§8"9§ += this.§"$7§;
         if(!this.§4t§ && Math.abs(this.§"$7§) < param1 / 15)
         {
            this.§8"9§ += param1 / 15;
         }
         if(this.§8"9§ < -AngryBirdsBase.screenHeight * §!#A§.§5O§)
         {
            this.§8"9§ = this.§9"n§;
         }
         else if(this.§8"9§ > this.§9"n§)
         {
            this.§8"9§ = -AngryBirdsBase.screenHeight * §!#A§.§5O§;
         }
         if(!this.§4t§)
         {
            this.§<"^§ *= 0.9;
            this.§"$7§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?Q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§9#U§);
         §?Q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         §?Q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         §?Q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?Q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§5"v§);
         (§?Q§.getItemByName("Container_Credits") as §]!_§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               §5"p§(§+$,§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§6"0§();
         }
      }
   }
}
