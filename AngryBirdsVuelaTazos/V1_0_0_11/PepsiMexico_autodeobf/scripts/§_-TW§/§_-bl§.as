package §_-TW§
{
   import flash.display.MovieClip;
   
   public class §_-bl§ extends §_-r6§
   {
       
      
      public var §_-D§:MovieClip;
      
      public function §_-bl§(param1:XML, param2:§_-qq§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-Ln§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-D§ = param1;
         this.§_-D§.mouseEnabled = false;
         this.§_-D§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else
         {
            mClip.addChild(this.§_-D§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-D§)
         {
            this.§_-D§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-D§ && (mParentContainer.mParentContainer as §_-CI§).§_-0m§)
         {
            if(param1 == §_-1M§)
            {
               this.§_-D§.filters = [(mParentContainer.mParentContainer as §_-CI§).§_-0m§];
            }
            else
            {
               this.§_-D§.filters = [];
            }
         }
      }
   }
}
