package §8!_§
{
   import §%!r§.§3!'§;
   import §1%§.§@!t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §"p§ extends §@!t§
   {
       
      
      public function §"p§(param1:§3!'§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§8!r§)
         {
            §8!r§.x = 0;
            §8!r§.y = 0;
         }
         §8!r§.scaleY = 1;
         §8!r§.scaleX = 1;
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§8!r§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
