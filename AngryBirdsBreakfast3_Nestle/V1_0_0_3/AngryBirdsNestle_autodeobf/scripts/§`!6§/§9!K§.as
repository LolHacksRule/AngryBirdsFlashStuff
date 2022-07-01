package §`!6§
{
   import §"E§.§&z§;
   import §9![§.§1!i§;
   import §>!a§.§5l§;
   import §>!a§.§>"2§;
   import §@f§.§&!"§;
   import §]!d§.§-!<§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §9!K§ extends StateCutScene
   {
       
      
      private var §`!K§:Loader;
      
      private var §2!c§:Boolean;
      
      public function §9!K§(param1:§5l§, param2:§-!<§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&N§.§#Y§.§@!H§.closeAllPopups();
         this.§2!c§ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§#!G§;
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§,v§(false);
      }
      
      override protected function startCutScene() : void
      {
         §!^§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §&z§.§<O§(_loc1_);
         if(_loc2_)
         {
            this.§`!K§ = new Loader();
            this.§`!K§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §!^§.getItemByName("Container_Cutscene").mClip.addChild(this.§`!K§);
            if(_loc1_.search("intro") != -1)
            {
               §1!i§.§+!Y§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §1!i§.§+!Y§("birds_outro");
            }
         }
         else
         {
            §if §(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§>"2§ = null;
         var _loc3_:* = null;
         if(§^!§.previousLevel)
         {
            _loc2_ = §^!§.getEpisodeForLevel(§^!§.previousLevel);
            _loc3_ = §^!§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §^!§.getEpisodeForLevel(§^!§.currentLevel);
            _loc3_ = §^!§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §,!W§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§`!K§)
         {
            §!^§.getItemByName("Container_Cutscene").mClip.removeChild(this.§`!K§);
            this.§`!K§.unloadAndStop();
            this.§`!K§ = null;
         }
         if(this.§2!c§)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§.§,v§(true);
         }
         §1!i§.§ !S§();
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §1!i§.§+!Y§("misc_menubuttonproceed_1");
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
