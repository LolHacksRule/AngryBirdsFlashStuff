package §4%§
{
   import §"%§.§,!n§;
   import §4!$§.§<!2§;
   import §4!3§.§1C§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §=<§.§1+§;
   import §>G§.§]f§;
   import §@!T§.§4!f§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §]! §.HighscoreSidebar;
   import §]!S§.§59§;
   import §^!V§.§^!h§;
   import §^!V§.§^!j§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §^!O§ extends §%0§
   {
      
      public static const §4D§:String = "CreditsState";
       
      
      private var §^!i§:§1C§ = null;
      
      private var §@%§:Boolean;
      
      private var §<!i§:Number;
      
      private var §<D§:Number;
      
      private var §]h§:Number;
      
      private var §->§:Number;
      
      private var §8B§:Number;
      
      private var §4!F§:Boolean;
      
      public function §^!O§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §59§(0,0,0,1);
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_Credits[0]);
         this.§^!i§ = new §1C§(§=!@§.§>!T§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4!F§ = false;
         this.§8B§ = (mUIView.getItemByName("Container_Credits") as §]f§).height + §=!@§.§+! § * §=!@§.§6d§;
         this.§->§ = -this.§8B§;
         §=!@§.setController(this.§^!i§);
         this.§^!i§.init();
         §'j§.§^!>§();
         §<!2§.§!K§.isPaused = false;
         var _loc1_:§]f§ = mUIView.container.getItemByName("Container_Credits") as §]f§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§5!"§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!5§);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§0+§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§=g§);
         this.§<!i§ = 0;
         this.§<D§ = 0;
         mUIView.setText(§1+§.§6u§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
         if(§'j§.§%g§.§"!W§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §5!"§(param1:MouseEvent) : void
      {
         if(this.§@%§)
         {
            if(this.§]h§ - mUIView.mouseY > 0)
            {
               this.§<!i§ = this.§]h§ - mUIView.mouseY;
               this.§]h§ = mUIView.mouseY;
            }
            else if(this.§]h§ - mUIView.mouseY < 0)
            {
               this.§<!i§ = this.§]h§ - mUIView.mouseY;
               this.§]h§ = mUIView.mouseY;
            }
         }
      }
      
      private function §2!5§(param1:MouseEvent) : void
      {
         if(!this.§%B§())
         {
            this.§@%§ = true;
            this.§]h§ = mUIView.mouseY;
         }
      }
      
      private function §0+§(param1:MouseEvent) : void
      {
         this.§@%§ = false;
      }
      
      private function §=g§(param1:Event) : void
      {
         this.§@%§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§%B§())
         {
            if(param1.delta < 0)
            {
               this.§<D§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§<D§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§^!h§.§=!R§ || §^!j§.§ &§())
         {
            return § !"§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as §]f§).y = Math.floor(-this.§->§);
         if(!§=!@§.isPaused)
         {
            §=!@§.§>!b§.update(param1);
            this.§%=§(param1);
            this.§[M§();
         }
         else
         {
            §=!@§.§2f§();
         }
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      private function §[M§() : void
      {
         if(!this.§4!F§)
         {
            §=!@§.§>!T§.§>h§(true);
            §=!@§.§>!T§.§8!2§(true);
            (§=!@§.§>!T§.background as §4!f§).loop = true;
            this.§4!F§ = true;
            §!!S§();
         }
         (mUIView.getItemByName("Container_Credits") as §]f§).setVisibility(true);
      }
      
      private function §%=§(param1:Number) : void
      {
         this.§->§ += this.§<!i§;
         this.§->§ += this.§<D§;
         if(!this.§@%§ && Math.abs(this.§<D§) < param1 / 15)
         {
            this.§->§ += param1 / 15;
         }
         if(this.§->§ < -§'j§.§+! § * §=!@§.§6d§)
         {
            this.§->§ = this.§8B§;
         }
         else if(this.§->§ > this.§8B§)
         {
            this.§->§ = -§'j§.§+! § * §=!@§.§6d§;
         }
         if(!this.§@%§)
         {
            this.§<!i§ *= 0.9;
            this.§<D§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§5!"§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!5§);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§0+§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§=g§);
         (mUIView.getItemByName("Container_Credits") as §]f§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §'j§.§4h§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function §%B§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
