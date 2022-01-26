package §_-E-§
{
   import flash.display.MovieClip;
   
   public class §_-it§ extends §_-Fy§
   {
       
      
      public var §_-XR§:MovieClip;
      
      public function §_-it§(param1:XML, param2:§_-hw§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-HB§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-XR§ = param1;
         this.§_-XR§.mouseEnabled = false;
         this.§_-XR§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            mClip.addChild(this.§_-XR§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-XR§)
         {
            this.§_-XR§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-XR§ && (mParentContainer.mParentContainer as §_-IM§).§_-3N§)
         {
            if(param1 == §_-IX§)
            {
               this.§_-XR§.filters = [(mParentContainer.mParentContainer as §_-IM§).§_-3N§];
            }
            else
            {
               this.§_-XR§.filters = [];
            }
         }
      }
   }
}
