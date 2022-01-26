package §'!O§
{
   import §-!"§.§=p§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §2`§.HighscoreSidebar;
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9!@§.ColorFadeLayerEvent;
   import §9b§.§"!S§;
   import §@R§.set;
   import §^!5§.§,4§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §=j§ extends §=p§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §]V§:Class;
      
      protected var §4!N§:§-k§ = null;
      
      public function §=j§(param1:Boolean, param2:String)
      {
         this.§]V§ = §7w§;
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
         this.§%!f§();
         sHighscoreSidebar.§%?§(set.§=!^§(this.§]V§),§]!9§.container,null,null);
         sHighscoreSidebar.container.x = §,L§.§1'§;
         §]!9§.container.addComponent(sHighscoreSidebar.container);
         §]!9§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(!§,L§.§`!+§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            §]!9§.getItemByName("Button_Credits").setVisibility(true);
            §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            §]!9§.getItemByName("Button_Credits").setVisibility(false);
            §]!9§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §%!f§() : void
      {
         var _loc1_:§&-§ = null;
         if(this.§4!N§)
         {
            this.§4!N§.§import§(1);
            if(this.§4!N§.parent == §]!9§.container.mClip)
            {
               §]!9§.container.mClip.removeChild(this.§4!N§);
               §]!9§.container.mClip.addChild(this.§4!N§);
            }
            else
            {
               §]!9§.container.mClip.addChild(this.§4!N§);
            }
            _loc1_ = §]!9§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §]!9§.container.setObjectToFront(_loc1_);
            }
            this.§4!N§.§4!?§(0,0.2);
            this.§4!N§.addEventListener(ColorFadeLayerEvent.override,this.§=%§);
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
      
      private function §=%§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§4!N§ && §]!9§.container.mClip.contains(this.§4!N§))
         {
            §]!9§.container.mClip.removeChild(this.§4!N§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§4!N§ && §]!9§.container.mClip.contains(this.§4!N§))
         {
            §]!9§.container.mClip.removeChild(this.§4!N§);
         }
         if(this.§4!N§)
         {
            this.§4!N§.removeEventListener(ColorFadeLayerEvent.override,this.§=%§);
         }
         §]!9§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §,L§.§`!b§(!§,L§.§`!+§());
               §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(!§,L§.§`!+§());
               if(§,L§.§`!+§())
               {
                  if(§,L§.§+w§.§2!0§() == StatePlay.§@o§)
                  {
                     §"!S§.§-!7§.background.§`!B§();
                  }
                  else if(§,L§.§+w§.§2!0§() == §#!_§.§@o§ || §,L§.§+w§.§2!0§() == §0L§.§@o§)
                  {
                     §,L§.§`!]§();
                  }
               }
               break;
            case "LOGOUT":
               §"!b§.§,!Z§(§]!9§);
               break;
            case "CREDITS":
               §"!S§.§99§();
               §"!S§.§-!7§.§%2§(false);
               §"!S§.§-!7§.§3g§(false);
               §<r§.§>!D§ = §0L§.§@o§;
               §,L§.§[!;§ = this.mName;
               §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§1!§));
               mNextState = §<r§.§@o§;
               break;
            case "TUTORIAL":
               if(!§-Z§.§ !6§)
               {
                  §-Z§.§8G§();
                  §-Z§.§0;§(§]!9§);
                  break;
               }
         }
      }
   }
}
