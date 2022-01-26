package §%S§
{
   import flash.display.MovieClip;
   
   public class §>!>§ extends §%X§
   {
       
      
      public var §@Q§:MovieClip;
      
      public var §>a§:int = 0;
      
      public function §>!>§(param1:XML, param2:§,1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§>a§ = param1.@childIndex;
         }
      }
      
      public function §9h§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§@Q§ = param1;
         this.§@Q§.mouseEnabled = false;
         this.§@Q§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§>a§ < 1)
         {
            mClip.addChild(this.§@Q§);
         }
         else
         {
            mClip.addChildAt(this.§@Q§,this.§>a§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§@Q§)
         {
            this.§@Q§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§@Q§ && (mParentContainer.mParentContainer as §]r§).§#Z§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§@Q§.filters = [(mParentContainer.mParentContainer as §]r§).§#Z§];
            }
            else
            {
               this.§@Q§.filters = [];
            }
         }
      }
   }
}
