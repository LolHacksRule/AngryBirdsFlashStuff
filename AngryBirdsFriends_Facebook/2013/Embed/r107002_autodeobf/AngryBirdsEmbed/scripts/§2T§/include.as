package §2T§
{
   import flash.display.MovieClip;
   
   public class include extends §2H§
   {
       
      
      public var §>n§:MovieClip;
      
      public var §^!L§:int = 0;
      
      public function include(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§^!L§ = param1.@childIndex;
         }
      }
      
      public function §@r§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§>n§ = param1;
         this.§>n§.mouseEnabled = false;
         this.§>n§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§^!L§ < 1)
         {
            mClip.addChild(this.§>n§);
         }
         else
         {
            mClip.addChildAt(this.§>n§,this.§^!L§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§>n§)
         {
            this.§>n§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§>n§ && (mParentContainer.mParentContainer as §#!'§).§"S§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§>n§.filters = [(mParentContainer.mParentContainer as §#!'§).§"S§];
            }
            else
            {
               this.§>n§.filters = [];
            }
         }
      }
   }
}
