package §]k§
{
   import § !T§.§ q§;
   import § !T§.§7@§;
   import § 8§.§=!'§;
   import § 8§.§?!9§;
   import §%z§.§6"$§;
   import §%z§.§?8§;
   import §,!q§.Sprite;
   import §-!b§.§,"1§;
   import §-!b§.§0!D§;
   import §-!b§.§[E§;
   import §2W§.§+!d§;
   import §4!§.§-!q§;
   import §4!§.§1!R§;
   import §6g§.§%!B§;
   import §6g§.§]9§;
   import §=!`§.§!H§;
   import §=!`§.§4!d§;
   import §@&§.§ !E§;
   import §@&§.§"! §;
   import flash.display.Stage;
   
   public class § !'§ extends §<S§
   {
       
      
      public function § !'§(param1:Stage, param2:§?8§, param3:§ !E§, param4:§ q§)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function init(param1:§7@§) : void
      {
         var _loc2_:String = §+!d§.§<"5§.§'!G§();
         var _loc3_:§1!R§ = (§-!I§.§[f§ as AngryBirdsCustom).§1!!§.§0!4§(_loc2_);
         var _loc4_:String = _loc3_.brand;
         var _loc5_:String;
         if((_loc5_ = §="4§.currentLevel) == "1-1" || _loc5_ == "2-1")
         {
            param1.theme = §-!q§.§5'§;
         }
         else
         {
            param1.theme = (§-!I§.§[f§ as AngryBirdsCustom).§<!?§.§&!_§(_loc4_);
         }
         super.init(param1);
      }
      
      override protected function initializeLevelObjectManager(param1:§7@§) : §!H§
      {
         var _loc2_:String = §"! §.§;f§;
         return new §4!d§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§7@§) : §?!9§
      {
         return new §=!'§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§7@§) : §>!x§
      {
         return new §@!y§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §0!D§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §0!D§
      {
         return new §%!B§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§="4§,§6"$§(§'K§));
      }
      
      override protected function initAnimationManager(param1:§[E§) : §,"1§
      {
         return new §]9§(param1);
      }
   }
}
