package §'!D§
{
   import § !J§.§%M§;
   import §-h§.§+!P§;
   import §7F§.§2M§;
   import §?!d§.§-E§;
   
   public class §7!c§ extends §+!P§
   {
       
      
      private const §6!S§:Number = 300;
      
      public function §7!c§(param1:§%M§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §,!a§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§">§,§6!T§);
         mLevelMain.camera.initSlowScroll(§,!a§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§2M§.§1?§.§-!-§(0,0).x - §%M§.§"t§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / §%M§.§'!Y§ + this.§6!S§)
         {
            mLevelMain.camera.setAction(§-E§.§#!6§);
         }
      }
   }
}
