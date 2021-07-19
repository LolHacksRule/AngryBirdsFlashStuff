package §;!§
{
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §4!o§.§+!N§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §^!5§ extends StateCutScene
   {
       
      
      private var §!""§:Loader;
      
      public function §^!5§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!!§.singleton.§%![§.§[!"§();
      }
      
      override protected function startCutScene() : void
      {
         var _loc3_:LoaderContext = null;
         §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §+!N§.§3q§(_loc1_);
         if(_loc2_)
         {
            this.§!""§ = new Loader();
            _loc3_ = new LoaderContext(false,new ApplicationDomain());
            _loc3_.allowCodeImport = true;
            this.§!""§.loadBytes(_loc2_,_loc3_);
            §?P§.getItemByName("Container_Cutscene").mClip.addChild(this.§!""§);
            if(_loc1_.search("intro") != -1)
            {
               §'!c§.§3!f§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §'!c§.§3!f§("birds_outro");
            }
         }
         else
         {
            §@^§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3%§ = null;
         var _loc3_:* = null;
         if(§&" §.previousLevel)
         {
            _loc2_ = §&" §.getEpisodeForLevel(§&" §.previousLevel);
            _loc3_ = §&" §.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §&" §.getEpisodeForLevel(§&" §.currentLevel);
            _loc3_ = §&" §.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §9k§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§!""§)
         {
            §?P§.getItemByName("Container_Cutscene").mClip.removeChild(this.§!""§);
            this.§!""§.unloadAndStop();
            this.§!""§ = null;
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §'!c§.§&j§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
