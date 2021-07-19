package §<"c§
{
   import §2"a§.§9#L§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §&"3§ extends StateCutScene
   {
       
      
      private var §@!p§:Loader;
      
      public function §&"3§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function startCutScene() : void
      {
         §@;§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = "cutscene_" + this.getCutSceneName();
         var _loc2_:ByteArray = §9#L§.§0j§(_loc1_);
         if(_loc2_)
         {
            this.§@!p§ = new Loader();
            this.§@!p§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §@;§.getItemByName("MovieClip_CutScene").mClip.addChild(this.§@!p§);
         }
         else
         {
            onCutSceneNotAvailable(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3![§ = null;
         var _loc3_:* = null;
         if(§+!b§.previousLevel)
         {
            _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.previousLevel);
            _loc3_ = §+!b§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
            _loc3_ = §+!b§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override public function deActivate() : void
      {
         if(this.§@!p§)
         {
            §@;§.getItemByName("MovieClip_CutScene").mClip.removeChild(this.§@!p§);
            this.§@!p§.unloadAndStop();
            this.§@!p§ = null;
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override protected function get stateOnDefaultEnd() : String
      {
         return §"C§.§^!7§;
      }
   }
}
