package §=b§
{
   import §6!&§.§",§;
   import §6!&§.§0!b§;
   import §7q§.Sprite;
   import §;!<§.§!!F§;
   import §;!<§.§08§;
   import §;!<§.§7!f§;
   import §@!N§.§2i§;
   import §@!N§.§3E§;
   import §]r§.§0!@§;
   import §]r§.§2"%§;
   import flash.display.Stage;
   
   public class §@!6§ extends §-!K§
   {
       
      
      private var §@"-§:§0!b§;
      
      public function §@!6§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§0!b§) : §2i§
      {
         return new §3E§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§7!f§) : §!!F§
      {
         return new §08§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§0!b§) : §2"%§
      {
         return new §0!@§(this,param1,new Sprite());
      }
      
      public function §+!3§() : §",§
      {
         var _loc1_:§",§ = new §",§();
         _loc1_.mScoreGold = §^!Z§.mScoreGold;
         _loc1_.mScoreSilver = §^!Z§.mScoreSilver;
         §9,§.writeCameraInformation(_loc1_);
         §<B§.writeObjectInformation(_loc1_);
         §3"0§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §%"'§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
