package §@#§
{
   import flash.display.MovieClip;
   
   public class §5g§ extends §4!O§
   {
       
      
      public var §-!F§:MovieClip;
      
      public var §3%§:int = 0;
      
      public function §5g§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§3%§ = param1.@childIndex;
         }
      }
      
      public function §'U§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§-!F§ = param1;
         this.§-!F§.mouseEnabled = false;
         this.§-!F§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§3%§ < 1)
         {
            mClip.addChild(this.§-!F§);
         }
         else
         {
            mClip.addChildAt(this.§-!F§,this.§3%§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§-!F§)
         {
            this.§-!F§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§-!F§ && (mParentContainer.mParentContainer as §;B§).§<S§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§-!F§.filters = [(mParentContainer.mParentContainer as §;B§).§<S§];
            }
            else
            {
               this.§-!F§.filters = [];
            }
         }
      }
   }
}
