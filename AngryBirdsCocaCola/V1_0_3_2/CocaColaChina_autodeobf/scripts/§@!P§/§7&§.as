package §@!P§
{
   import §!!L§.§9F§;
   import flash.display.MovieClip;
   
   public class §7&§ extends §9F§
   {
       
      
      public function §7&§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§!!M§)
         {
            §!!M§.x = 0;
            §!!M§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§!!M§.getChildByName("Bar") as MovieClip).totalFrames;
         (§!!M§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
