package §]!6§
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var §&!R§:MovieClip;
      
      public var §9!i§:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§9!i§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§&!R§ = param1;
         this.§&!R§.mouseEnabled = false;
         this.§&!R§.mouseChildren = false;
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
         else if(this.§9!i§ < 1)
         {
            mClip.addChild(this.§&!R§);
         }
         else
         {
            mClip.addChildAt(this.§&!R§,this.§9!i§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&!R§)
         {
            this.§&!R§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§&!R§ && (mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§&!R§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§];
            }
            else
            {
               this.§&!R§.filters = [];
            }
         }
      }
   }
}
