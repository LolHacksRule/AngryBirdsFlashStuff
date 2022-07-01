package §@V§
{
   import §#!I§.§0k§;
   import §#!I§.§@N§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §2`§.§;!#§;
   import §3!J§.Sprite;
   import §4!i§.§@"#§;
   import §>z§.§+E§;
   import §>z§.§5!d§;
   import §?!M§.§;!q§;
   import §?!M§.§[j§;
   import §@!"§.§#!C§;
   import §@!"§.§<!l§;
   import §[+§.§+"'§;
   import §[+§.§3!O§;
   import flash.display.Stage;
   
   public class §^$§ extends §#=§
   {
       
      
      public function §^$§(param1:Stage, param2:§4O§, param3:§5!d§, param4:§0![§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§5L§) : void
      {
         var _loc2_:String = §@"#§.§,2§.§0!x§();
         var _loc3_:§3!O§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §4a§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = §+"'§.§#Z§;
         }
         else
         {
            param1.theme = (§ !4§.§%"7§ as AngryBirdsCustom).§,h§.§!S§(_loc4_);
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§5L§) : §<!l§
      {
         var _loc2_:String = §+E§.§-V§;
         return new §#!C§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§5L§) : §0k§
      {
         return new §@N§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§5L§) : §0"§
      {
         return new §7,§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §;!#§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §;!#§
      {
         return new §[j§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§4a§,§;!=§(§@!]§));
      }
      
      override protected function initAnimationManager(param1:§%!!§) : §+$§
      {
         return new §;!q§(param1);
      }
   }
}
