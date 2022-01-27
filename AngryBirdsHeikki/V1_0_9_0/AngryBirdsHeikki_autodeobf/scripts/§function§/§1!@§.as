package §function§
{
   import §&!6§.§5r§;
   import §'!C§.§-!S§;
   import §'!C§.ColorFadeLayerEvent;
   import §0i§.§[K§;
   import §1Q§.§'!`§;
   import §1Q§.§6'§;
   import §44§.§#Z§;
   import §44§.§,!M§;
   import §4M§.HighscoreSidebar;
   import §8! §.§#z§;
   import §>!F§.§9!Z§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §1!@§ extends §5r§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §%C§:Class;
      
      protected var §;'§:§-!S§ = null;
      
      public function §1!@§(param1:Boolean, param2:String)
      {
         this.§%C§ = §1!§;
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
         this.§&E§();
         sHighscoreSidebar.§1!`§(§[K§.§0T§(this.§%C§),§@K§.container,null,null);
         sHighscoreSidebar.container.x = §"H§.§38§;
         §@K§.container.addComponent(sHighscoreSidebar.container);
         §@K§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §@K§.getItemByName("MovieClip_SoundOff").setVisibility(!§"H§.§0<§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            §@K§.getItemByName("Button_Credits").setVisibility(true);
            §@K§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            §@K§.getItemByName("Button_Credits").setVisibility(false);
            §@K§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §&E§() : void
      {
         var _loc1_:§6'§ = null;
         if(this.§;'§)
         {
            this.§;'§.§5=§(1);
            if(this.§;'§.parent == §@K§.container.mClip)
            {
               §@K§.container.mClip.removeChild(this.§;'§);
               §@K§.container.mClip.addChild(this.§;'§);
            }
            else
            {
               §@K§.container.mClip.addChild(this.§;'§);
            }
            _loc1_ = §@K§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §@K§.container.setObjectToFront(_loc1_);
            }
            this.§;'§.§5J§(0,0.2);
            this.§;'§.addEventListener(ColorFadeLayerEvent.§+!Y§,this.§@W§);
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
      
      private function §@W§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§;'§ && §@K§.container.mClip.contains(this.§;'§))
         {
            §@K§.container.mClip.removeChild(this.§;'§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§;'§ && §@K§.container.mClip.contains(this.§;'§))
         {
            §@K§.container.mClip.removeChild(this.§;'§);
         }
         if(this.§;'§)
         {
            this.§;'§.removeEventListener(ColorFadeLayerEvent.§+!Y§,this.§@W§);
         }
         §@K§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §"H§.§7!T§(!§"H§.§0<§());
               §@K§.getItemByName("MovieClip_SoundOff").setVisibility(!§"H§.§0<§());
               if(§"H§.§0<§())
               {
                  if(§"H§.§>R§.§+!D§() == StatePlay.§94§)
                  {
                     §9!Z§.§5!$§.background.§"s§();
                  }
                  else if(§"H§.§>R§.§+!D§() == §'"§.§94§ || §"H§.§>R§.§+!D§() == §-!I§.§94§)
                  {
                     §"H§.§4!Z§();
                  }
               }
               break;
            case "LOGOUT":
               §,!M§.§%Q§(§@K§);
               break;
            case "CREDITS":
               §9!Z§.§0!G§();
               §9!Z§.§5!$§.§8t§(false);
               §9!Z§.§5!$§.§5!=§(false);
               §8E§.§8c§ = §-!I§.§94§;
               §"H§.§]X§ = this.mName;
               §#z§.§[6§(§#z§.§8F§(HighscoreSidebar.§ null§));
               mNextState = §8E§.§94§;
               break;
            case "TUTORIAL":
               if(!§#Z§.§+!>§)
               {
                  §#Z§.§=!V§();
                  §#Z§.§53§(§@K§);
                  break;
               }
         }
      }
   }
}
