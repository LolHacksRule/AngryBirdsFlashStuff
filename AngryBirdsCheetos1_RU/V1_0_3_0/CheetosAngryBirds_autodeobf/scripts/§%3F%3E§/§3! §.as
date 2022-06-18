package §?>§
{
   import flash.display.MovieClip;
   
   public class §3! § extends §!&§
   {
       
      
      public var §#w§:MovieClip;
      
      public var §5!>§:int = 0;
      
      public function §3! §(param1:XML, param2:§ !V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§5!>§ = param1.@childIndex;
         }
      }
      
      public function §&q§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§#w§ = param1;
         this.§#w§.mouseEnabled = false;
         this.§#w§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§5!>§ < 1)
         {
            mClip.addChild(this.§#w§);
         }
         else
         {
            mClip.addChildAt(this.§#w§,this.§5!>§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§#w§)
         {
            this.§#w§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§#w§ && (mParentContainer.mParentContainer as §5t§).§]!O§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§#w§.filters = [(mParentContainer.mParentContainer as §5t§).§]!O§];
            }
            else
            {
               this.§#w§.filters = [];
            }
         }
      }
   }
}
