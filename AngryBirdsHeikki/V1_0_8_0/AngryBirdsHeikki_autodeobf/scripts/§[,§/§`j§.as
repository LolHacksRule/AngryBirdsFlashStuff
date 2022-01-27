package §[,§
{
   import §!a§.§2"§;
   import flash.display.MovieClip;
   
   public class §`j§ extends §2"§
   {
       
      
      public function §`j§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§3;§)
         {
            §3;§.x = 0;
            §3;§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§3;§.getChildByName("Bar") as MovieClip).totalFrames;
         (§3;§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
