package §4-§
{
   import flash.display.MovieClip;
   
   public class §@<§ extends §%+§
   {
       
      
      public var §?!5§:MovieClip;
      
      public var §=-§:int = 0;
      
      public function §@<§(param1:XML, param2:§'J§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§=-§ = param1.@childIndex;
         }
      }
      
      public function §`S§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§?!5§ = param1;
         this.§?!5§.mouseEnabled = false;
         this.§?!5§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§=-§ < 1)
         {
            mClip.addChild(this.§?!5§);
         }
         else
         {
            mClip.addChildAt(this.§?!5§,this.§=-§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§?!5§)
         {
            this.§?!5§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§?!5§ && (mParentContainer.mParentContainer as §1U§).§8!B§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§?!5§.filters = [(mParentContainer.mParentContainer as §1U§).§8!B§];
            }
            else
            {
               this.§?!5§.filters = [];
            }
         }
      }
   }
}
