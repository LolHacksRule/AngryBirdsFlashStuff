package §^U§
{
   import §;<§.§1N§;
   import flash.display.MovieClip;
   
   public class StateLoadBS extends §1N§
   {
      
      public static const §%!Q§:String = "StateLoadBS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!Q§ = "StateLoadBS";
         }
      }
      
      public function StateLoadBS(param1:Boolean = true, param2:String = "StateLoadBS", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(§§pop() * (§&c§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!(_loc3_ && this))
         {
            (§&c§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
