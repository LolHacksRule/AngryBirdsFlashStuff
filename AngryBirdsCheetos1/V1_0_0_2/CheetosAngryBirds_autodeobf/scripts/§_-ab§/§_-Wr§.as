package §_-ab§
{
   import flash.display.MovieClip;
   
   public class §_-Wr§ extends §_-q4§
   {
       
      
      public var §_-CU§:MovieClip;
      
      public var §_-Gw§:int = 0;
      
      public function §_-Wr§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§_-Gw§ = param1.@childIndex;
         }
      }
      
      public function §_-aO§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-CU§ = param1;
         this.§_-CU§.mouseEnabled = false;
         this.§_-CU§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§_-Gw§ < 1)
         {
            mClip.addChild(this.§_-CU§);
         }
         else
         {
            mClip.addChildAt(this.§_-CU§,this.§_-Gw§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-CU§)
         {
            this.§_-CU§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-CU§ && (mParentContainer.mParentContainer as §_-EN§).§_-ja§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§_-CU§.filters = [(mParentContainer.mParentContainer as §_-EN§).§_-ja§];
            }
            else
            {
               this.§_-CU§.filters = [];
            }
         }
      }
   }
}
