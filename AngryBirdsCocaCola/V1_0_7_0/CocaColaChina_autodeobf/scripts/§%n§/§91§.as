package §%n§
{
   import §'4§.§0!D§;
   import §'4§.§@;§;
   import §,@§.§"!'§;
   import §,@§.ColorFadeLayerEvent;
   import §-v§.§,!1§;
   import §1"§.HighscoreSidebar;
   import §2!$§.§<!%§;
   import §2!$§.§=!&§;
   import §6!@§.§ !!§;
   import §?@§.§^!M§;
   
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
         var _loc1_:§=!&§ = null;
         super.activate();
         if(§'! § == null)
         {
            §'! § = new HighscoreSidebar();
         }
         if(this.§5d§)
         {
            this.§5d§.§66§(1);
            §5!R§.container.mClip.addChild(this.§5d§);
            _loc1_ = §5!R§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §5!R§.container.setObjectToFront(_loc1_);
            }
            this.§5d§.§3d§(0,0.2);
            this.§5d§.addEventListener(ColorFadeLayerEvent.§>!'§,this.§3!3§);
         }
         §'! §.§,0§(§^!M§.§2!^§(this.§=7§),§5!R§.container,null,null);
         §'! §.container.x = §"!@§.§`?§;
         §5!R§.container.addComponent(§'! §.container);
         §5!R§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!@§.§8!I§());
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         §'! §.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §"!@§.§0!?§(!§"!@§.§8!I§());
               §5!R§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!@§.§8!I§());
               if(§"!@§.§8!I§())
               {
                  if(§"!@§.§5!8§.§3]§() == StatePlay.§^6§)
                  {
                     §,!1§.§2T§.background.§9!!§();
                  }
                  else if(§"!@§.§5!8§.§3]§() == §^3§.§^6§ || §"!@§.§5!8§.§3]§() == §@t§.§^6§ || §"!@§.§5!8§.§3]§() == §8!_§.§^6§)
                  {
                     §"!@§.§6t§();
                  }
               }
               break;
            case "LOGOUT":
               §0!D§.§]@§(§5!R§);
               break;
            case "CREDITS":
               §"!@§.§9!L§ = this.mName;
               mNextState = §8!_§.§^6§;
               break;
            case "TUTORIAL":
               if(!§@;§.isOpen)
               {
                  §@;§.§76§();
                  §@;§.§^5§(§5!R§);
                  break;
               }
         }
      }
   }
}
