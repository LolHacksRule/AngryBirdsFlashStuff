package §'Q§
{
   import §?!F§.§&!L§;
   import flash.display.MovieClip;
   
   public class §]2§ extends §&!L§
   {
       
      
      public function §]2§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§&!9§)
         {
            §&!9§.x = 0;
            §&!9§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§&!9§.getChildByName("Bar") as MovieClip).totalFrames;
         (§&!9§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
