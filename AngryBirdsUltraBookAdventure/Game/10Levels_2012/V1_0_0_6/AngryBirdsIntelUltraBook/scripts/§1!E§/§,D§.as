package §1!E§
{
   import flash.display.MovieClip;
   
   public class §,D§ extends §==§
   {
       
      
      public var §4?§:MovieClip;
      
      public var §[a§:int = 0;
      
      public function §,D§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§[a§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§4?§ = param1;
         this.§4?§.mouseEnabled = false;
         this.§4?§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§[a§ < 1)
         {
            mClip.addChild(this.§4?§);
         }
         else
         {
            mClip.addChildAt(this.§4?§,this.§[a§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§4?§)
         {
            this.§4?§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§4?§ && (mParentContainer.mParentContainer as §31§).§1O§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§4?§.filters = [(mParentContainer.mParentContainer as §31§).§1O§];
            }
            else
            {
               this.§4?§.filters = [];
            }
         }
      }
   }
}
