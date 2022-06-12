package §[B§
{
   import §0E§.§#O§;
   import §0E§.§@R§;
   import §4!#§.§ a§;
   import §4!#§.§[R§;
   import §@!-§.§!!Y§;
   import §@!-§.§3"1§;
   import §@!-§.§^V§;
   import §@!i§.Sprite;
   import §@r§.§3!+§;
   import §@r§.§[i§;
   import flash.display.Stage;
   
   public class §1!z§ extends §"d§
   {
       
      
      private var §=c§:§#O§;
      
      public function §1!z§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§#O§) : §3!+§
      {
         return new §[i§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§3"1§) : §!!Y§
      {
         return new §^V§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§#O§) : §[R§
      {
         return new § a§(this,param1,new Sprite());
      }
      
      public function §9!4§() : §@R§
      {
         var _loc1_:§@R§ = new §@R§();
         _loc1_.mScoreGold = §-" §.mScoreGold;
         _loc1_.mScoreSilver = §-" §.mScoreSilver;
         §4!S§.writeCameraInformation(_loc1_);
         §`;§.writeObjectInformation(_loc1_);
         §-!`§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §`"4§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
