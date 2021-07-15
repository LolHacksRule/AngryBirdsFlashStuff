package com.angrybirds.ui.scroller
{
   import com.rovio.ui.scroller.ScrollerItemRenderer;
   import com.rovio.ui.scroller.VScroller;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class VScrollerCustom extends VScroller
   {
       
      
      private var mContainerRovio:UIContainerRovio;
      
      private var mSelectedButtonName:String = "";
      
      public function VScrollerCustom(param1:Number, param2:Number, param3:UIContainerRovio, param4:Array = null, param5:Class = null, param6:Number = 0, param7:Number = 1.7976931348623157E308)
      {
         this.mContainerRovio = param3;
         super(param1,param2,param4,param5,param6,param7);
      }
      
      public function set selectedButtonName(param1:String) : void
      {
         this.mSelectedButtonName = param1;
      }
      
      override public function dispose() : void
      {
         var _loc1_:ScrollerItemRendererCustom = null;
         super.dispose();
         for each(_loc1_ in mItemRendererWidth)
         {
            _loc1_.disposeRovioButton(this.mContainerRovio);
         }
      }
      
      override protected function setRendererData(param1:ScrollerItemRenderer, param2:Object) : void
      {
         super.setRendererData(param1,param2);
         (param1 as ScrollerItemRendererCustom).createCustomItemRenderer(this.mContainerRovio,this.mSelectedButtonName);
      }
      
      public function selectIndex(param1:int) : UIButtonRovio
      {
         return (mItemRendererHeight[param1] as ScrollerItemRendererCustom).setSelected(true);
      }
      
      override protected function hide(param1:ScrollerItemRenderer) : void
      {
         (param1 as ScrollerItemRendererCustom).hide(this.mContainerRovio);
         super.hide(param1);
      }
      
      public function get targetOffset() : int
      {
         return mTargetOffset;
      }
   }
}
