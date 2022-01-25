package §#!]§
{
   import §!R§.§#!L§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §]!]§.§<1§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §"!k§ extends StateCutScene
   {
       
      
      private var §#"5§:Loader;
      
      private var §'!2§:Boolean;
      
      private var §6]§:Boolean;
      
      public function §"!k§(param1:§-g§, param2:§^!_§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!2§.§7O§.§0!l§.closeAllPopups();
         this.§'!2§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§;c§;
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§?!§(false);
         this.§6]§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§+E§();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(false);
      }
      
      override protected function startCutScene() : void
      {
         §4!q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §<1§.§3!R§(_loc1_);
         if(_loc2_)
         {
            this.§#"5§ = new Loader();
            this.§#"5§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §4!q§.getItemByName("Container_Cutscene").mClip.addChild(this.§#"5§);
            if(_loc1_.search("intro") != -1)
            {
               §4!@§.§`!w§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §4!@§.§`!w§("birds_outro");
            }
         }
         else
         {
            §]I§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§4<§ = null;
         var _loc3_:* = null;
         if(§#n§.previousLevel)
         {
            _loc2_ = §#n§.getEpisodeForLevel(§#n§.previousLevel);
            _loc3_ = §#n§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §#n§.getEpisodeForLevel(§#n§.currentLevel);
            _loc3_ = §#n§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §6!k§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§#"5§)
         {
            §4!q§.getItemByName("Container_Cutscene").mClip.removeChild(this.§#"5§);
            this.§#"5§.unloadAndStop();
            this.§#"5§ = null;
         }
         if(this.§'!2§)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§?!§(true);
         }
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(this.§6]§);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §4!@§.§ true§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
