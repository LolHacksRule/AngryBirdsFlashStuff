package §_-Ll§
{
   import flash.display.MovieClip;
   
   public class §_-Nt§ extends §_-FU§
   {
       
      
      public var §_-N8§:MovieClip;
      
      public var §_-QS§:int = 0;
      
      public function §_-Nt§(param1:XML, param2:§_-4G§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§_-QS§ = param1.@childIndex;
         }
      }
      
      public function §_-jj§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-N8§ = param1;
         this.§_-N8§.mouseEnabled = false;
         this.§_-N8§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§_-QS§ < 1)
         {
            mClip.addChild(this.§_-N8§);
         }
         else
         {
            mClip.addChildAt(this.§_-N8§,this.§_-QS§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-N8§)
         {
            this.§_-N8§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-N8§ && (mParentContainer.mParentContainer as §_-fZ§).§_-sn§)
         {
            if(param1 == §_-z6§)
            {
               this.§_-N8§.filters = [(mParentContainer.mParentContainer as §_-fZ§).§_-sn§];
            }
            else
            {
               this.§_-N8§.filters = [];
            }
         }
      }
   }
}
