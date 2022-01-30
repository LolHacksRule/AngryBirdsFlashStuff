package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§7!8§;
   import §3!S§.§%s§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §@!;§.§&F§;
   import §]"&§.§,!G§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §>!o§ extends §<"+§
   {
      
      public static const §8G§:String = "CreditsState";
       
      
      protected var §4!H§:§,!G§ = null;
      
      private var §9v§:Boolean;
      
      private var §0"'§:Number;
      
      private var §!j§:Number;
      
      private var §;!-§:Number;
      
      private var §7!B§:Number;
      
      private var §65§:Number;
      
      public function §>!o§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_Credits[0]);
         this.§4!H§ = new §,!G§(§%s§.§`!f§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§65§ = (§;i§.getItemByName("Container_Credits") as §>"-§).height + §%s§.§9%§ * §%s§.§-=§;
         this.§7!B§ = -this.§65§;
         §%s§.§`!f§.§6M§(true);
         §%s§.resume();
         §%s§.§4!-§(this.§4!H§);
         this.§4!H§.init();
         this.§4g§();
         §;i§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§%!z§);
         §;i§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§+!T§);
         §;i§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§"!I§);
         §;i§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;i§.stage.addEventListener(Event.MOUSE_LEAVE,this.§4!T§);
         this.§0"'§ = 0;
         this.§!j§ = 0;
         var _loc1_:String = §&F§.§&"%§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §;i§.setText(_loc1_,"TextField_Version_Number");
         §;i§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      protected function §4g§() : void
      {
         AngryBirdsFP11.§4g§();
      }
      
      private function §&!"§(param1:MouseEvent) : Boolean
      {
         if(§;i§.stage.mouseX < §;i§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §%!z§(param1:MouseEvent) : void
      {
         if(this.§9v§)
         {
            if(!this.§&!"§(param1))
            {
               this.§9v§ = false;
               return;
            }
            if(this.§;!-§ - §;i§.stage.mouseY > 0)
            {
               this.§0"'§ = this.§;!-§ - §;i§.stage.mouseY;
               this.§;!-§ = §;i§.stage.mouseY;
            }
            else if(this.§;!-§ - §;i§.stage.mouseY < 0)
            {
               this.§0"'§ = this.§;!-§ - §;i§.stage.mouseY;
               this.§;!-§ = §;i§.stage.mouseY;
            }
         }
      }
      
      private function §+!T§(param1:MouseEvent) : void
      {
         if(this.§&!"§(param1))
         {
            if(!§%s§.isPaused)
            {
               this.§9v§ = true;
               this.§;!-§ = §;i§.stage.mouseY;
            }
         }
      }
      
      private function §"!I§(param1:MouseEvent) : void
      {
         this.§9v§ = false;
      }
      
      private function §4!T§(param1:Event) : void
      {
         this.§9v§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§&!"§(param1))
         {
            if(param1.delta < 0)
            {
               this.§!j§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§!j§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§%s§.isPaused)
         {
            §%s§.§]x§.update(param1);
            (§;i§.getItemByName("Container_Credits") as §>"-§).setVisibility(true);
            this.§?h§();
            (§;i§.getItemByName("Container_Credits") as §>"-§).y = Math.floor(-this.§7!B§);
            this.§]!s§(param1);
         }
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      protected function §?h§() : void
      {
      }
      
      private function §]!s§(param1:Number) : void
      {
         this.§7!B§ += this.§0"'§;
         this.§7!B§ += this.§!j§;
         if(!this.§9v§ && Math.abs(this.§!j§) < param1 / 15)
         {
            this.§7!B§ += param1 / 15;
         }
         if(this.§7!B§ < -AngryBirdsFP11.§ "2§ * §%s§.§-=§)
         {
            this.§7!B§ = this.§65§;
         }
         else if(this.§7!B§ > this.§65§)
         {
            this.§7!B§ = -AngryBirdsFP11.§ "2§ * §%s§.§-=§;
         }
         if(!this.§9v§)
         {
            this.§0"'§ *= 0.9;
            this.§!j§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §;i§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§%!z§);
         §;i§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+!T§);
         §;i§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§"!I§);
         §;i§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §;i§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§4!T§);
         (§;i§.getItemByName("Container_Credits") as §>"-§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §+e§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
   }
}
