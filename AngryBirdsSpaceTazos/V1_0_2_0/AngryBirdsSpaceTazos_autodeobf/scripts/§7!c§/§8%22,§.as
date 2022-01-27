package §7!c§
{
   import §"!>§.§<!o§;
   import §]n§.§5M§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §8",§ extends §5M§
   {
       
      
      public function §8",§(param1:§<!o§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§'!4§)
         {
            §'!4§.x = 0;
            §'!4§.y = 0;
         }
         §'!4§.scaleY = 1;
         §'!4§.scaleX = 1;
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (§'!4§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
