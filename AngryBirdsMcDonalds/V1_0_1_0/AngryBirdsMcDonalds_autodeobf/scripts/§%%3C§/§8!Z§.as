package §%<§
{
   import §"v§.§5!T§;
   import §'!W§.§>!m§;
   import §,![§.§[!S§;
   import §-1§.§%#§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §4i§.§9!7§;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §=T§.§0!%§;
   import §=T§.§=W§;
   import §^5§.§]!,§;
   import §`!W§.§2v§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §throw§.§"r§;
   
   public class §8!Z§ extends §+V§
   {
      
      public static const §<P§:String = "CreditsState";
       
      
      private var §6!L§:§9!7§ = null;
      
      private var §]o§:Boolean;
      
      private var §2&§:Number;
      
      private var §4K§:Number;
      
      private var §[p§:Number;
      
      private var §+7§:Number;
      
      private var §!!C§:Number;
      
      private var §6!f§:Boolean;
      
      public function §8!Z§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=F§ = new §>!m§(0,0,0,1);
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_Credits[0]);
         this.§6!L§ = new §9!7§(§<H§.§=3§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§6!f§ = false;
         this.§!!C§ = (mUIView.getItemByName("Container_Credits") as §[!S§).height + §<H§.§<!T§ * §<H§.§^d§;
         this.§+7§ = -this.§!!C§;
         §<H§.setController(this.§6!L§);
         this.§6!L§.init();
         §;!4§.§#3§();
         §5!T§.§7U§.isPaused = false;
         var _loc1_:§[!S§ = mUIView.container.getItemByName("Container_Credits") as §[!S§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§@u§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!j§);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§>!l§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§^0§);
         this.§2&§ = 0;
         this.§4K§ = 0;
         mUIView.setText(§2v§.§5!-§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
         if(§;!4§.§8'§.§2!^§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §@u§(param1:MouseEvent) : void
      {
         if(this.§]o§)
         {
            if(this.§[p§ - mUIView.mouseY > 0)
            {
               this.§2&§ = this.§[p§ - mUIView.mouseY;
               this.§[p§ = mUIView.mouseY;
            }
            else if(this.§[p§ - mUIView.mouseY < 0)
            {
               this.§2&§ = this.§[p§ - mUIView.mouseY;
               this.§[p§ = mUIView.mouseY;
            }
         }
      }
      
      private function §,!j§(param1:MouseEvent) : void
      {
         if(!this.§!!]§())
         {
            this.§]o§ = true;
            this.§[p§ = mUIView.mouseY;
         }
      }
      
      private function §>!l§(param1:MouseEvent) : void
      {
         this.§]o§ = false;
      }
      
      private function §^0§(param1:Event) : void
      {
         this.§]o§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§!!]§())
         {
            if(param1.delta < 0)
            {
               this.§4K§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§4K§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§=W§.§,s§ || §0!%§.§6=§())
         {
            return §]!,§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as §[!S§).y = Math.floor(-this.§+7§);
         if(!§<H§.isPaused)
         {
            §<H§.§ u§.update(param1);
            this.§'!5§(param1);
            this.§<z§();
         }
         else
         {
            §<H§.§!d§();
         }
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      private function §<z§() : void
      {
         if(!this.§6!f§)
         {
            §<H§.§=3§.§&e§(true);
            §<H§.§=3§.§]!<§(true);
            (§<H§.§=3§.background as §"r§).loop = true;
            this.§6!f§ = true;
            §"B§();
         }
         (mUIView.getItemByName("Container_Credits") as §[!S§).setVisibility(true);
      }
      
      private function §'!5§(param1:Number) : void
      {
         this.§+7§ += this.§2&§;
         this.§+7§ += this.§4K§;
         if(!this.§]o§ && Math.abs(this.§4K§) < param1 / 15)
         {
            this.§+7§ += param1 / 15;
         }
         if(this.§+7§ < -§;!4§.§<!T§ * §<H§.§^d§)
         {
            this.§+7§ = this.§!!C§;
         }
         else if(this.§+7§ > this.§!!C§)
         {
            this.§+7§ = -§;!4§.§<!T§ * §<H§.§^d§;
         }
         if(!this.§]o§)
         {
            this.§2&§ *= 0.9;
            this.§4K§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§@u§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!j§);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§>!l§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§^0§);
         (mUIView.getItemByName("Container_Credits") as §[!S§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §;!4§.§9!1§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function §!!]§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
