package §%<§
{
   import §^5§.§@!8§;
   import flash.display.MovieClip;
   
   public class §3+§ extends §@!8§
   {
       
      
      public function §3+§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§6%§)
         {
            §6%§.x = 0;
            §6%§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§6%§.getChildByName("Bar") as MovieClip).totalFrames;
         (§6%§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
