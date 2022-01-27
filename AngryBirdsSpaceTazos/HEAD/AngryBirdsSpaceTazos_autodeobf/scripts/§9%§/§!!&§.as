package §9%§
{
   import §"o§.§4!h§;
   import §%"%§.§2Z§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §!!&§ extends §4!h§
   {
       
      
      public function §!!&§(param1:§2Z§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§?!+§)
         {
            §?!+§.x = 0;
            §?!+§.y = 0;
         }
         §?!+§.scaleY = 1;
         §?!+§.scaleX = 1;
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§?!+§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
