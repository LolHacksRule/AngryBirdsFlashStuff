package §+B§
{
   import §&!b§.§2!L§;
   import §'!F§.§6!_§;
   import §'!F§.§>1§;
   import §+!M§.§7!0§;
   import §+!M§.§`q§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §use §.§;0§;
   import §use §.ColorFadeLayerEvent;
   
   public class §-2§ extends §6!9§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §&!!§:Class;
      
      protected var §#8§:§;0§ = null;
      
      public function §-2§(param1:Boolean, param2:String)
      {
         this.§&!!§ = §-A§;
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
         this.§4B§();
         sHighscoreSidebar.§ Z§(§2!L§.§-!7§(this.§&!!§),§ ,§.container,null,null);
         sHighscoreSidebar.container.x = §"!R§.§-m§;
         § ,§.container.addComponent(sHighscoreSidebar.container);
         § ,§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         § ,§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!R§.§@!<§());
         if(this.showCreditsButton())
         {
            sHighscoreSidebar.enableCreditsButton(true);
            sHighscoreSidebar.enableHelpButton(false);
            § ,§.getItemByName("Button_Credits").setVisibility(true);
            § ,§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         else
         {
            sHighscoreSidebar.enableCreditsButton(false);
            sHighscoreSidebar.enableHelpButton(true);
            § ,§.getItemByName("Button_Credits").setVisibility(false);
            § ,§.getItemByName("Button_Tutorial").setVisibility(true);
         }
         this.setInitialState();
      }
      
      protected function §4B§() : void
      {
         var _loc1_:§`q§ = null;
         if(this.§#8§)
         {
            this.§#8§.§[!,§(1);
            if(this.§#8§.parent == § ,§.container.mClip)
            {
               § ,§.container.mClip.removeChild(this.§#8§);
               § ,§.container.mClip.addChild(this.§#8§);
            }
            else
            {
               § ,§.container.mClip.addChild(this.§#8§);
            }
            _loc1_ = § ,§.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               § ,§.container.setObjectToFront(_loc1_);
            }
            this.§#8§.§^;§(0,0.2);
            this.§#8§.addEventListener(ColorFadeLayerEvent.§2b§,this.§5]§);
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
      
      private function §5]§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§#8§ && § ,§.container.mClip.contains(this.§#8§))
         {
            § ,§.container.mClip.removeChild(this.§#8§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§#8§ && § ,§.container.mClip.contains(this.§#8§))
         {
            § ,§.container.mClip.removeChild(this.§#8§);
         }
         if(this.§#8§)
         {
            this.§#8§.removeEventListener(ColorFadeLayerEvent.§2b§,this.§5]§);
         }
         § ,§.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "BUTTON_FACEBOOK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "MUTE":
               §"!R§.§5c§(!§"!R§.§@!<§());
               § ,§.getItemByName("MovieClip_SoundOff").setVisibility(!§"!R§.§@!<§());
               if(§"!R§.§@!<§())
               {
                  if(§"!R§.§=>§.§>!#§() == StatePlay.§[!%§)
                  {
                     §&#§.§3!D§.background.§&!3§();
                  }
                  else if(§"!R§.§=>§.§>!#§() == §#!b§.§[!%§ || §"!R§.§=>§.§>!#§() == §;Q§.§[!%§)
                  {
                     §"!R§.§1P§();
                  }
               }
               break;
            case "LOGOUT":
               §>1§.§]!Y§(§ ,§);
               break;
            case "CREDITS":
               §&#§.§?p§();
               §&#§.§3!D§.§"!E§(false);
               §&#§.§3!D§.§>!?§(false);
               §1!g§.§9!F§ = §;Q§.§[!%§;
               §"!R§.§54§ = this.mName;
               §#w§.§8>§(§#w§.§0?§(HighscoreSidebar.§!!Q§));
               mNextState = §1!g§.§[!%§;
               break;
            case "TUTORIAL":
               if(!§6!_§.§3!G§)
               {
                  §6!_§.§`!C§();
                  §6!_§.§with§(§ ,§);
               }
         }
      }
   }
}
