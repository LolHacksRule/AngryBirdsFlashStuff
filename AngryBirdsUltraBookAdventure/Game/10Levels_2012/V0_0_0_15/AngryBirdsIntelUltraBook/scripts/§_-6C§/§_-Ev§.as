package §_-6C§
{
   import flash.display.MovieClip;
   
   public class §_-Ev§ extends §_-Mu§
   {
       
      
      public var §_-Nx§:MovieClip;
      
      public var §_-0EH§:int = 0;
      
      public function §_-Ev§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§_-0EH§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-Nx§ = param1;
         this.§_-Nx§.mouseEnabled = false;
         this.§_-Nx§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§_-0EH§ < 1)
         {
            mClip.addChild(this.§_-Nx§);
         }
         else
         {
            mClip.addChildAt(this.§_-Nx§,this.§_-0EH§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-Nx§)
         {
            this.§_-Nx§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-Nx§ && (mParentContainer.mParentContainer as §_-05d§).§_-yS§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§_-Nx§.filters = [(mParentContainer.mParentContainer as §_-05d§).§_-yS§];
            }
            else
            {
               this.§_-Nx§.filters = [];
            }
         }
      }
   }
}
