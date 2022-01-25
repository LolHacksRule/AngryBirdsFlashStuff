package §%n§
{
   import §'!G§.§4!§;
   import §,@§.§"!'§;
   import §,@§.ColorFadeLayerEvent;
   import §-v§.§,!1§;
   import §2"§.§#!P§;
   import §2"§.§76§;
   import §32§.HighscoreSidebar;
   import §6!@§.§ !!§;
   import §7]§.§'T§;
   import §7]§.§;T§;
   
   public class §91§ extends § !!§
   {
      
      public static var §'! §:HighscoreSidebar;
       
      
      private var §=7§:Class;
      
      protected var §5d§:§"!'§ = null;
      
      public function §91§(param1:Boolean, param2:String)
      {
         this.§=7§ = §&G§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc1_:§'T§ = null;
         super.activate();
         if(§'! § == null)
         {
            §'! § = new HighscoreSidebar();
         }
         if(this.§5d§)
         {
            this.§5d§.§1K§(1);
            §5!R§.container.mClip.addChild(this.§5d§);
            _loc1_ = §5!R§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §5!R§.container.setObjectToFront(_loc1_);
            }
            this.§5d§.§3d§(0,0.2);
            this.§5d§.addEventListener(ColorFadeLayerEvent.§>!'§,this.§3!3§);
         }
         §'! §.§3+§(§4!§.§[!a§(this.§=7§),§5!R§.container,null,null);
         §'! §.container.x = §"!@§.§9<§;
         §5!R§.container.addComponent(§'! §.container);
         §5!R§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!@§.§6t§());
         if(this.showCreditsButton())
         {
            §'! §.enableCreditsButton(true);
            §'! §.enableHelpButton(false);
            §5!R§.getItemByName("Button_Credits").setVisibility(true);
            §5!R§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            §'! §.enableCreditsButton(false);
            §'! §.enableHelpButton(true);
            §5!R§.getItemByName("Button_Credits").setVisibility(false);
            §5!R§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         §'! §.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §3!3§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§5d§ && §5!R§.container.mClip.contains(this.§5d§))
         {
            §5!R§.container.mClip.removeChild(this.§5d§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§5d§ && §5!R§.container.mClip.contains(this.§5d§))
         {
            §5!R§.container.mClip.removeChild(this.§5d§);
         }
         if(this.§5d§)
         {
            this.§5d§.removeEventListener(ColorFadeLayerEvent.§>!'§,this.§3!3§);
         }
         §5!R§.container.removeComponent(§'! §.container);
         §'! §.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         §'! §.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §"!@§.§8!I§(!§"!@§.§6t§());
               §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!@§.§6t§());
               if(§"!@§.§6t§())
               {
                  if(§"!@§.§!!_§.§3]§() == StatePlay.§^6§)
                  {
                     §,!1§.§2T§.background.§`!>§();
                  }
                  else if(§"!@§.§!!_§.§3]§() == §^3§.§^6§ || §"!@§.§!!_§.§3]§() == §@t§.§^6§ || §"!@§.§!!_§.§3]§() == §8!_§.§^6§)
                  {
                     §"!@§.§>!$§();
                  }
               }
               break;
            case "LOGOUT":
               §#!P§.§8Z§(§5!R§);
               break;
            case "CREDITS":
               §"!@§.§2_§ = this.mName;
               mNextState = §8!_§.§^6§;
               break;
            case "TUTORIAL":
               if(!§76§.isOpen)
               {
                  §76§.§98§();
                  §76§.§-!B§(§5!R§);
                  break;
               }
         }
      }
   }
}
