package §+B§
{
   import §>!G§.§1o§;
   import flash.display.MovieClip;
   
   public class §%K§ extends §1o§
   {
       
      
      public function §%K§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§&W§)
         {
            §&W§.x = 0;
            §&W§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§&W§.getChildByName("Bar") as MovieClip).totalFrames;
         (§&W§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
