package §_-F1§
{
   import flash.display.MovieClip;
   
   public class §_-nq§ extends §_-qp§
   {
       
      
      public var §_-Od§:MovieClip;
      
      public function §_-nq§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-7C§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-Od§ = param1;
         this.§_-Od§.mouseEnabled = false;
         this.§_-Od§.mouseChildren = false;
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
            mClip.addChild(this.§_-Od§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-Od§)
         {
            this.§_-Od§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-Od§ && (mParentContainer.mParentContainer as §_-mr§).§_-U9§)
         {
            if(param1 == §_-1M§)
            {
               this.§_-Od§.filters = [(mParentContainer.mParentContainer as §_-mr§).§_-U9§];
            }
            else
            {
               this.§_-Od§.filters = [];
            }
         }
      }
   }
}
