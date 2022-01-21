package §4!3§
{
   import §'a§.§0!f§;
   import §9!W§.§=!@§;
   import §[#§.§&!D§;
   import §[_§.§2D§;
   
   public class §1C§ extends §&!D§
   {
       
      
      private const §@-§:Number = 300;
      
      public function §1C§(param1:§0!f§, param2:String = null, param3:Boolean = true, param4:Number = 1.0)
      {
         super(param1,param2,param3);
         §7n§ = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initEmptyEnvironment(§>P§,§&+§);
         mLevelMain.camera.initSlowScroll(§7n§);
         mLevelMain.camera.manualScale = 0.4;
         mLevelMain.camera.setOffset(0,-100);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         var _loc2_:Number = -§=!@§.§>!T§.§]!i§(0,0).x - §0!f§.§"i§ / 2;
         var _loc3_:Number = mLevelMain.camera.mCameraBorderRight - (mLevelMain.camera.mCameraBorderRight - mLevelMain.camera.mCameraBorderLeft) / 2;
         if(_loc2_ > _loc3_ / §0!f§.§<C§ + this.§@-§)
         {
            mLevelMain.camera.setAction(§2D§.§;b§);
         }
      }
   }
}
