package §6!5§
{
   import § !T§.§ q§;
   import § !T§.§=!x§;
   import § ,§.§>u§;
   import §!!^§.§-^§;
   import §&<§.§^!#§;
   import §@!6§.§3!5§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §=!b§ extends StateCutScene
   {
       
      
      private var §62§:Loader;
      
      private var §57§:Boolean;
      
      private var §9!V§:Boolean;
      
      public function §=!b§(param1:§ q§, param2:§>u§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!I§.§[f§.§@!C§.closeAllPopups();
         this.§57§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§>"'§;
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§70§(false);
         this.§9!V§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§[w§();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(false);
      }
      
      override protected function startCutScene() : void
      {
         § !z§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §-^§.§6"#§(_loc1_);
         if(_loc2_)
         {
            this.§62§ = new Loader();
            this.§62§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            § !z§.getItemByName("Container_Cutscene").mClip.addChild(this.§62§);
            if(_loc1_.search("intro") != -1)
            {
               §3!5§.§<!9§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §3!5§.§<!9§("birds_outro");
            }
         }
         else
         {
            §?9§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!x§ = null;
         var _loc3_:* = null;
         if(§="4§.previousLevel)
         {
            _loc2_ = §="4§.getEpisodeForLevel(§="4§.previousLevel);
            _loc3_ = §="4§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §="4§.getEpisodeForLevel(§="4§.currentLevel);
            _loc3_ = §="4§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §&"3§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§62§)
         {
            § !z§.getItemByName("Container_Cutscene").mClip.removeChild(this.§62§);
            this.§62§.unloadAndStop();
            this.§62§ = null;
         }
         if(this.§57§)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§70§(true);
         }
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(this.§9!V§);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §3!5§.§,!8§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
