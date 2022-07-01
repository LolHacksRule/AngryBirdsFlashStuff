package §3!!§
{
   import flash.display.MovieClip;
   
   public class §]5§ extends §?v§
   {
       
      
      public var §4!$§:MovieClip;
      
      public var §@Q§:int = 0;
      
      public function §]5§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§@Q§ = param1.@childIndex;
         }
      }
      
      public function §5!o§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§4!$§ = param1;
         this.§4!$§.mouseEnabled = false;
         this.§4!$§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§@Q§ < 1)
         {
            mClip.addChild(this.§4!$§);
         }
         else
         {
            mClip.addChildAt(this.§4!$§,this.§@Q§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4!$§)
         {
            this.§4!$§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§4!$§ && (mParentContainer.mParentContainer as §'E§).§!!R§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§4!$§.filters = [(mParentContainer.mParentContainer as §'E§).§!!R§];
            }
            else
            {
               this.§4!$§.filters = [];
            }
         }
      }
   }
}
