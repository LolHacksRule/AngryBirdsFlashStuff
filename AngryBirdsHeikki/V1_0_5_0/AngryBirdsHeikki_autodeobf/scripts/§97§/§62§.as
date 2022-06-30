package §97§
{
   import §1!K§.§=t§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§"6§;
   import §93§.§^!H§;
   import §=X§.§7!4§;
   import §@=§.§'3§;
   import §@=§.ColorFadeLayerEvent;
   import §[!C§.HighscoreSidebar;
   import §]c§.§6S§;
   import §]c§.§>g§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §62§ extends §>!^§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §]3§:Class;
      
      protected var §>l§:§'3§ = null;
      
      public function §62§(param1:Boolean, param2:String)
      {
         this.§]3§ = §3c§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sHighscoreSidebar == null)
         {
            sHighscoreSidebar = new HighscoreSidebar();
         }
         this.§@!R§();
         sHighscoreSidebar.§7!!§(§=t§.§1X§(this.§]3§),§?P§.container,null,null);
         sHighscoreSidebar.container.x = §,-§.§ for§;
         §?P§.container.addComponent(sHighscoreSidebar.container);
         §?P§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §?P§.getItemByName("MovieClip_SoundOff").setVisibility(!§,-§.§7G§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            §?P§.getItemByName("Button_Credits").setVisibility(true);
            §?P§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            §?P§.getItemByName("Button_Credits").setVisibility(false);
            §?P§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §@!R§() : void
      {
         var _loc1_:§"6§ = null;
         if(this.§>l§)
         {
            this.§>l§.§?!#§(1);
            if(this.§>l§.parent == §?P§.container.mClip)
            {
               §?P§.container.mClip.removeChild(this.§>l§);
               §?P§.container.mClip.addChild(this.§>l§);
            }
            else
            {
               §?P§.container.mClip.addChild(this.§>l§);
            }
            _loc1_ = §?P§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §?P§.container.setObjectToFront(_loc1_);
            }
            this.§>l§.§%I§(0,0.2);
            this.§>l§.addEventListener(ColorFadeLayerEvent.§-!8§,this.§7o§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         sHighscoreSidebar.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §7o§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§>l§ && §?P§.container.mClip.contains(this.§>l§))
         {
            §?P§.container.mClip.removeChild(this.§>l§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§>l§ && §?P§.container.mClip.contains(this.§>l§))
         {
            §?P§.container.mClip.removeChild(this.§>l§);
         }
         if(this.§>l§)
         {
            this.§>l§.removeEventListener(ColorFadeLayerEvent.§-!8§,this.§7o§);
         }
         §?P§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §,-§.§=M§(!§,-§.§7G§());
               §?P§.getItemByName("MovieClip_SoundOff").setVisibility(!§,-§.§7G§());
               if(§,-§.§7G§())
               {
                  if(§,-§.§4-§.§>!-§() == StatePlay.§4l§)
                  {
                     §1L§.§"f§.background.§45§();
                  }
                  else if(§,-§.§4-§.§>!-§() == §1j§.§4l§ || §,-§.§4-§.§>!-§() == §3A§.§4l§)
                  {
                     §,-§.§"!,§();
                  }
               }
               break;
            case "LOGOUT":
               §6S§.§@!;§(§?P§);
               break;
            case "CREDITS":
               §1L§.§;!Q§();
               §1L§.§"f§.§2!A§(false);
               §1L§.§"f§.§`f§(false);
               §]!X§.§]!?§ = §3A§.§4l§;
               §,-§.§,O§ = this.mName;
               §7!4§.§^!>§(§7!4§.§!!"§(HighscoreSidebar.§]"§));
               mNextState = §]!X§.§4l§;
               break;
            case "TUTORIAL":
               if(!§>g§.§]!$§)
               {
                  §>g§.§!;§();
                  §>g§.§6i§(§?P§);
                  break;
               }
         }
      }
   }
}
