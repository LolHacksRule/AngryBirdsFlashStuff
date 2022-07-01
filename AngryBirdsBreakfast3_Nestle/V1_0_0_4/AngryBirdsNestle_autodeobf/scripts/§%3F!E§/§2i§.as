package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§77§;
   import §'<§.§=!o§;
   import §9z§.§^!"§;
   import §;!b§.§%>§;
   import §[!b§.§'!R§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §2i§ extends StateCutScene
   {
       
      
      private var §52§:Loader;
      
      private var §1!7§:Boolean;
      
      public function §2i§(param1:§=!o§, param2:§%>§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!l§.§"x§.§,!W§.closeAllPopups();
         this.§1!7§ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§[,§;
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§!!g§(false);
      }
      
      override protected function startCutScene() : void
      {
         §#2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:ByteArray = §^!"§.§&O§(_loc1_);
         if(_loc2_)
         {
            this.§52§ = new Loader();
            this.§52§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §#2§.getItemByName("Container_Cutscene").mClip.addChild(this.§52§);
            if(_loc1_.search("intro") != -1)
            {
               §3!k§.§]"4§("birds_intro");
            }
            else if(_loc1_.search("outro") != -1)
            {
               §3!k§.§]"4§("birds_outro");
            }
         }
         else
         {
            §^!v§(null);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = null;
         var _loc2_:§77§ = null;
         var _loc3_:* = null;
         if(§+o§.previousLevel)
         {
            _loc2_ = §+o§.getEpisodeForLevel(§+o§.previousLevel);
            _loc3_ = §+o§.previousLevelNumericName + "-OUTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         if(!_loc1_)
         {
            _loc2_ = §+o§.getEpisodeForLevel(§+o§.currentLevel);
            _loc3_ = §+o§.currentLevelNumericName + "-INTRO";
            if(_loc2_)
            {
               _loc1_ = _loc2_.getCutScene(_loc3_);
            }
         }
         return _loc1_;
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         §`!q§.loadContent(param1);
      }
      
      override public function deActivate() : void
      {
         if(this.§52§)
         {
            §#2§.getItemByName("Container_Cutscene").mClip.removeChild(this.§52§);
            this.§52§.unloadAndStop();
            this.§52§ = null;
         }
         if(this.§1!7§)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§!!g§(true);
         }
         §3!k§.§#!3§();
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "SKIP":
               §3!k§.§]"4§("misc_menubuttonproceed_1");
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
