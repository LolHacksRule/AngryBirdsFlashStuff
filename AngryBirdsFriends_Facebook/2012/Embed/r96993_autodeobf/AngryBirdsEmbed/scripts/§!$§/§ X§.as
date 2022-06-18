package §!$§
{
   import §!^§.§"%§;
   import §-!'§.§in §;
   import §3v§.§1a§;
   import §>%§.§]3§;
   import §>A§.§`!!§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § X§ extends §3!'§
   {
      
      public static const §9"§:String = "CreditsState";
       
      
      protected var §;r§:§`!!§ = null;
      
      private var §`!4§:Boolean;
      
      private var §3!G§:Number;
      
      private var §4'§:Number;
      
      private var §7C§:Number;
      
      private var §^!-§:Number;
      
      private var §=?§:Number;
      
      public function § X§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_Credits[0]);
         this.§;r§ = new §`!!§(§]3§.§;v§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=?§ = (§+!2§.getItemByName("Container_Credits") as §in §).height + §]3§.§#A§ * §]3§.§>F§;
         this.§^!-§ = -this.§=?§;
         §]3§.§;v§.§@!A§(true);
         §]3§.resume();
         §]3§.§1_§(this.§;r§);
         this.§;r§.init();
         AngryBirdsFP11.§[! §();
         §+!2§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §+!2§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§ o§);
         §+!2§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§#b§);
         §+!2§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!2§.stage.addEventListener(Event.MOUSE_LEAVE,this.§]!H§);
         this.§3!G§ = 0;
         this.§4'§ = 0;
         var _loc1_:String = §1a§.§]j§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §+!2§.setText(_loc1_,"TextField_Version_Number");
         §+!2§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §[!D§(param1:MouseEvent) : Boolean
      {
         if(§+!2§.stage.mouseX < §+!2§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.§`!4§)
         {
            if(!this.§[!D§(param1))
            {
               this.§`!4§ = false;
               return;
            }
            if(this.§7C§ - §+!2§.stage.mouseY > 0)
            {
               this.§3!G§ = this.§7C§ - §+!2§.stage.mouseY;
               this.§7C§ = §+!2§.stage.mouseY;
            }
            else if(this.§7C§ - §+!2§.stage.mouseY < 0)
            {
               this.§3!G§ = this.§7C§ - §+!2§.stage.mouseY;
               this.§7C§ = §+!2§.stage.mouseY;
            }
         }
      }
      
      private function § o§(param1:MouseEvent) : void
      {
         if(this.§[!D§(param1))
         {
            if(!§]3§.isPaused)
            {
               this.§`!4§ = true;
               this.§7C§ = §+!2§.stage.mouseY;
            }
         }
      }
      
      private function §#b§(param1:MouseEvent) : void
      {
         this.§`!4§ = false;
      }
      
      private function §]!H§(param1:Event) : void
      {
         this.§`!4§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§[!D§(param1))
         {
            if(param1.delta < 0)
            {
               this.§4'§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§4'§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§]3§.isPaused)
         {
            §]3§.controller.update(param1);
            (§+!2§.getItemByName("Container_Credits") as §in §).setVisibility(true);
            this.§4p§();
            (§+!2§.getItemByName("Container_Credits") as §in §).y = Math.floor(-this.§^!-§);
            this.§3a§(param1);
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      protected function §4p§() : void
      {
      }
      
      private function §3a§(param1:Number) : void
      {
         this.§^!-§ += this.§3!G§;
         this.§^!-§ += this.§4'§;
         if(!this.§`!4§ && Math.abs(this.§4'§) < param1 / 15)
         {
            this.§^!-§ += param1 / 15;
         }
         if(this.§^!-§ < -AngryBirdsFP11.screenHeight * §]3§.§>F§)
         {
            this.§^!-§ = this.§=?§;
         }
         else if(this.§^!-§ > this.§=?§)
         {
            this.§^!-§ = -AngryBirdsFP11.screenHeight * §]3§.§>F§;
         }
         if(!this.§`!4§)
         {
            this.§3!G§ *= 0.9;
            this.§4'§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §+!2§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         §+!2§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ o§);
         §+!2§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§#b§);
         §+!2§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §+!2§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§]!H§);
         (§+!2§.getItemByName("Container_Credits") as §in §).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = § &§.§9"§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
   }
}
