package §%!0§
{
   import §&!P§.§^!!§;
   import §&!P§.§`>§;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,!g§.§>7§;
   import §;"7§.§"!m§;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import flash.display.Stage;
   
   public class §&@§ extends §,4§
   {
       
      
      private var §,w§:§'!e§;
      
      public function §&@§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§'!e§) : §"!P§
      {
         return new §>7§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§="<§) : §5!O§
      {
         return new §"!m§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§'!e§) : §^!!§
      {
         return new §`>§(this,param1,new Sprite());
      }
      
      public function §1!l§() : §-"?§
      {
         var _loc1_:§-"?§ = new §-"?§();
         _loc1_.mScoreGold = §]"§.mScoreGold;
         _loc1_.mScoreSilver = §]"§.mScoreSilver;
         §8!j§.writeCameraInformation(_loc1_);
         §#!8§.writeObjectInformation(_loc1_);
         §7R§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §]q§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
