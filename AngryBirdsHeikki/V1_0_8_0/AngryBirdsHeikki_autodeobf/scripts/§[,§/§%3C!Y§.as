package §[,§
{
   import § !3§.§[a§;
   import §!a§.§&6§;
   import §#!T§.§&2§;
   import §'z§.§3?§;
   import §'z§.§super§;
   import §0!&§.§@=§;
   import §5!5§.§1!4§;
   import §5!5§.ColorFadeLayerEvent;
   import §;!0§.§-!'§;
   import §;!0§.§4!I§;
   import §`V§.HighscoreSidebar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §<!Y§ extends §&6§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §@K§:Class;
      
      protected var §%L§:§1!4§ = null;
      
      public function §<!Y§(param1:Boolean, param2:String)
      {
         this.§@K§ = §#!2§;
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
         this.§<>§();
         sHighscoreSidebar.§]m§(§[a§.§`l§(this.§@K§),§[L§.container,null,null);
         sHighscoreSidebar.container.x = §2!S§.§0!+§;
         §[L§.container.addComponent(sHighscoreSidebar.container);
         §[L§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §[L§.getItemByName("MovieClip_SoundOff").setVisibility(!§2!S§.§'o§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            §[L§.getItemByName("Button_Credits").setVisibility(true);
            §[L§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            §[L§.getItemByName("Button_Credits").setVisibility(false);
            §[L§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §<>§() : void
      {
         var _loc1_:§-!'§ = null;
         if(this.§%L§)
         {
            this.§%L§.§[m§(1);
            if(this.§%L§.parent == §[L§.container.mClip)
            {
               §[L§.container.mClip.removeChild(this.§%L§);
               §[L§.container.mClip.addChild(this.§%L§);
            }
            else
            {
               §[L§.container.mClip.addChild(this.§%L§);
            }
            _loc1_ = §[L§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §[L§.container.setObjectToFront(_loc1_);
            }
            this.§%L§.§?!%§(0,0.2);
            this.§%L§.addEventListener(ColorFadeLayerEvent.§4=§,this.§@!_§);
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
      
      private function §@!_§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§%L§ && §[L§.container.mClip.contains(this.§%L§))
         {
            §[L§.container.mClip.removeChild(this.§%L§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§%L§ && §[L§.container.mClip.contains(this.§%L§))
         {
            §[L§.container.mClip.removeChild(this.§%L§);
         }
         if(this.§%L§)
         {
            this.§%L§.removeEventListener(ColorFadeLayerEvent.§4=§,this.§@!_§);
         }
         §[L§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §2!S§.§'!"§(!§2!S§.§'o§());
               §[L§.getItemByName("MovieClip_SoundOff").setVisibility(!§2!S§.§'o§());
               if(§2!S§.§'o§())
               {
                  if(§2!S§.§'!5§.§6Q§() == StatePlay.§+Z§)
                  {
                     §&2§.§4!1§.background.§7!Z§();
                  }
                  else if(§2!S§.§'!5§.§6Q§() == §3!<§.§+Z§ || §2!S§.§'!5§.§6Q§() == §+D§.§+Z§)
                  {
                     §2!S§.§3!E§();
                  }
               }
               break;
            case "LOGOUT":
               §3?§.§"=§(§[L§);
               break;
            case "CREDITS":
               §&2§.§"!J§();
               §&2§.§4!1§.§5h§(false);
               §&2§.§4!1§.§-H§(false);
               §4!M§.§!`§ = §+D§.§+Z§;
               §2!S§.§1!b§ = this.mName;
               §@=§.§-!Q§(§@=§.§%^§(HighscoreSidebar.§0!I§));
               mNextState = §4!M§.§+Z§;
               break;
            case "TUTORIAL":
               if(!§super§.§6!U§)
               {
                  §super§.§"!-§();
                  §super§.§3!N§(§[L§);
                  break;
               }
         }
      }
   }
}
