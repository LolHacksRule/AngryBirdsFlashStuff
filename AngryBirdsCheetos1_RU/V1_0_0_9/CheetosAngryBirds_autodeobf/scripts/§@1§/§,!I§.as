package §@1§
{
   import §<!P§.§[!6§;
   import flash.display.MovieClip;
   
   public class §,!I§ extends §[!6§
   {
       
      
      public function §,!I§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§"<§)
         {
            §"<§.x = 0;
            §"<§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§"<§.getChildByName("Bar") as MovieClip).totalFrames;
         (§"<§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
