package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §&V§.§!q§;
   import §&V§.§9t§;
   import §0!_§.§>!'§;
   import §0!_§.ColorFadeLayerEvent;
   import §0!b§.§#!=§;
   import §]n§.§9!-§;
   import §]n§.§=!O§;
   import §^=§.§4S§;
   
   public class §for § extends §6!W§
   {
      
      public static var §^c§:HighscoreSidebar;
       
      
      private var §2@§:Class;
      
      protected var §]Z§:§>!'§ = null;
      
      public function §for §(param1:Boolean, param2:String)
      {
         this.§2@§ = §#!U§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc1_:§!q§ = null;
         super.activate();
         if(§^c§ == null)
         {
            §^c§ = new HighscoreSidebar();
         }
         if(this.§]Z§)
         {
            this.§]Z§.§;!E§(1);
            §^!;§.container.mClip.addChild(this.§]Z§);
            _loc1_ = §^!;§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §^!;§.container.setObjectToFront(_loc1_);
            }
            this.§]Z§.§6k§(0,0.2);
            this.§]Z§.addEventListener(ColorFadeLayerEvent.§^S§,this.§2R§);
         }
         §^c§.§2c§(§4S§.§+X§(this.§2@§),§^!;§.container,null,null);
         §^c§.container.x = §-!#§.§6`§;
         §^!;§.container.addComponent(§^c§.container);
         §^!;§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §^!;§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!#§.§'M§());
         if(this.showCreditsButton())
         {
            §^c§.enableCreditsButton(true);
            §^c§.enableHelpButton(false);
            §^!;§.getItemByName("Button_Credits").setVisibility(true);
            §^!;§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            §^c§.enableCreditsButton(false);
            §^c§.enableHelpButton(true);
            §^!;§.getItemByName("Button_Credits").setVisibility(false);
            §^!;§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         §^c§.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §2R§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§]Z§ && §^!;§.container.mClip.contains(this.§]Z§))
         {
            §^!;§.container.mClip.removeChild(this.§]Z§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§]Z§ && §^!;§.container.mClip.contains(this.§]Z§))
         {
            §^!;§.container.mClip.removeChild(this.§]Z§);
         }
         if(this.§]Z§)
         {
            this.§]Z§.removeEventListener(ColorFadeLayerEvent.§^S§,this.§2R§);
         }
         §^!;§.container.removeComponent(§^c§.container);
         §^c§.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         §^c§.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §-!#§.§#+§(!§-!#§.§'M§());
               §^!;§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!#§.§'M§());
               if(§-!#§.§'M§())
               {
                  if(§-!#§.§!!8§.§-D§() == StatePlay.§ !P§)
                  {
                     §#!=§.§&![§.background.§8p§();
                  }
                  else if(§-!#§.§!!8§.§-D§() == §1!Q§.§ !P§ || §-!#§.§!!8§.§-D§() == §<-§.§ !P§ || §-!#§.§!!8§.§-D§() == §;!X§.§ !P§)
                  {
                     §-!#§.§each §();
                  }
               }
               break;
            case "LOGOUT":
               §=!O§.§1+§(§^!;§);
               break;
            case "CREDITS":
               §-!#§.§2t§ = this.mName;
               mNextState = §;!X§.§ !P§;
               break;
            case "TUTORIAL":
               if(!§9!-§.isOpen)
               {
                  §9!-§.§8B§();
                  §9!-§.§'!c§(§^!;§);
                  break;
               }
         }
      }
   }
}
