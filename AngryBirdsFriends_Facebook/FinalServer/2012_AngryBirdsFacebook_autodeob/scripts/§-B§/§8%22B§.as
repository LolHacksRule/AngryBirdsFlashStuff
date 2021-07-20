package §-B§
{
   import flash.display.MovieClip;
   
   public class §8"B§ extends §]!<§
   {
       
      
      public var §["2§:MovieClip;
      
      public var §<!^§:int = 0;
      
      public function §8"B§(param1:XML, param2:§?!j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§<!^§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§["2§ = param1;
         this.§["2§.mouseEnabled = false;
         this.§["2§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§<!^§ < 1)
         {
            mClip.addChild(this.§["2§);
         }
         else
         {
            mClip.addChildAt(this.§["2§,this.§<!^§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§["2§)
         {
            this.§["2§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§["2§ && (mParentContainer.mParentContainer as §<"$§).§9Z§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§["2§.filters = [(mParentContainer.mParentContainer as §<"$§).§9Z§];
            }
            else
            {
               this.§["2§.filters = [];
            }
         }
      }
   }
}
