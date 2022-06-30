package §function§
{
   import §&!6§.§%8§;
   import flash.display.MovieClip;
   
   public class §2!A§ extends §%8§
   {
       
      
      public function §2!A§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§ v§)
         {
            § v§.x = 0;
            § v§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§ v§.getChildByName("Bar") as MovieClip).totalFrames;
         (§ v§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
