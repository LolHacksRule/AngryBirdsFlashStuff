package §8!8§
{
   import flash.display.MovieClip;
   
   public class §?6§ extends §+!M§
   {
       
      
      public var §6!P§:MovieClip;
      
      public var §@u§:int = 0;
      
      public function §?6§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§@u§ = param1.@childIndex;
         }
      }
      
      public function §'!4§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§6!P§ = param1;
         this.§6!P§.mouseEnabled = false;
         this.§6!P§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§@u§ < 1)
         {
            mClip.addChild(this.§6!P§);
         }
         else
         {
            mClip.addChildAt(this.§6!P§,this.§@u§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§6!P§)
         {
            this.§6!P§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§6!P§ && (mParentContainer.mParentContainer as §<!C§).§6?§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§6!P§.filters = [(mParentContainer.mParentContainer as §<!C§).§6?§];
            }
            else
            {
               this.§6!P§.filters = [];
            }
         }
      }
   }
}
