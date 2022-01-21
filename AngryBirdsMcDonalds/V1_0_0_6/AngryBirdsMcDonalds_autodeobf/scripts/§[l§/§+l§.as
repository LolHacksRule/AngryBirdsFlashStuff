package §[l§
{
   import §#M§.§+!Z§;
   import §%r§.§;!X§;
   import §'d§.§8!]§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §31§.§ !A§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §8<§.§<!7§;
   import §<!R§.HighscoreSidebar;
   import §=!K§.§do§;
   import §@!^§.§?!=§;
   import §]q§.§+$§;
   import §]q§.§6l§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+l§ extends §,Q§
   {
      
      public static const §!_§:String = "CreditsState";
       
      
      private var §-!O§:§;!X§ = null;
      
      private var §#!'§:Boolean;
      
      private var §?!1§:Number;
      
      private var §];§:Number;
      
      private var §1!!§:Number;
      
      private var §-<§:Number;
      
      private var §=2§:Number;
      
      private var §'!E§:Boolean;
      
      public function §+l§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6K§ = new §8!]§(0,0,0,1);
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_Credits[0]);
         this.§-!O§ = new §;!X§(§+!Z§.§?!<§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'!E§ = false;
         this.§=2§ = (mUIView.getItemByName("Container_Credits") as § !A§).height + §+!Z§.§@+§ * §+!Z§.§4!k§;
         this.§-<§ = -this.§=2§;
         §+!Z§.setController(this.§-!O§);
         this.§-!O§.init();
         § 4§.§8!4§();
         §do§.§]X§.isPaused = false;
         var _loc1_:§ !A§ = mUIView.container.getItemByName("Container_Credits") as § !A§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§;s§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!i§);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§>C§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§3!K§);
         this.§?!1§ = 0;
         this.§];§ = 0;
         mUIView.setText(§<!7§.§0H§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
         if(§ 4§.§?H§.§4!A§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §;s§(param1:MouseEvent) : void
      {
         if(this.§#!'§)
         {
            if(this.§1!!§ - mUIView.mouseY > 0)
            {
               this.§?!1§ = this.§1!!§ - mUIView.mouseY;
               this.§1!!§ = mUIView.mouseY;
            }
            else if(this.§1!!§ - mUIView.mouseY < 0)
            {
               this.§?!1§ = this.§1!!§ - mUIView.mouseY;
               this.§1!!§ = mUIView.mouseY;
            }
         }
      }
      
      private function §1!i§(param1:MouseEvent) : void
      {
         if(!this.§-C§())
         {
            this.§#!'§ = true;
            this.§1!!§ = mUIView.mouseY;
         }
      }
      
      private function §>C§(param1:MouseEvent) : void
      {
         this.§#!'§ = false;
      }
      
      private function §3!K§(param1:Event) : void
      {
         this.§#!'§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§-C§())
         {
            if(param1.delta < 0)
            {
               this.§];§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§];§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§+$§.§+!l§ || §6l§.§'^§())
         {
            return §1!b§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as § !A§).y = Math.floor(-this.§-<§);
         if(!§+!Z§.isPaused)
         {
            §+!Z§.§8j§.update(param1);
            this.§+!?§(param1);
            this.§55§();
         }
         else
         {
            §+!Z§.§6d§();
         }
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      private function §55§() : void
      {
         if(!this.§'!E§)
         {
            §+!Z§.§?!<§.§,!7§(true);
            §+!Z§.§?!<§.§#!Z§(true);
            (§+!Z§.§?!<§.background as §?!=§).loop = true;
            this.§'!E§ = true;
            §#!F§();
         }
         (mUIView.getItemByName("Container_Credits") as § !A§).setVisibility(true);
      }
      
      private function §+!?§(param1:Number) : void
      {
         this.§-<§ += this.§?!1§;
         this.§-<§ += this.§];§;
         if(!this.§#!'§ && Math.abs(this.§];§) < param1 / 15)
         {
            this.§-<§ += param1 / 15;
         }
         if(this.§-<§ < -§ 4§.§@+§ * §+!Z§.§4!k§)
         {
            this.§-<§ = this.§=2§;
         }
         else if(this.§-<§ > this.§=2§)
         {
            this.§-<§ = -§ 4§.§@+§ * §+!Z§.§4!k§;
         }
         if(!this.§#!'§)
         {
            this.§?!1§ *= 0.9;
            this.§];§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§;s§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!i§);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§>C§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§3!K§);
         (mUIView.getItemByName("Container_Credits") as § !A§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = § 4§.§#!m§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function §-C§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
