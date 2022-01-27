package §+!9§
{
   import §%!$§.§2!I§;
   import §,J§.§7!A§;
   import §4;§.§,h§;
   import §6!"§.§<!+§;
   import §6!"§.ColorFadeLayerEvent;
   import §?!P§.§@@§;
   import §[!^§.§-m§;
   import §[!^§.§^2§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §var§.§+!^§;
   import §var§.§;!&§;
   
   public class §3!!§ extends §,h§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §-!N§:Class;
      
      protected var §1'§:§<!+§ = null;
      
      public function §3!!§(param1:Boolean, param2:String)
      {
         this.§-!N§ = §&$§;
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
         this.§5x§();
         sHighscoreSidebar.§;!;§(§2!I§.§;n§(this.§-!N§),§2!M§.container,null,null);
         sHighscoreSidebar.container.x = §1F§.§-!I§;
         §2!M§.container.addComponent(sHighscoreSidebar.container);
         §2!M§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §2!M§.getItemByName("MovieClip_SoundOff").setVisibility(!§1F§.§2!1§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            §2!M§.getItemByName("Button_Credits").setVisibility(true);
            §2!M§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            §2!M§.getItemByName("Button_Credits").setVisibility(false);
            §2!M§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §5x§() : void
      {
         var _loc1_:§;!&§ = null;
         if(this.§1'§)
         {
            this.§1'§.§'!4§(1);
            if(this.§1'§.parent == §2!M§.container.mClip)
            {
               §2!M§.container.mClip.removeChild(this.§1'§);
               §2!M§.container.mClip.addChild(this.§1'§);
            }
            else
            {
               §2!M§.container.mClip.addChild(this.§1'§);
            }
            _loc1_ = §2!M§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §2!M§.container.setObjectToFront(_loc1_);
            }
            this.§1'§.§+!>§(0,0.2);
            this.§1'§.addEventListener(ColorFadeLayerEvent.§++§,this.§,!Z§);
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
      
      private function §,!Z§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§1'§ && §2!M§.container.mClip.contains(this.§1'§))
         {
            §2!M§.container.mClip.removeChild(this.§1'§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§1'§ && §2!M§.container.mClip.contains(this.§1'§))
         {
            §2!M§.container.mClip.removeChild(this.§1'§);
         }
         if(this.§1'§)
         {
            this.§1'§.removeEventListener(ColorFadeLayerEvent.§++§,this.§,!Z§);
         }
         §2!M§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §1F§.§false§(!§1F§.§2!1§());
               §2!M§.getItemByName("MovieClip_SoundOff").setVisibility(!§1F§.§2!1§());
               if(§1F§.§2!1§())
               {
                  if(§1F§.§8%§.§;!Z§() == StatePlay.§6! §)
                  {
                     §@@§.§ !8§.background.§=w§();
                  }
                  else if(§1F§.§8%§.§;!Z§() == §0!M§.§6! § || §1F§.§8%§.§;!Z§() == §5!$§.§6! §)
                  {
                     §1F§.§ 9§();
                  }
               }
               break;
            case "LOGOUT":
               §^2§.§1"§(§2!M§);
               break;
            case "CREDITS":
               §@@§.§9@§();
               §@@§.§ !8§.§5!?§(false);
               §@@§.§ !8§.§,!Y§(false);
               § 4§.§=D§ = §5!$§.§6! §;
               §1F§.§"T§ = this.mName;
               §7!A§.§get §(§7!A§.§]a§(HighscoreSidebar.§4!D§));
               mNextState = § 4§.§6! §;
               break;
            case "TUTORIAL":
               if(!§-m§.§'!E§)
               {
                  §-m§.§#c§();
                  §-m§.§[e§(§2!M§);
                  break;
               }
         }
      }
   }
}
