package §0"$§
{
   import flash.display.MovieClip;
   
   public class §%!M§ extends §;§
   {
       
      
      public var §1z§:MovieClip;
      
      public var §`p§:int = 0;
      
      public function §%!M§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§`p§ = param1.@childIndex;
         }
      }
      
      public function § j§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§1z§ = param1;
         this.§1z§.mouseEnabled = false;
         this.§1z§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§`p§ < 1)
         {
            mClip.addChild(this.§1z§);
         }
         else
         {
            mClip.addChildAt(this.§1z§,this.§`p§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§1z§)
         {
            this.§1z§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§1z§ && (mParentContainer.mParentContainer as §7!a§).§[!s§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§1z§.filters = [(mParentContainer.mParentContainer as §7!a§).§[!s§];
            }
            else
            {
               this.§1z§.filters = [];
            }
         }
      }
   }
}
