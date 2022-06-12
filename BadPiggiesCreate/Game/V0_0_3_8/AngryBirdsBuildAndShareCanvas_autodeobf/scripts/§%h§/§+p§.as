package §%h§
{
   import § !V§.§7!P§;
   import § !V§.§]"5§;
   import § !V§.§`!w§;
   import §%!&§.§'"-§;
   import §%!&§.§^M§;
   import §'!O§.§5!v§;
   import §'!O§.§@!l§;
   import §>0§.§'L§;
   import §>0§.§=D§;
   import §]!2§.Sprite;
   import flash.display.Stage;
   
   public class §+p§ extends §5X§
   {
       
      
      private var §8!l§:§@!l§;
      
      public function §+p§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§@!l§) : §'L§
      {
         return new §=D§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§7!P§) : §]"5§
      {
         return new §`!w§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§@!l§) : §'"-§
      {
         return new §^M§(this,param1,new Sprite());
      }
      
      public function §>7§() : §5!v§
      {
         var _loc1_:§5!v§ = new §5!v§();
         _loc1_.mScoreGold = §`R§.mScoreGold;
         _loc1_.mScoreSilver = §`R§.mScoreSilver;
         §7!E§.writeCameraInformation(_loc1_);
         §`Z§.writeObjectInformation(_loc1_);
         §+P§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §'!>§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
