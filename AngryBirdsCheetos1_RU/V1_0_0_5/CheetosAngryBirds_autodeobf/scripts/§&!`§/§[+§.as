package §&!`§
{
   import § =§.§,!R§;
   import flash.display.MovieClip;
   
   public class §[+§ extends §,!R§
   {
       
      
      public function §[+§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§-!J§)
         {
            §-!J§.x = 0;
            §-!J§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§-!J§.getChildByName("Bar") as MovieClip).totalFrames;
         (§-!J§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
