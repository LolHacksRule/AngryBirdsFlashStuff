package §]!V§
{
   import §!P§.§4K§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §0!?§.§%i§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>8§ extends StateCutScene
   {
       
      
      private var §`!'§:Loader;
      
      private var §9"'§:Boolean;
      
      private var §?!T§:Boolean;
      
      public function §>8§(param1:§5!1§, param2:§&S§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         this.§9"'§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§3_§;
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§?q§(false);
         this.§?!T§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§#!Y§();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(false);
      }
      
      override protected function startCutScene() : void
      {
         §5+§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §%i§.§?o§(_loc1_);
         if(_loc2_)
         {
            this.§`!'§ = new Loader();
            this.§`!'§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §5+§.getItemByName("Container_Cutscene").mClip.addChild(this.§`!'§);
            if(_loc1_.search("intro") != -1)
            {
               §%!c§.§8" §("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §%!c§.§8" §("birds_outro");
            }
         }
         else
         {
            §>i§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§4K§ = null;
         var _loc3_:* = null;
         if(§97§.previousLevel)
         {
            _loc2_ = §97§.getEpisodeForLevel(§97§.previousLevel);
            _loc3_ = §97§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §97§.getEpisodeForLevel(§97§.currentLevel);
            _loc3_ = §97§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §+!"§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§`!'§)
         {
            §5+§.getItemByName("Container_Cutscene").mClip.removeChild(this.§`!'§);
            this.§`!'§.unloadAndStop();
            this.§`!'§ = null;
         }
         if(this.§9"'§)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§?q§(true);
         }
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(this.§?!T§);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §%!c§.§0O§();
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
