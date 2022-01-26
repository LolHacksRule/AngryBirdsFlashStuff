package §3!M§
{
   import flash.display.MovieClip;
   
   public class §6A§ extends §`!;§
   {
       
      
      public var §[O§:MovieClip;
      
      public var §+q§:int = 0;
      
      public function §6A§(param1:XML, param2:§7^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§+q§ = param1.@childIndex;
         }
      }
      
      public function §=4§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§[O§ = param1;
         this.§[O§.mouseEnabled = false;
         this.§[O§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§+q§ < 1)
         {
            mClip.addChild(this.§[O§);
         }
         else
         {
            mClip.addChildAt(this.§[O§,this.§+q§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§[O§)
         {
            this.§[O§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§[O§ && (mParentContainer.mParentContainer as §+!1§).§+8§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§[O§.filters = [(mParentContainer.mParentContainer as §+!1§).§+8§];
            }
            else
            {
               this.§[O§.filters = [];
            }
         }
      }
   }
}
