package §_-of§
{
   import flash.display.MovieClip;
   
   public class §_-Fo§ extends §_-Yk§
   {
       
      
      public var §_-os§:MovieClip;
      
      public function §_-Fo§(param1:XML, param2:§_-H4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-pL§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-os§ = param1;
         this.§_-os§.mouseEnabled = false;
         this.§_-os§.mouseChildren = false;
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
            mClip.addChild(this.§_-os§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-os§)
         {
            this.§_-os§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-os§ && (mParentContainer.mParentContainer as §_-Ci§).§_-Jm§)
         {
            if(param1 == §_-Y2§)
            {
               this.§_-os§.filters = [(mParentContainer.mParentContainer as §_-Ci§).§_-Jm§];
            }
            else
            {
               this.§_-os§.filters = [];
            }
         }
      }
   }
}
