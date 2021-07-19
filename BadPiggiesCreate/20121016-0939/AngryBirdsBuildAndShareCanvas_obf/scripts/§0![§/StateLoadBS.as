package §0![§
{
   import §5"-§.§`^§;
   import flash.display.MovieClip;
   
   public class StateLoadBS extends §`^§
   {
      
      public static const §'=§:String = "StateLoadBS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'=§ = "StateLoadBS";
         }
      }
      
      public function StateLoadBS(param1:Boolean = true, param2:String = "StateLoadBS", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * (§+!U§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!_loc3_)
         {
            (§+!U§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
