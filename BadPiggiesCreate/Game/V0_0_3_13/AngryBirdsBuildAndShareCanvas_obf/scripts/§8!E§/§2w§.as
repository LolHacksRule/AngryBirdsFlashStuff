package §8!E§
{
   import §0s§.§?!?§;
   import §0s§.§];§;
   import §2b§.§"" §;
   import §2b§.§8!m§;
   import §?"&§.§,!"§;
   import §?"&§.§5b§;
   import §`"2§.§3"2§;
   import §`"2§.§6!,§;
   import §`"2§.§><§;
   import §`L§.Sprite;
   import flash.display.Stage;
   
   public class §2w§ extends §?!X§
   {
       
      
      private var §#"6§:§];§;
      
      public function §2w§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§];§) : §"" §
      {
         return new §8!m§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§6!,§) : §><§
      {
         return new §3"2§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§];§) : §5b§
      {
         return new §,!"§(this,param1,new Sprite());
      }
      
      public function §3U§() : §?!?§
      {
         var _loc1_:§?!?§ = new §?!?§();
         _loc1_.mScoreGold = §`7§.mScoreGold;
         _loc1_.mScoreSilver = §`7§.mScoreSilver;
         §+=§.writeCameraInformation(_loc1_);
         §]"?§.writeObjectInformation(_loc1_);
         §3!Z§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §8G§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
