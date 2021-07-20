package com.rovio.ui.Components
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var mButtonIcon:MovieClip;
      
      public var mChildIndex:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.mChildIndex = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.mButtonIcon = param1;
         this.mButtonIcon.mouseEnabled = false;
         this.mButtonIcon.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.mChildIndex < 1)
         {
            mClip.addChild(this.mButtonIcon);
         }
         else
         {
            mClip.addChildAt(this.mButtonIcon,this.mChildIndex - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mButtonIcon)
         {
            this.mButtonIcon = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.mButtonIcon && (mParentContainer.mParentContainer as UIRepeaterRovio).mGlowFilter)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.mButtonIcon.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).mGlowFilter];
            }
            else
            {
               this.mButtonIcon.filters = [];
            }
         }
      }
   }
}
