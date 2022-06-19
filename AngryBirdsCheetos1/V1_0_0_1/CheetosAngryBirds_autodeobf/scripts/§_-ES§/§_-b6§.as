package §_-ES§
{
   import flash.display.MovieClip;
   
   public class §_-b6§ extends §_-Ng§
   {
       
      
      public var §_-Rb§:MovieClip;
      
      public var §_-X2§:int = 0;
      
      public function §_-b6§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§_-X2§ = param1.@childIndex;
         }
      }
      
      public function §_-EG§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-Rb§ = param1;
         this.§_-Rb§.mouseEnabled = false;
         this.§_-Rb§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§_-X2§ < 1)
         {
            mClip.addChild(this.§_-Rb§);
         }
         else
         {
            mClip.addChildAt(this.§_-Rb§,this.§_-X2§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-Rb§)
         {
            this.§_-Rb§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-Rb§ && (mParentContainer.mParentContainer as §_-GJ§).§_-Gw§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§_-Rb§.filters = [(mParentContainer.mParentContainer as §_-GJ§).§_-Gw§];
            }
            else
            {
               this.§_-Rb§.filters = [];
            }
         }
      }
   }
}
