package §1!v§
{
   import § ""§.§6!u§;
   import § ""§.§>"3§;
   import §+%§.§5!F§;
   import §+%§.§5!O§;
   import §1!Y§.Sprite;
   import §1"3§.§6!W§;
   import §1"3§.§`"0§;
   import §[_§.§2!B§;
   import §[_§.§6G§;
   import §[_§.§8]§;
   import flash.display.Stage;
   
   public class §&f§ extends §@%§
   {
       
      
      private var §7!L§:§5!F§;
      
      public function §&f§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§5!F§) : §`"0§
      {
         return new §6!W§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§2!B§) : §6G§
      {
         return new §8]§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§5!F§) : §6!u§
      {
         return new §>"3§(this,param1,new Sprite());
      }
      
      public function §"!T§() : §5!O§
      {
         var _loc1_:§5!O§ = new §5!O§();
         _loc1_.mScoreGold = § G§.mScoreGold;
         _loc1_.mScoreSilver = § G§.mScoreSilver;
         §8!?§.writeCameraInformation(_loc1_);
         §%!F§.writeObjectInformation(_loc1_);
         §#B§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §&!,§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
