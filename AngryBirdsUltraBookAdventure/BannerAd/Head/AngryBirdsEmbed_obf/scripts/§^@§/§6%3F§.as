package §^@§
{
   import flash.display.MovieClip;
   
   public class §6?§ extends §=^§
   {
       
      
      public var §?o§:MovieClip;
      
      public var §@!C§:int = 0;
      
      public function §6?§(param1:XML, param2:§2q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§@!C§ = param1.@childIndex;
         }
      }
      
      public function §""§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§?o§ = param1;
         this.§?o§.mouseEnabled = false;
         this.§?o§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§@!C§ < 1)
         {
            mClip.addChild(this.§?o§);
         }
         else
         {
            mClip.addChildAt(this.§?o§,this.§@!C§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§?o§)
         {
            this.§?o§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§?o§ && (mParentContainer.mParentContainer as §8L§).§'n§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§?o§.filters = [(mParentContainer.mParentContainer as §8L§).§'n§];
            }
            else
            {
               this.§?o§.filters = [];
            }
         }
      }
   }
}
