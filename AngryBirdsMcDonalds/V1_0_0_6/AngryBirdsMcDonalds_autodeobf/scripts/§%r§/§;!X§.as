package §%r§
{
   import §"!g§.§2!H§;
   import §#M§.§+!Z§;
   import §<L§.§!!G§;
   import §[!_§.§8U§;
   
   public class §;!X§ extends §2!H§
   {
       
      
      private const §3P§:Number = 300;
      
      public function §;!X§(param1:§!!G§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §&]§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§<G§,§<!4§);
         mLevelMain.camera.initSlowScroll(§&]§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§+!Z§.§?!<§.§"=§(0,0).x - §!!G§.§6!c§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / §!!G§.§ !E§ + this.§3P§)
         {
            mLevelMain.camera.setAction(§8U§.§0!C§);
         }
      }
   }
}
