package §"",§
{
   import flash.display.MovieClip;
   
   public class §2[§ extends §<?§
   {
       
      
      public var §?!0§:MovieClip;
      
      public var §<!G§:int = 0;
      
      public function §2[§(param1:XML, param2:§<+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§<!G§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§?!0§ = param1;
         this.§?!0§.mouseEnabled = false;
         this.§?!0§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§<!G§ < 1)
         {
            mClip.addChild(this.§?!0§);
         }
         else
         {
            mClip.addChildAt(this.§?!0§,this.§<!G§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§?!0§)
         {
            this.§?!0§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§?!0§ && (mParentContainer.mParentContainer as §"%§).§ o§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§?!0§.filters = [(mParentContainer.mParentContainer as §"%§).§ o§];
            }
            else
            {
               this.§?!0§.filters = [];
            }
         }
      }
   }
}
