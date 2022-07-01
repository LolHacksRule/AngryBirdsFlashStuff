package §"!E§
{
   import flash.display.MovieClip;
   
   public class § else§ extends §#!'§
   {
       
      
      public var §2!k§:MovieClip;
      
      public var §`!4§:int = 0;
      
      public function § else§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§`!4§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§2!k§ = param1;
         this.§2!k§.mouseEnabled = false;
         this.§2!k§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§`!4§ < 1)
         {
            mClip.addChild(this.§2!k§);
         }
         else
         {
            mClip.addChildAt(this.§2!k§,this.§`!4§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§2!k§)
         {
            this.§2!k§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§2!k§ && (mParentContainer.mParentContainer as §?j§).§4!3§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§2!k§.filters = [(mParentContainer.mParentContainer as §?j§).§4!3§];
            }
            else
            {
               this.§2!k§.filters = [];
            }
         }
      }
   }
}
