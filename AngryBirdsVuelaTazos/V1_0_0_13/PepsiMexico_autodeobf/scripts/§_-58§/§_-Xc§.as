package §_-58§
{
   import flash.display.MovieClip;
   
   public class §_-Xc§ extends §_-8c§
   {
       
      
      public var §_-2n§:MovieClip;
      
      public function §_-Xc§(param1:XML, param2:§_-WC§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-r§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-2n§ = param1;
         this.§_-2n§.mouseEnabled = false;
         this.§_-2n§.mouseChildren = false;
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
            mClip.addChild(this.§_-2n§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-2n§)
         {
            this.§_-2n§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-2n§ && (mParentContainer.mParentContainer as §_-iR§).§ do§)
         {
            if(param1 == §_-Gc§)
            {
               this.§_-2n§.filters = [(mParentContainer.mParentContainer as §_-iR§).§ do§];
            }
            else
            {
               this.§_-2n§.filters = [];
            }
         }
      }
   }
}
