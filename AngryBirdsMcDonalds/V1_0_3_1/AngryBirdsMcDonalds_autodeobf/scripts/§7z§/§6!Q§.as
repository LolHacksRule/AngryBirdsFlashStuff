package §7z§
{
   import § !Y§.§2#§;
   import §3!@§.§ s§;
   import §[!L§.§9![§;
   import §^U§.§3$§;
   
   public class §6!Q§ extends §9![§
   {
       
      
      private const §6!C§:Number = 300;
      
      public function §6!Q§(param1:§ s§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §#§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§>!`§,§2q§);
         mLevelMain.camera.initSlowScroll(§#§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§2#§.§"@§.§12§(0,0).x - § s§.§3!i§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / § s§.§<!h§ + this.§6!C§)
         {
            mLevelMain.camera.setAction(§3$§.§7!U§);
         }
      }
   }
}
