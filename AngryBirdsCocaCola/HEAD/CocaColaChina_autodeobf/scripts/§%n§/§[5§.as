package §%n§
{
   import §6!@§.§[!8§;
   import flash.display.MovieClip;
   
   public class §[5§ extends §[!8§
   {
       
      
      public function §[5§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§8S§)
         {
            §8S§.x = 0;
            §8S§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§8S§.getChildByName("Bar") as MovieClip).totalFrames;
         (§8S§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
