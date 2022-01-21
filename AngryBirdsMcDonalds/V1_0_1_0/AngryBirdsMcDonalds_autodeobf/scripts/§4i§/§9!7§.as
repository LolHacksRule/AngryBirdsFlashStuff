package §4i§
{
   import §!!g§.§8d§;
   import §2o§.§<H§;
   import §?;§.§4t§;
   import §@!b§.§@!k§;
   
   public class §9!7§ extends §4t§
   {
       
      
      private const §%X§:Number = 300;
      
      public function §9!7§(param1:§@!k§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §%R§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§7r§,§@;§);
         mLevelMain.camera.initSlowScroll(§%R§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§<H§.§=3§.§8,§(0,0).x - §@!k§.§ p§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / §@!k§.§2!J§ + this.§%X§)
         {
            mLevelMain.camera.setAction(§8d§.§9,§);
         }
      }
   }
}
