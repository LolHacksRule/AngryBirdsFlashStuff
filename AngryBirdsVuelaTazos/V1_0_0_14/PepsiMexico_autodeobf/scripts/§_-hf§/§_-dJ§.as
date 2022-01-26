package §_-hf§
{
   import flash.display.MovieClip;
   
   public class §_-dJ§ extends §_-6o§
   {
       
      
      public var §_-HX§:MovieClip;
      
      public function §_-dJ§(param1:XML, param2:§_-WL§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function §_-Hl§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§_-HX§ = param1;
         this.§_-HX§.mouseEnabled = false;
         this.§_-HX§.mouseChildren = false;
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
            mClip.addChild(this.§_-HX§);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§_-HX§)
         {
            this.§_-HX§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§_-HX§ && (mParentContainer.mParentContainer as §_-b-§).§_-PW§)
         {
            if(param1 == §_-WJ§)
            {
               this.§_-HX§.filters = [(mParentContainer.mParentContainer as §_-b-§).§_-PW§];
            }
            else
            {
               this.§_-HX§.filters = [];
            }
         }
      }
   }
}
