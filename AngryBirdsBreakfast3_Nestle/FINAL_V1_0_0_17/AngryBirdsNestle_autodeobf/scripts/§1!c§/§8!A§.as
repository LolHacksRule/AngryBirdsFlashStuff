package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §<!0§.§-k§;
   import §[!Z§.§>D§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8!A§ extends StateCutScene
   {
       
      
      private var § 4§:Loader;
      
      private var §31§:Boolean;
      
      private var §%"§:Boolean;
      
      public function §8!A§(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !4§.§%"7§.§+!J§.closeAllPopups();
         this.§31§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§9!Z§;
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§;!I§(false);
         this.§%"§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§'"5§();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(false);
      }
      
      override protected function startCutScene() : void
      {
         §^!T§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §-k§.§]t§(_loc1_);
         if(_loc2_)
         {
            this.§ 4§ = new Loader();
            this.§ 4§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §^!T§.getItemByName("Container_Cutscene").mClip.addChild(this.§ 4§);
            if(_loc1_.search("intro") != -1)
            {
               §>D§.§9!q§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §>D§.§9!q§("birds_outro");
            }
         }
         else
         {
            §2!m§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§7C§ = null;
         var _loc3_:* = null;
         if(§4a§.previousLevel)
         {
            _loc2_ = §4a§.getEpisodeForLevel(§4a§.previousLevel);
            _loc3_ = §4a§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §4a§.getEpisodeForLevel(§4a§.currentLevel);
            _loc3_ = §4a§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §=""§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§ 4§)
         {
            §^!T§.getItemByName("Container_Cutscene").mClip.removeChild(this.§ 4§);
            this.§ 4§.unloadAndStop();
            this.§ 4§ = null;
         }
         if(this.§31§)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§;!I§(true);
         }
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(this.§%"§);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §>D§.§>!%§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
