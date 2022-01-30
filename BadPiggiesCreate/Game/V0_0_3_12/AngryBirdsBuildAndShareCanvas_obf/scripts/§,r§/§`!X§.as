package §,r§
{
   import §"p§.§@8§;
   import §%!,§.§,v§;
   import §&=§.§"!z§;
   import §5!8§.§+!?§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §`!X§ extends §,v§
   {
      
      public static const §8n§:String = "CreditsState";
       
      
      protected var §?!4§:§"!z§ = null;
      
      private var §'c§:Boolean;
      
      private var §%1§:Number;
      
      private var §["0§:Number;
      
      private var §use§:Number;
      
      private var § "0§:Number;
      
      private var §,!C§:Number;
      
      public function §`!X§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_Credits[0]);
         this.§?!4§ = new §"!z§(§%W§.§5"8§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,!C§ = (§?F§.getItemByName("Container_Credits") as §+!?§).height + §%W§.§-!'§ * §%W§.§`N§;
         this.§ "0§ = -this.§,!C§;
         §%W§.§5"8§.§'N§(true);
         §%W§.resume();
         §%W§.§92§(this.§?!4§);
         this.§?!4§.init();
         this.§9!u§();
         §?F§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§;"#§);
         §?F§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
         §?F§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§9!H§);
         §?F§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?F§.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!i§);
         this.§%1§ = 0;
         this.§["0§ = 0;
         var _loc1_:String = §@8§.§+!x§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §?F§.setText(_loc1_,"TextField_Version_Number");
         §?F§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §9!u§() : void
      {
         AngryBirdsFP11.§9!u§();
      }
      
      private function §8i§(param1:MouseEvent) : Boolean
      {
         if(§?F§.stage.mouseX < §?F§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §;"#§(param1:MouseEvent) : void
      {
         if(this.§'c§)
         {
            if(!this.§8i§(param1))
            {
               this.§'c§ = false;
               return;
            }
            if(this.§use§ - §?F§.stage.mouseY > 0)
            {
               this.§%1§ = this.§use§ - §?F§.stage.mouseY;
               this.§use§ = §?F§.stage.mouseY;
            }
            else if(this.§use§ - §?F§.stage.mouseY < 0)
            {
               this.§%1§ = this.§use§ - §?F§.stage.mouseY;
               this.§use§ = §?F§.stage.mouseY;
            }
         }
      }
      
      private function §?!J§(param1:MouseEvent) : void
      {
         if(this.§8i§(param1))
         {
            if(!§%W§.isPaused)
            {
               this.§'c§ = true;
               this.§use§ = §?F§.stage.mouseY;
            }
         }
      }
      
      private function §9!H§(param1:MouseEvent) : void
      {
         this.§'c§ = false;
      }
      
      private function §3!i§(param1:Event) : void
      {
         this.§'c§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§8i§(param1))
         {
            if(param1.delta < 0)
            {
               this.§["0§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§["0§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§%W§.isPaused)
         {
            §%W§.§6h§.update(param1);
            (§?F§.getItemByName("Container_Credits") as §+!?§).setVisibility(true);
            this.§61§();
            (§?F§.getItemByName("Container_Credits") as §+!?§).y = Math.floor(-this.§ "0§);
            this.§@!R§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      protected function §61§() : void
      {
      }
      
      private function §@!R§(param1:Number) : void
      {
         this.§ "0§ += this.§%1§;
         this.§ "0§ += this.§["0§;
         if(!this.§'c§ && Math.abs(this.§["0§) < param1 / 15)
         {
            this.§ "0§ += param1 / 15;
         }
         if(this.§ "0§ < -AngryBirdsFP11.§%T§ * §%W§.§`N§)
         {
            this.§ "0§ = this.§,!C§;
         }
         else if(this.§ "0§ > this.§,!C§)
         {
            this.§ "0§ = -AngryBirdsFP11.§%T§ * §%W§.§`N§;
         }
         if(!this.§'c§)
         {
            this.§%1§ *= 0.9;
            this.§["0§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §?F§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;"#§);
         §?F§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§?!J§);
         §?F§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§9!H§);
         §?F§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §?F§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!i§);
         (§?F§.getItemByName("Container_Credits") as §+!?§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §^u§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
   }
}
