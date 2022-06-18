package §2>§
{
   import §2T§.§&M§;
   import §3u§.§,i§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import §@!;§.§!!=§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,a§ extends §9Y§
   {
      
      public static const §]! §:String = "CreditsState";
       
      
      protected var §?[§:§,i§ = null;
      
      private var §+7§:Boolean;
      
      private var §^! §:Number;
      
      private var §#m§:Number;
      
      private var §7m§:Number;
      
      private var §2,§:Number;
      
      private var §%3§:Number;
      
      public function §,a§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_Credits[0]);
         this.§?[§ = new §,i§(§[!4§.§continue§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§+7§ = false;
         this.§%3§ = (§!s§.getItemByName("Container_Credits") as §&M§).height + §[!4§.§=6§ * §[!4§.§<^§;
         this.§2,§ = -this.§%3§;
         §[!4§.§continue§.§3!;§(true);
         §[!4§.resume();
         §[!4§.§>L§(this.§?[§);
         this.§?[§.init();
         this.§,3§();
         §!s§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §!s§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!,§);
         §!s§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§2?§);
         §!s§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!s§.stage.addEventListener(Event.MOUSE_LEAVE,this.§-§);
         this.§^! § = 0;
         this.§#m§ = 0;
         var _loc1_:String = §!!=§.§'!M§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         this.§<!E§(_loc1_,_loc2_);
      }
      
      protected function §<!E§(param1:String, param2:String) : void
      {
         §!s§.setText(param1,"TextField_Version_Number");
         §!s§.setText(param2,"TextField_Version_Number_Server");
      }
      
      protected function §,3§() : void
      {
         AngryBirdsFP11.§,3§();
      }
      
      private function §&#§(param1:MouseEvent) : Boolean
      {
         if(§!s§.stage.mouseX < §!s§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§+7§)
         {
            if(!this.§&#§(param1))
            {
               this.§+7§ = false;
               return;
            }
            if(this.§7m§ - §!s§.stage.mouseY > 0)
            {
               this.§^! § = this.§7m§ - §!s§.stage.mouseY;
               this.§7m§ = §!s§.stage.mouseY;
            }
            else if(this.§7m§ - §!s§.stage.mouseY < 0)
            {
               this.§^! § = this.§7m§ - §!s§.stage.mouseY;
               this.§7m§ = §!s§.stage.mouseY;
            }
         }
      }
      
      private function §+!,§(param1:MouseEvent) : void
      {
         if(this.§&#§(param1))
         {
            if(!§[!4§.isPaused)
            {
               this.§+7§ = true;
               this.§7m§ = §!s§.stage.mouseY;
            }
         }
      }
      
      private function §2?§(param1:MouseEvent) : void
      {
         this.§+7§ = false;
      }
      
      private function §-§(param1:Event) : void
      {
         this.§+7§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§&#§(param1))
         {
            if(param1.delta < 0)
            {
               this.§#m§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§#m§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§[!4§.isPaused)
         {
            §[!4§.controller.update(param1);
            (§!s§.getItemByName("Container_Credits") as §&M§).setVisibility(true);
            this.§>f§();
            (§!s§.getItemByName("Container_Credits") as §&M§).y = Math.floor(-this.§2,§);
            this.§6r§(param1);
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      protected function §>f§() : void
      {
      }
      
      private function §6r§(param1:Number) : void
      {
         this.§2,§ += this.§^! §;
         this.§2,§ += this.§#m§;
         if(!this.§+7§ && Math.abs(this.§#m§) < param1 / 15)
         {
            this.§2,§ += param1 / 15;
         }
         if(this.§2,§ < -AngryBirdsFP11.screenHeight * §[!4§.§<^§)
         {
            this.§2,§ = this.§%3§;
         }
         else if(this.§2,§ > this.§%3§)
         {
            this.§2,§ = -AngryBirdsFP11.screenHeight * §[!4§.§<^§;
         }
         if(!this.§+7§)
         {
            this.§^! § *= 0.9;
            this.§#m§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §!s§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §!s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+!,§);
         §!s§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§2?§);
         §!s§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §!s§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§-§);
         (§!s§.getItemByName("Container_Credits") as §&M§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §&!8§.§]! §;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
   }
}
