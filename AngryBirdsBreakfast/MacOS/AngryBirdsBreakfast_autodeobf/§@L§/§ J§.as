package §@L§
{
   import § ! §.§5!x§;
   import § ! §.§=!>§;
   import § ! §.§?b§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §+!!§.§5"+§;
   import §+!!§.§>Y§;
   import §,!A§.§ x§;
   import §,!A§.§,a§;
   import §,C§.§+§;
   import §,C§.§+"$§;
   import §,z§.§&!e§;
   import §,z§.§&"§;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import flash.display.Stage;
   
   public class § J§ extends §?!'§
   {
       
      
      public function § J§(param1:Stage, param2:§#!R§, param3:§+§, param4:§5!Y§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:§5!0§) : §&"§
      {
         var _loc2_:String = §+"$§.§;!@§;
         return new §&!e§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§5!0§) : §5"+§
      {
         return new §>Y§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§5!0§) : §;!3§
      {
         return new §0!i§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §=!>§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §=!>§
      {
         return new §,a§(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§&" §,§%!I§(§@!H§));
      }
      
      override protected function initAnimationManager(param1:§5!x§) : §?b§
      {
         return new § x§(param1);
      }
   }
}
