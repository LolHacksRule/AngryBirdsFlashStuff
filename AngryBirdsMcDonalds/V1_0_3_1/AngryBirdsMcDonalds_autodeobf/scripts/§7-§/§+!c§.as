package §7-§
{
   import § !Y§.§2#§;
   import § %§.§`M§;
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §+F§.§^!Y§;
   import §,!h§.§9K§;
   import §0!8§.§1U§;
   import §2y§.§]`§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §5K§.§[C§;
   import §7z§.§6!Q§;
   import §>!%§.HighscoreSidebar;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §+!c§ extends §[!$§
   {
      
      public static const §<@§:String = "CreditsState";
       
      
      private var §8J§:§6!Q§ = null;
      
      private var §#!C§:Boolean;
      
      private var §;!g§:Number;
      
      private var §&!@§:Number;
      
      private var §;c§:Number;
      
      private var §[9§:Number;
      
      private var §;!&§:Number;
      
      private var §[!@§:Boolean;
      
      public function §+!c§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<!o§ = new §9K§(0,0,0,1);
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_Credits[0]);
         this.§8J§ = new §6!Q§(§2#§.§"@§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§[!@§ = false;
         this.§;!&§ = (mUIView.getItemByName("Container_Credits") as §]`§).height + §2#§.§#k§ * §2#§.§2"§;
         this.§[9§ = -this.§;!&§;
         §2#§.setController(this.§8J§);
         this.§8J§.init();
         §2!M§.§2!-§();
         §`M§.§7!7§.isPaused = false;
         var _loc1_:§]`§ = mUIView.container.getItemByName("Container_Credits") as §]`§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§!!§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!B§);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§,d§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§9!"§);
         this.§;!g§ = 0;
         this.§&!@§ = 0;
         mUIView.setText(§[C§.§?M§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
         if(§2!M§.§&!#§.§-!Z§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §!!§(param1:MouseEvent) : void
      {
         if(this.§#!C§)
         {
            if(this.§;c§ - mUIView.mouseY > 0)
            {
               this.§;!g§ = this.§;c§ - mUIView.mouseY;
               this.§;c§ = mUIView.mouseY;
            }
            else if(this.§;c§ - mUIView.mouseY < 0)
            {
               this.§;!g§ = this.§;c§ - mUIView.mouseY;
               this.§;c§ = mUIView.mouseY;
            }
         }
      }
      
      private function §2!B§(param1:MouseEvent) : void
      {
         if(!this.§ !§())
         {
            this.§#!C§ = true;
            this.§;c§ = mUIView.mouseY;
         }
      }
      
      private function §,d§(param1:MouseEvent) : void
      {
         this.§#!C§ = false;
      }
      
      private function §9!"§(param1:Event) : void
      {
         this.§#!C§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§ !§())
         {
            if(param1.delta < 0)
            {
               this.§&!@§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§&!@§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§^!Y§.§,!=§ || § !J§.§#!D§())
         {
            return §=O§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as §]`§).y = Math.floor(-this.§[9§);
         if(!§2#§.isPaused)
         {
            §2#§.§[I§.update(param1);
            this.§if §(param1);
            this.§ E§();
         }
         else
         {
            §2#§.§1F§();
         }
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      private function § E§() : void
      {
         if(!this.§[!@§)
         {
            §2#§.§"@§.§0f§(true);
            §2#§.§"@§.§5$§(true);
            (§2#§.§"@§.background as §1U§).loop = true;
            this.§[!@§ = true;
            §!!O§();
         }
         (mUIView.getItemByName("Container_Credits") as §]`§).setVisibility(true);
      }
      
      private function §if §(param1:Number) : void
      {
         this.§[9§ += this.§;!g§;
         this.§[9§ += this.§&!@§;
         if(!this.§#!C§ && Math.abs(this.§&!@§) < param1 / 15)
         {
            this.§[9§ += param1 / 15;
         }
         if(this.§[9§ < -§2!M§.§#k§ * §2#§.§2"§)
         {
            this.§[9§ = this.§;!&§;
         }
         else if(this.§[9§ > this.§;!&§)
         {
            this.§[9§ = -§2!M§.§#k§ * §2#§.§2"§;
         }
         if(!this.§#!C§)
         {
            this.§;!g§ *= 0.9;
            this.§&!@§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§!!§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!B§);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§,d§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§9!"§);
         (mUIView.getItemByName("Container_Credits") as §]`§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §2!M§.§4@§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function § !§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
