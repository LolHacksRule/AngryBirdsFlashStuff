package §@!P§
{
   import §!!L§.§&!R§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§?O§;
   import §2!a§.ColorFadeLayerEvent;
   import §6!Q§.§,![§;
   import §6l§.§#!Z§;
   import §6l§.§-a§;
   import §;C§.§+!M§;
   import §;C§.§9!P§;
   import §=F§.§"n§;
   
   public class §3!%§ extends §&!R§
   {
      
      public static var §@<§:HighscoreSidebar;
       
      
      private var §&!O§:Class;
      
      protected var §#j§:§?O§ = null;
      
      public function §3!%§(param1:Boolean, param2:String)
      {
         this.§&!O§ = §+W§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         var _loc1_:§-a§ = null;
         super.activate();
         if(§@<§ == null)
         {
            §@<§ = new HighscoreSidebar();
         }
         if(this.§#j§)
         {
            this.§#j§.§<#§(1);
            §+!`§.container.mClip.addChild(this.§#j§);
            _loc1_ = §+!`§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               §+!`§.container.setObjectToFront(_loc1_);
            }
            this.§#j§.§<!S§(0,0.2);
            this.§#j§.addEventListener(ColorFadeLayerEvent.§?!Q§,this.§!!N§);
         }
         §@<§.§"m§(§,![§.§6b§(this.§&!O§),§+!`§.container,null,null);
         §@<§.container.x = §=i§.§'0§;
         §+!`§.container.addComponent(§@<§.container);
         §+!`§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §+!`§.getItemByName("MovieClip_SoundOff").setVisibility(!§=i§.§&!c§());
         if(this.showCreditsButton())
         {
            §@<§.enableCreditsButton(true);
            §@<§.enableHelpButton(false);
            §+!`§.getItemByName("Button_Credits").setVisibility(true);
            §+!`§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            §@<§.enableCreditsButton(false);
            §@<§.enableHelpButton(true);
            §+!`§.getItemByName("Button_Credits").setVisibility(false);
            §+!`§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         §@<§.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §!!N§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§#j§ && §+!`§.container.mClip.contains(this.§#j§))
         {
            §+!`§.container.mClip.removeChild(this.§#j§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§#j§ && §+!`§.container.mClip.contains(this.§#j§))
         {
            §+!`§.container.mClip.removeChild(this.§#j§);
         }
         if(this.§#j§)
         {
            this.§#j§.removeEventListener(ColorFadeLayerEvent.§?!Q§,this.§!!N§);
         }
         §+!`§.container.removeComponent(§@<§.container);
         §@<§.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         §@<§.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §=i§.§<!?§(!§=i§.§&!c§());
               §+!`§.getItemByName("MovieClip_SoundOff").setVisibility(!§=i§.§&!c§());
               if(§=i§.§&!c§())
               {
                  if(§=i§.§5!D§.§7!a§() == StatePlay.§'2§)
                  {
                     §"n§.§[b§.background.§5,§();
                  }
                  else if(§=i§.§5!D§.§7!a§() == §7!<§.§'2§ || §=i§.§5!D§.§7!a§() == §2>§.§'2§ || §=i§.§5!D§.§7!a§() == §&m§.§'2§)
                  {
                     §=i§.§ !A§();
                  }
               }
               break;
            case "LOGOUT":
               §+!M§.§++§(§+!`§);
               break;
            case "CREDITS":
               §=i§.§0!U§ = this.mName;
               mNextState = §&m§.§'2§;
               break;
            case "TUTORIAL":
               if(!§9!P§.isOpen)
               {
                  §9!P§.§&P§();
                  §9!P§.§4_§(§+!`§);
                  break;
               }
         }
      }
   }
}
