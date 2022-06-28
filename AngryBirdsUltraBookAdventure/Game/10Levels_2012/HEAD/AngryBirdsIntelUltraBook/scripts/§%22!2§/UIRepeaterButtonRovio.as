package §"!2§
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var §^!b§:MovieClip;
      
      public var §#$§:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§#$§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§^!b§ = param1;
         this.§^!b§.mouseEnabled = false;
         this.§^!b§.mouseChildren = false;
         if(param2 != null)
         {
            _loc4_ = mClip.getChildByName(param2) as MovieClip;
            _loc4_.addChild(param1);
            _loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip;
            if(_loc5_)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§#$§ < 1)
         {
            mClip.addChild(this.§^!b§);
         }
         else
         {
            mClip.addChildAt(this.§^!b§,this.§#$§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§^!b§)
         {
            this.§^!b§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§^!b§ && (mParentContainer.mParentContainer as UIRepeaterRovio).§@!]§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§^!b§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§@!]§];
            }
            else
            {
               this.§^!b§.filters = [];
            }
         }
      }
   }
}
