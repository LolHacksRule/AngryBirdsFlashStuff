package §6"r§
{
   import flash.display.MovieClip;
   
   public class §9a§ extends §=O§
   {
       
      
      public var §#f§:MovieClip;
      
      public var §5"u§:int = 0;
      
      public function §9a§(param1:XML, param2:§0"<§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§5"u§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§#f§ = param1;
         this.§#f§.mouseEnabled = false;
         this.§#f§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§5"u§ < 1)
         {
            mClip.addChild(this.§#f§);
         }
         else
         {
            mClip.addChildAt(this.§#f§,this.§5"u§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§#f§)
         {
            this.§#f§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§#f§ && (mParentContainer.mParentContainer as §3#@§).§'"v§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§#f§.filters = [(mParentContainer.mParentContainer as §3#@§).§'"v§];
            }
            else
            {
               this.§#f§.filters = [];
            }
         }
      }
   }
}
