package §class§
{
   import flash.display.MovieClip;
   
   public class §'3§ extends §?q§
   {
       
      
      public var §!J§:MovieClip;
      
      public var §"d§:int = 0;
      
      public function §'3§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§"d§ = param1.@childIndex;
         }
      }
      
      public function §;!G§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§!J§ = param1;
         this.§!J§.mouseEnabled = false;
         this.§!J§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§"d§ < 1)
         {
            mClip.addChild(this.§!J§);
         }
         else
         {
            mClip.addChildAt(this.§!J§,this.§"d§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§!J§)
         {
            this.§!J§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§!J§ && (mParentContainer.mParentContainer as §use §).§>m§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§!J§.filters = [(mParentContainer.mParentContainer as §use §).§>m§];
            }
            else
            {
               this.§!J§.filters = [];
            }
         }
      }
   }
}
