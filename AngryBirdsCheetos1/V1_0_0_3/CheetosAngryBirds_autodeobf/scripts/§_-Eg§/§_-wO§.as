package §_-Eg§
{
   import flash.display.MovieClip;
   
   public class §_-wO§ extends §_-hf§
   {
       
      
      public var §_-WY§:MovieClip;
      
      public var §_-aL§:int = 0;
      
      public function §_-wO§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§_-aL§ = param1.@childIndex;
         }
      }
      
      public function §_-7r§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-WY§ = param1;
         this.§_-WY§.mouseEnabled = false;
         this.§_-WY§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§_-aL§ < 1)
         {
            mClip.addChild(this.§_-WY§);
         }
         else
         {
            mClip.addChildAt(this.§_-WY§,this.§_-aL§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-WY§)
         {
            this.§_-WY§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-WY§ && (mParentContainer.mParentContainer as §_-y2§).§ null§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§_-WY§.filters = [(mParentContainer.mParentContainer as §_-y2§).§ null§];
            }
            else
            {
               this.§_-WY§.filters = [];
            }
         }
      }
   }
}
