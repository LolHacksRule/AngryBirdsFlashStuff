package §"U§
{
   import flash.display.MovieClip;
   
   public class §&!M§ extends §^'§
   {
       
      
      public var §3!4§:MovieClip;
      
      public var §]i§:int = 0;
      
      public function §&!M§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§]i§ = param1.@childIndex;
         }
      }
      
      public function §[!0§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§3!4§ = param1;
         this.§3!4§.mouseEnabled = false;
         this.§3!4§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§]i§ < 1)
         {
            mClip.addChild(this.§3!4§);
         }
         else
         {
            mClip.addChildAt(this.§3!4§,this.§]i§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§3!4§)
         {
            this.§3!4§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§3!4§ && (mParentContainer.mParentContainer as §"]§).§@O§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§3!4§.filters = [(mParentContainer.mParentContainer as §"]§).§@O§];
            }
            else
            {
               this.§3!4§.filters = [];
            }
         }
      }
   }
}
