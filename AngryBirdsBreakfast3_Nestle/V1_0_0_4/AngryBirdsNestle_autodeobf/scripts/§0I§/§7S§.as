package §0I§
{
   import §"[§.§4!Z§;
   import §"[§.§>!y§;
   import §'<§.§;r§;
   import §'<§.§=!o§;
   import §-!f§.Sprite;
   import §0!%§.§ X§;
   import §2?§.§1"§;
   import §2?§.§4!5§;
   import §5!7§.§6n§;
   import §5!7§.§<"2§;
   import §6_§.§,!>§;
   import §6_§.§,^§;
   import §6_§.§=!"§;
   import §>j§.§3"+§;
   import §>j§.§`y§;
   import §]!q§.§!i§;
   import §]!q§.§3S§;
   import §`6§.§!!]§;
   import flash.display.Stage;
   
   public class §7S§ extends §!!p§
   {
       
      
      public function §7S§(param1:Stage, param2:§<"2§, param3:§4!5§, param4:§=!o§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§;r§) : void
      {
         var _loc2_:String = §!!]§.§?!+§.§<N§();
         var _loc3_:§ X§ = (§-!l§.§"x§ as AngryBirdsCustom).§=!Q§.§8d§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §+o§.currentLevel) == "1-1" || _loc5_ == "2-1")
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
      
      override protected function initializeLevelObjectManager(param1:§;r§) : §!i§
      {
         var _loc2_:String = §1"§.§%D§;
         return new §3S§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§;r§) : §`y§
      {
         return new §3"+§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§;r§) : §;"0§
      {
         return new §3!@§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §=!"§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §=!"§
      {
         return new §4!Z§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§+o§,§6n§(§with§));
      }
      
      override protected function initAnimationManager(param1:§,!>§) : §,^§
      {
         return new §>!y§(param1);
      }
   }
}
