package §=" §
{
   import §6O§.§+V§;
   import §71§.§;l§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §["8§ extends §+V§
   {
       
      
      public function §["8§(param1:§;l§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§9"6§)
         {
            §9"6§.x = 0;
            §9"6§.y = 0;
         }
         §9"6§.scaleY = 1;
         §9"6§.scaleX = 1;
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§9"6§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
