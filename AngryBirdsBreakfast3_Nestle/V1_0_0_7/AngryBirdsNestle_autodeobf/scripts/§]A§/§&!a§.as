package §]A§
{
   import § !=§.Sprite;
   import §!!&§.§`!$§;
   import §!!n§.§#%§;
   import §!!n§.§+Z§;
   import §!P§.§2"4§;
   import §!P§.§5!1§;
   import §%7§.§;!N§;
   import §%7§.§]!t§;
   import §-6§.§ !8§;
   import §-6§.§%5§;
   import §2!k§.§2!+§;
   import §2!k§.§^O§;
   import §;L§.§"!X§;
   import §;L§.§8!&§;
   import §;L§.§;u§;
   import §>!z§.§^y§;
   import §>!z§.set;
   import §[^§.§'g§;
   import §[^§.§@!U§;
   import flash.display.Stage;
   
   public class §&!a§ extends §[d§
   {
       
      
      public function §&!a§(param1:Stage, param2:§'g§, param3:set, param4:§5!1§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§2"4§) : void
      {
         var _loc2_:String = §`!$§.§>!P§.§?""§();
         var _loc3_:§#%§ = (§,!X§.§>!G§ as AngryBirdsCustom).§!&§.§3r§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §97§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = §+Z§.§&E§;
         }
         else
         {
            param1.theme = (§,!X§.§>!G§ as AngryBirdsCustom).§1!Z§.§;7§(_loc4_);
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§2"4§) : §^O§
      {
         var _loc2_:String = §^y§.§<!u§;
         return new §2!+§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§2"4§) : §%5§
      {
         return new § !8§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§2"4§) : §]"!§
      {
         return new §%!Z§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §;u§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §;u§
      {
         return new §]!t§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§97§,§@!U§(§4!J§));
      }
      
      override protected function initAnimationManager(param1:§"!X§) : §8!&§
      {
         return new §;!N§(param1);
      }
   }
}
