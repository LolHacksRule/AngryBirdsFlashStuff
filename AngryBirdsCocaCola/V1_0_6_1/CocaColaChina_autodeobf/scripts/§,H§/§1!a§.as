package §,H§
{
   import §+!6§.HighscoreSidebar;
   import §4!W§.§@R§;
   import §4!W§.ColorFadeLayerEvent;
   import §7!H§.§&![§;
   import §7!H§.§12§;
   import §;A§.§7!K§;
   import §<!!§.§=§;
   import §=!#§.§4i§;
   import §=!#§.§^!>§;
   import §@W§.§2!_§;
   
   public class §1!a§ extends §2!_§
   {
      
      public static var §+D§:HighscoreSidebar;
       
      
      private var §<!Y§:Class;
      
      protected var §`! §:§@R§ = null;
      
      public function §1!a§(param1:Boolean, param2:String)
      {
         this.§<!Y§ = §!!§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc1_:§&![§ = null;
         super.activate();
         if(§+D§ == null)
         {
            §+D§ = new HighscoreSidebar();
         }
         if(this.§`! §)
         {
            this.§`! §.§9v§(1);
            §=!I§.container.mClip.addChild(this.§`! §);
            _loc1_ = §=!I§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §=!I§.container.setObjectToFront(_loc1_);
            }
            this.§`! §.§=@§(0,0.2);
            this.§`! §.addEventListener(ColorFadeLayerEvent.§1F§,this.§5z§);
         }
         §+D§.§`!6§(§=§.§!B§(this.§<!Y§),§=!I§.container,null,null);
         §+D§.container.x = §6T§.§,x§;
         §=!I§.container.addComponent(§+D§.container);
         §=!I§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §=!I§.getItemByName("MovieClip_SoundOff").setVisibility(!§6T§.§=_§());
         if(this.showCreditsButton())
         {
            §+D§.enableCreditsButton(true);
            §+D§.enableHelpButton(false);
            §=!I§.getItemByName("Button_Credits").setVisibility(true);
            §=!I§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            §+D§.enableCreditsButton(false);
            §+D§.enableHelpButton(true);
            §=!I§.getItemByName("Button_Credits").setVisibility(false);
            §=!I§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         §+D§.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §5z§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§`! § && §=!I§.container.mClip.contains(this.§`! §))
         {
            §=!I§.container.mClip.removeChild(this.§`! §);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§`! § && §=!I§.container.mClip.contains(this.§`! §))
         {
            §=!I§.container.mClip.removeChild(this.§`! §);
         }
         if(this.§`! §)
         {
            this.§`! §.removeEventListener(ColorFadeLayerEvent.§1F§,this.§5z§);
         }
         §=!I§.container.removeComponent(§+D§.container);
         §+D§.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         §+D§.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §6T§.§+!3§(!§6T§.§=_§());
               §=!I§.getItemByName("MovieClip_SoundOff").setVisibility(!§6T§.§=_§());
               if(§6T§.§=_§())
               {
                  if(§6T§.§!Z§.§<!S§() == StatePlay.§^!O§)
                  {
                     §7!K§.§=j§.background.§7!Y§();
                  }
                  else if(§6T§.§!Z§.§<!S§() == §4!L§.§^!O§ || §6T§.§!Z§.§<!S§() == §;!S§.§^!O§ || §6T§.§!Z§.§<!S§() == §<Z§.§^!O§)
                  {
                     §6T§.§"t§();
                  }
               }
               break;
            case "LOGOUT":
               §4i§.§3!?§(§=!I§);
               break;
            case "CREDITS":
               §6T§.§-5§ = this.mName;
               mNextState = §<Z§.§^!O§;
               break;
            case "TUTORIAL":
               if(!§^!>§.isOpen)
               {
                  §^!>§.§->§();
                  §^!>§.§>U§(§=!I§);
                  break;
               }
         }
      }
   }
}
