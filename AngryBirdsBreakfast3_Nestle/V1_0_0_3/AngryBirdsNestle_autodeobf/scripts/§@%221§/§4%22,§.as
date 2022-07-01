package §@"1§
{
   import §!!<§.§-"4§;
   import §!!<§.§7!r§;
   import §"!-§.§1i§;
   import §"!-§.§5b§;
   import §'9§.§+A§;
   import §'w§.§ !7§;
   import §'w§.§%#§;
   import §+c§.§5!6§;
   import §+c§.§;L§;
   import §-!F§.§[!Q§;
   import §0!Y§.Sprite;
   import §6!?§.§&"§;
   import §6!?§.§;u§;
   import §6!?§.§`!O§;
   import §9!s§.§,! §;
   import §9!s§.§[!1§;
   import §>!a§.§-?§;
   import §>!a§.§5l§;
   import flash.display.Stage;
   
   public class §4",§ extends §"h§
   {
       
      
      public function §4",§(param1:Stage, param2:§-"4§, param3:§5!6§, param4:§5l§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§-?§) : void
      {
         var _loc2_:String = §[!Q§.§=J§.§%w§();
         var _loc3_:§+A§ = (§&N§.§#Y§ as AngryBirdsCustom).§7!J§.§ "%§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §^!§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = "THEME_GENERIC_NESTLE";
         }
         else if(_loc4_ == "nesquik")
         {
            param1.theme = "THEME_NESQUIK";
         }
         else if(_loc4_ == "chocapic")
         {
            param1.theme = "THEME_CHOCAPIC";
         }
         else if(_loc4_ == "koko_krunch")
         {
            param1.theme = "THEME_KOKOKRUNCH";
         }
         else
         {
            param1.theme = "THEME_GENERIC_NESTLE";
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§-?§) : §1i§
      {
         var _loc2_:String = §;L§.§%!4§;
         return new §5b§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§-?§) : § !7§
      {
         return new §%#§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§-?§) : §`!j§
      {
         return new §-7§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §&"§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §&"§
      {
         return new §[!1§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§^!§,§7!r§(§'!f§));
      }
      
      override protected function initAnimationManager(param1:§`!O§) : §;u§
      {
         return new §,! §(param1);
      }
   }
}
