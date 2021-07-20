package com.angrybirds.ui.scroller
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.countrydata.Language;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class ScrollerItemRendererLanguage extends ScrollerItemRendererCustom
   {
       
      
      public function ScrollerItemRendererLanguage()
      {
         var _loc1_:Class = AssetCache.getAssetFromCache("CountrySelection_Asset") as Class;
         mButtonClip = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:UIContainerRovio) : void
      {
         if(mScrollerItem)
         {
            if(mScrollerItem.mClip.parent == this)
            {
               removeChild(mScrollerItem.mClip);
            }
            param1.mClip.addChild(mScrollerItem.mClip);
            param1.removeComponent(mScrollerItem);
         }
      }
      
      override public function hide(param1:UIContainerRovio) : void
      {
         if(mScrollerItem)
         {
            param1.mClip.addChild(mScrollerItem.mClip);
            param1.removeComponent(mScrollerItem);
            mScrollerItem.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            mScrollerItem.setEnabled(true);
            mScrollerItem = null;
         }
      }
      
      override protected function createRovioButton(param1:UIContainerRovio, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:UIButtonRovio = null;
         var _loc4_:String = "ScrollItem_" + (data as Language).id;
         for each(_loc5_ in param1.mItems)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         mScrollerItem = new UIButtonRovio(_loc3_,param1,mButtonClip);
         mScrollerItem.mClip.text.text = (data as Language).nativeName;
         if(param2 == _loc4_)
         {
            setSelected(true);
            param2 = "";
         }
         if(mScrollerItem.mClip.parent != this)
         {
            addChild(mScrollerItem.mClip);
            param1.addComponent(mScrollerItem);
         }
      }
   }
}
