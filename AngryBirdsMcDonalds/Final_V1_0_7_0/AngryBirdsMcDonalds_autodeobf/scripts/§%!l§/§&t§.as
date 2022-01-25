package §%!l§
{
   import §%!5§.§7;§;
   import §'!N§.§][§;
   import §4!,§.§+f§;
   import §55§.§>![§;
   
   public class §&t§ extends §][§
   {
       
      
      private const §0k§:Number = 300;
      
      public function §&t§(param1:§>![§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §=!&§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§;!g§,§%1§);
         mLevelMain.camera.initSlowScroll(§=!&§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§7;§.§1h§.§<a§(0,0).x - §>![§.§<d§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / §>![§.§%!k§ + this.§0k§)
         {
            mLevelMain.camera.setAction(§+f§.§3!l§);
         }
      }
   }
}
