package §5!V§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §&"5§.§0g§;
   import §&"5§.§1!A§;
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §+!o§.§^!Q§;
   import §=!#§.§2"-§;
   import §=!#§.§`"=§;
   import §default§.Sprite;
   import flash.display.Stage;
   
   public class §1!L§ extends §!w§
   {
       
      
      private var §'";§:§9"§;
      
      public function §1!L§(param1:Stage)
      {
         super(param1);
      }
      
      override protected function initLevelCamera(param1:§9"§) : §`"=§
      {
         return new §2"-§(this,param1);
      }
      
      override protected function initAnimationManager(param1:§7!P§) : §1!A§
      {
         return new §0g§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§9"§) : §?"-§
      {
         return new §^!Q§(this,param1,new Sprite());
      }
      
      public function §6!P§() : §]!B§
      {
         var _loc1_:§]!B§ = new §]!B§();
         _loc1_.mScoreGold = §"!J§.mScoreGold;
         _loc1_.mScoreSilver = §"!J§.mScoreSilver;
         § Y§.writeCameraInformation(_loc1_);
         §&!^§.writeObjectInformation(_loc1_);
         §&!3§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = §+!S§.getCurrentThemeName();
         return _loc1_;
      }
   }
}
