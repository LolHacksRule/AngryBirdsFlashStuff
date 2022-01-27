package §%"Q§
{
   import §&!j§.§5#+§;
   import §9§.§3!?§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §5R§ extends §3!?§
   {
       
      
      public function §5R§(param1:§5#+§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(§[!$§)
         {
            _loc3_ = param1 / (§[!$§.width / §[!$§.scaleX);
            if(§[!$§.height / §[!$§.scaleY * _loc3_ > param2)
            {
               _loc3_ = param2 / (§[!$§.height / §[!$§.scaleY);
            }
            §[!$§.scaleX = §[!$§.scaleY = _loc3_;
            §[!$§.x = param1 - §[!$§.width >> 1;
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc5_:MovieClip;
         (_loc5_ = MovieClip(§[!$§.getChildByName("mcLoadBar"))["bar"]).width = 46 + param1 * (806 - 46);
         _loc5_.x = -85 - 46 / 2 + _loc5_.width / 2;
      }
   }
}
