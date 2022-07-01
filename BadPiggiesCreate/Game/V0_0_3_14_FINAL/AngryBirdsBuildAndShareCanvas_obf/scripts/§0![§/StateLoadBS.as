package §0![§
{
   import §5"-§.§`^§;
   import flash.display.MovieClip;
   
   public class StateLoadBS extends §`^§
   {
      
      public static const §'=§:String = "StateLoadBS";
       
      
      public function StateLoadBS(param1:Boolean = true, param2:String = "StateLoadBS", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§+!U§.getChildByName("Bar") as MovieClip).totalFrames;
         (§+!U§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
