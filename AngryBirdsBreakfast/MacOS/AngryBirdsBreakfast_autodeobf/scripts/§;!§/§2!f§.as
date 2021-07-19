package §;!§
{
   import §;0§.§6h§;
   import §?z§.§%r§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §2!f§ extends §%r§
   {
       
      
      public function §2!f§(param1:§6h§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(§%0§)
         {
            _loc3_ = param1 / (§%0§.width / §%0§.scaleX);
            if(§%0§.height / §%0§.scaleY * _loc3_ > param2)
            {
               _loc3_ = param2 / (§%0§.height / §%0§.scaleY);
            }
            §%0§.scaleX = §%0§.scaleY = _loc3_ * 1.4;
            §%0§.x = param1 - §%0§.width >> 1;
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§%0§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
