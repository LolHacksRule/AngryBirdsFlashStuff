package § 2§
{
   import §%Z§.§-",§;
   import §%Z§.§7l§;
   import §-'§.§ i§;
   import §-'§.§%!@§;
   import §0!_§.§!!G§;
   import §0!_§.§3S§;
   import §0!_§.§7!3§;
   import §0"1§.§%v§;
   import §0"1§.§`"-§;
   import §2!s§.§0l§;
   import §2!s§.§9#§;
   import §9!!§.§+!c§;
   import §9!!§.§2W§;
   import §`!B§.Sprite;
   import §`!s§.§^2§;
   import §`B§.§#d§;
   import §`B§.§3!r§;
   import flash.display.Stage;
   
   public class §'!k§ extends §=+§
   {
       
      
      public function §'!k§(param1:Stage, param2:§0l§, param3:§%v§, param4:§-g§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§[d§) : void
      {
         var _loc2_:String = §^2§.§&!;§.§]T§();
         var _loc3_:§+!c§ = (§-!2§.§7O§ as AngryBirdsCustom).§-"'§.§=!!§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §#n§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = §2W§.§6!t§;
         }
         else
         {
            param1.theme = (§-!2§.§7O§ as AngryBirdsCustom).§8<§.§4!&§(_loc4_);
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§[d§) : §7l§
      {
         var _loc2_:String = §`"-§.§?!@§;
         return new §-",§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§[d§) : § i§
      {
         return new §%!@§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§[d§) : §<!F§
      {
         return new §]!4§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §3S§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §3S§
      {
         return new §#d§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§#n§,§9#§(§4!R§));
      }
      
      override protected function initAnimationManager(param1:§!!G§) : §7!3§
      {
         return new §3!r§(param1);
      }
   }
}
