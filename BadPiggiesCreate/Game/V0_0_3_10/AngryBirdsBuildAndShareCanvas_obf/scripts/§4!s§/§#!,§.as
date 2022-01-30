package §4!s§
{
   import §%t§.§-!5§;
   import §%t§.§8p§;
   import §%t§.§^!x§;
   import §2!§.§1!n§;
   import §2!§.§>B§;
   import §7M§.§+R§;
   import §7M§.§7!#§;
   import §="§.§<x§;
   import §="§.§="-§;
   import §^I§.Sprite;
   import flash.display.Stage;
   
   public class §#!,§ extends §%I§
   {
       
      
      private var §&L§:§+R§;
      
      public function §#!,§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§+R§) : §1!n§
      {
         return new §>B§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§-!5§) : §^!x§
      {
         return new §8p§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§+R§) : §="-§
      {
         return new §<x§(this,param1,new Sprite());
      }
      
      public function §&!7§() : §7!#§
      {
         var _loc1_:§7!#§ = new §7!#§();
         _loc1_.mScoreGold = §]l§.mScoreGold;
         _loc1_.mScoreSilver = §]l§.mScoreSilver;
         §]!M§.writeCameraInformation(_loc1_);
         § !q§.writeObjectInformation(_loc1_);
         §#!]§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §3!H§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
