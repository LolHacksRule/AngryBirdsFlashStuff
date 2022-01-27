package §!X§
{
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §3"8§.§@0§;
   import §4##§.§7!B§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §7"Q§ extends StateCutScene
   {
       
      
      private var §34§:Loader;
      
      public function §7"Q§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         §>I§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = "cutscene_" + this.getCutSceneName();
         var _loc2_:ByteArray = §@0§.§!"[§(_loc1_);
         if(_loc2_)
         {
            this.§34§ = new Loader();
            this.§34§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §>I§.getItemByName("MovieClip_CutScene").mClip.addChild(this.§34§);
         }
         else
         {
            onCutSceneNotAvailable(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§ "0§ = null;
         var _loc3_:* = null;
         if(§ !p§.previousLevel)
         {
            _loc2_ = § !p§.getEpisodeForLevel(§ !p§.previousLevel);
            _loc3_ = § !p§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = § !p§.getEpisodeForLevel(§ !p§.currentLevel);
            _loc3_ = § !p§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         if(this.§34§)
         {
            §>I§.getItemByName("MovieClip_CutScene").mClip.removeChild(this.§34§);
            this.§34§.unloadAndStop();
            this.§34§ = null;
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §@§.§=Y§("misc_menubuttonproceed_1");
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override protected function get stateOnDefaultEnd() : String
      {
         return §5+§.§'#2§;
      }
   }
}
