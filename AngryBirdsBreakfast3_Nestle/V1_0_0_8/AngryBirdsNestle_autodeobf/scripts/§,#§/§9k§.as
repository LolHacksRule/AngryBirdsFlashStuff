package §,#§
{
   import §"!G§.§3!f§;
   import §"",§.§<!V§;
   import §8!e§.§,!M§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §>P§.§,3§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §9k§ extends StateCutScene
   {
       
      
      private var §@!D§:Loader;
      
      private var §>"#§:Boolean;
      
      private var §;6§:Boolean;
      
      public function §9k§(param1:§3"&§, param2:§3!f§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-O§.§5!1§.§-6§.closeAllPopups();
         this.§>"#§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§88§;
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+;§(false);
         this.§;6§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§83§();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(false);
      }
      
      override protected function startCutScene() : void
      {
         §^!6§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §<!V§.§`!4§(_loc1_);
         if(_loc2_)
         {
            this.§@!D§ = new Loader();
            this.§@!D§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §^!6§.getItemByName("Container_Cutscene").mClip.addChild(this.§@!D§);
            if(_loc1_.search("intro") != -1)
            {
               §]d§.§^!J§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §]d§.§^!J§("birds_outro");
            }
         }
         else
         {
            §'6§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§,!M§ = null;
         var _loc3_:* = null;
         if(§!3§.previousLevel)
         {
            _loc2_ = §!3§.getEpisodeForLevel(§!3§.previousLevel);
            _loc3_ = §!3§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §!3§.getEpisodeForLevel(§!3§.currentLevel);
            _loc3_ = §!3§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §5n§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§@!D§)
         {
            §^!6§.getItemByName("Container_Cutscene").mClip.removeChild(this.§@!D§);
            this.§@!D§.unloadAndStop();
            this.§@!D§ = null;
         }
         if(this.§>"#§)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+;§(true);
         }
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(this.§;6§);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §]d§.§]!u§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
