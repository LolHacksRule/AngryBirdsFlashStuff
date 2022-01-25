package
{
   import §#[§.§@"§;
   import §%!5§.§7;§;
   import §%!l§.§&t§;
   import §+$§.§[!a§;
   import §0i§.§4!%§;
   import §37§.§&!;§;
   import §37§.§8!`§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §6x§.§9E§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §[h§.§ !&§;
   import §each §.§'!3§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §6!F§ extends §2'§
   {
      
      public static const §[!1§:String = "CreditsState";
       
      
      private var §#!V§:§&t§ = null;
      
      private var §;d§:Boolean;
      
      private var §;!!§:Number;
      
      private var §'!;§:Number;
      
      private var §^j§:Number;
      
      private var §%o§:Number;
      
      private var §?!h§:Number;
      
      private var §9f§:Boolean;
      
      public function §6!F§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0!P§ = new §9E§(0,0,0,1);
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_Credits[0]);
         this.§#!V§ = new §&t§(§7;§.§1h§,"MCDONALDS_THEME_1",false,5.7);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9f§ = false;
         this.§?!h§ = (mUIView.getItemByName("Container_Credits") as § !&§).height + §7;§.§]!n§ * §7;§.§,§;
         this.§%o§ = -this.§?!h§;
         §7;§.setController(this.§#!V§);
         this.§#!V§.init();
         §9!_§.§>!X§();
         §'!3§.§ !i§.isPaused = false;
         var _loc1_:§ !&§ = mUIView.container.getItemByName("Container_Credits") as § !&§;
         mUIView.addEventListener(MouseEvent.MOUSE_MOVE,this.§'>§);
         mUIView.addEventListener(MouseEvent.MOUSE_DOWN,this.§=! §);
         mUIView.addEventListener(MouseEvent.MOUSE_UP,this.§;e§);
         mUIView.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.§2!0§);
         this.§;!!§ = 0;
         this.§'!;§ = 0;
         mUIView.setText(§4!%§.§ !!§,"TextField_Version_Number");
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
         if(§9!_§.§1!?§.§`2§)
         {
            sHighscoreSidebar.enableLogOutButton(true);
         }
         sHighscoreSidebar.enableCreditsButton(false);
      }
      
      private function §'>§(param1:MouseEvent) : void
      {
         if(this.§;d§)
         {
            if(this.§^j§ - mUIView.mouseY > 0)
            {
               this.§;!!§ = this.§^j§ - mUIView.mouseY;
               this.§^j§ = mUIView.mouseY;
            }
            else if(this.§^j§ - mUIView.mouseY < 0)
            {
               this.§;!!§ = this.§^j§ - mUIView.mouseY;
               this.§^j§ = mUIView.mouseY;
            }
         }
      }
      
      private function §=! §(param1:MouseEvent) : void
      {
         if(!this.§2!H§())
         {
            this.§;d§ = true;
            this.§^j§ = mUIView.mouseY;
         }
      }
      
      private function §;e§(param1:MouseEvent) : void
      {
         this.§;d§ = false;
      }
      
      private function §2!0§(param1:Event) : void
      {
         this.§;d§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(!this.§2!H§())
         {
            if(param1.delta < 0)
            {
               this.§'!;§ = 16;
            }
            if(param1.delta > 0)
            {
               this.§'!;§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(§8!`§.§7!5§ || §&!;§.§'d§())
         {
            return § =§.STATE_STATUS_RUNNING;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         (mUIView.getItemByName("Container_Credits") as § !&§).y = Math.floor(-this.§%o§);
         if(!§7;§.isPaused)
         {
            §7;§.§5F§.update(param1);
            this.§<Q§(param1);
            this.§"j§();
         }
         else
         {
            §7;§.§!!F§();
         }
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      private function §"j§() : void
      {
         if(!this.§9f§)
         {
            §7;§.§1h§.§4!@§(true);
            §7;§.§1h§.§^p§(true);
            (§7;§.§1h§.background as §@"§).loop = true;
            this.§9f§ = true;
            §%!b§();
         }
         (mUIView.getItemByName("Container_Credits") as § !&§).setVisibility(true);
      }
      
      private function §<Q§(param1:Number) : void
      {
         this.§%o§ += this.§;!!§;
         this.§%o§ += this.§'!;§;
         if(!this.§;d§ && Math.abs(this.§'!;§) < param1 / 15)
         {
            this.§%o§ += param1 / 15;
         }
         if(this.§%o§ < -§9!_§.§]!n§ * §7;§.§,§)
         {
            this.§%o§ = this.§?!h§;
         }
         else if(this.§%o§ > this.§?!h§)
         {
            this.§%o§ = -§9!_§.§]!n§ * §7;§.§,§;
         }
         if(!this.§;d§)
         {
            this.§;!!§ *= 0.9;
            this.§'!;§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.removeEventListener(MouseEvent.MOUSE_MOVE,this.§'>§);
         mUIView.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=! §);
         mUIView.removeEventListener(MouseEvent.MOUSE_UP,this.§;e§);
         mUIView.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.§2!0§);
         (mUIView.getItemByName("Container_Credits") as § !&§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc4_:URLRequest = null;
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §9!_§.§9§;
               break;
            case "CREDITS_GAE_BUTTON":
               _loc4_ = new URLRequest("https://developers.google.com/appengine/");
               navigateToURL(_loc4_,"_blank");
         }
      }
      
      private function §2!H§() : Boolean
      {
         var _loc1_:DisplayObjectContainer = mUIView.getItemByName("MovieClip_Sidebar_BG").mClip.parent;
         return mUIView.stage.mouseX > _loc1_.x;
      }
   }
}
