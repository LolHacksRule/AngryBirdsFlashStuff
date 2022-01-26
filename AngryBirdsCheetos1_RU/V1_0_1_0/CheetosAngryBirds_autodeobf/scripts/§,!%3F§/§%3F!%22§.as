package §,!?§
{
   import §-!O§.§7!K§;
   import flash.display.MovieClip;
   
   public class §?!"§ extends §7!K§
   {
       
      
      public function §?!"§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§0b§)
         {
            §0b§.x = 0;
            §0b§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§0b§.getChildByName("Bar") as MovieClip).totalFrames;
         (§0b§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
