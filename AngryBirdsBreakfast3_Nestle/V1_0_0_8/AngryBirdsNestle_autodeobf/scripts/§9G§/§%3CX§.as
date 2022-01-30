package §9G§
{
   import §!"+§.§2!H§;
   import §!"+§.§[!Q§;
   import §"P§.§&"0§;
   import §"P§.§2!U§;
   import §%f§.§[@§;
   import §-![§.Sprite;
   import §2X§.§5L§;
   import §2X§.§8!=§;
   import §6`§.§!!H§;
   import §6`§.§2a§;
   import §6`§.§`!&§;
   import §7U§.§&!j§;
   import §7U§.§-f§;
   import §8!e§.§!!E§;
   import §8!e§.§3"&§;
   import §>D§.§ k§;
   import §>D§.§!R§;
   import §^!<§.§#t§;
   import §^!<§.§^!4§;
   import flash.display.Stage;
   
   public class §<X§ extends §2F§
   {
       
      
      public function §<X§(param1:Stage, param2:§2!H§, param3:§!R§, param4:§3"&§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§!!E§) : void
      {
         var _loc2_:String = §[@§.§"e§.§]f§();
         var _loc3_:§5L§ = (§-O§.§5!1§ as AngryBirdsCustom).§;J§.§"!X§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §!3§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = §8!=§.§6E§;
         }
         else
         {
            param1.theme = (§-O§.§5!1§ as AngryBirdsCustom).§#!-§.§'!n§(_loc4_);
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§!!E§) : §&"0§
      {
         var _loc2_:String = § k§.§+l§;
         return new §2!U§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§!!E§) : §#t§
      {
         return new §^!4§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§!!E§) : §9!G§
      {
         return new § !e§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §!!H§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §!!H§
      {
         return new §&!j§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§!3§,§[!Q§(§<"3§));
      }
      
      override protected function initAnimationManager(param1:§2a§) : §`!&§
      {
         return new §-f§(param1);
      }
   }
}
