package §+!9§
{
   import §4;§.§<!>§;
   import flash.display.MovieClip;
   
   public class §&;§ extends §<!>§
   {
       
      
      public function §&;§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§]C§)
         {
            §]C§.x = 0;
            §]C§.y = 0;
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (§]C§.getChildByName("Bar") as MovieClip).totalFrames;
         (§]C§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
   }
}
