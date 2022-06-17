package §5!$§
{
   import flash.display.MovieClip;
   
   public class §#$-§ extends §"S§
   {
       
      
      public var §?$1§:MovieClip;
      
      public var §+!r§:int = 0;
      
      public function §#$-§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§+!r§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§?$1§ = param1;
         this.§?$1§.mouseEnabled = false;
         this.§?$1§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§+!r§ < 1)
         {
            mClip.addChild(this.§?$1§);
         }
         else
         {
            mClip.addChildAt(this.§?$1§,this.§+!r§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§?$1§)
         {
            this.§?$1§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§?$1§ && (mParentContainer.mParentContainer as §>;§).§=#V§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§?$1§.filters = [(mParentContainer.mParentContainer as §>;§).§=#V§];
            }
            else
            {
               this.§?$1§.filters = [];
            }
         }
      }
   }
}
