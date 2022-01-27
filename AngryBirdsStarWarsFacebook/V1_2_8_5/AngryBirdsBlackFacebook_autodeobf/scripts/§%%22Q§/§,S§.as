package §%"Q§
{
   import §&!j§.§5#+§;
   import §+"I§.§90§;
   import §8!h§.§-V§;
   import §`"1§.§=Q§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §,S§ extends StateCutScene
   {
       
      
      private var §`"K§:Loader;
      
      public function §,S§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         §^!b§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = "cutscene_" + this.getCutSceneName();
         var _loc2_:ByteArray = §90§.§"L§(_loc1_);
         if(_loc2_)
         {
            this.§`"K§ = new Loader();
            this.§`"K§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §^!b§.getItemByName("MovieClip_CutScene").mClip.addChild(this.§`"K§);
         }
         else
         {
            onCutSceneNotAvailable(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§5!K§ = null;
         var _loc3_:* = null;
         if(§'""§.previousLevel)
         {
            _loc2_ = §'""§.getEpisodeForLevel(§'""§.previousLevel);
            _loc3_ = §'""§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §'""§.getEpisodeForLevel(§'""§.currentLevel);
            _loc3_ = §'""§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         if(this.§`"K§)
         {
            §^!b§.getItemByName("MovieClip_CutScene").mClip.removeChild(this.§`"K§);
            this.§`"K§.unloadAndStop();
            this.§`"K§ = null;
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override protected function get stateOnDefaultEnd() : String
      {
         return §'!V§.§-!U§;
      }
   }
}
