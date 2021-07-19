package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const ALIGN_CENTER:int = 0;
      
      public static const ALIGN_BOTTOM:int = 1;
      
      public static const ALIGN_LEFT:int = 2;
       
      
      public var inventoryButtonBaseName:String;
      
      public var mButtonClass:Class;
      
      public var mButtonIconContainer:String = null;
      
      public var mButtonGroups:Array;
      
      public var mButtonCountOnSurface:int;
      
      public var mSurfaceX:Number;
      
      public var mSurfaceY:Number;
      
      public var mSurfaceW:Number;
      
      public var mSurfaceH:Number;
      
      public var mFirstButtonX:Number;
      
      public var mFirstButtonY:Number;
      
      public var mButtonMarginX:Number;
      
      public var mButtonMarginY:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var mTrackCount:int;
      
      public var mButtonBottomMargin:Number;
      
      public var mVisibleTabName:String = "";
      
      public var mButtonAlignment:int;
      
      public var mSurfaceAlignment:int;
      
      public var mGlowFilter:GlowFilter;
      
      public var mSideScrolling:Boolean = true;
      
      public var mItemCountForScrolling:int;
      
      public var mButtonSelectionMode:int;
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:UIView)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         super(param1,param2,param3);
         this.inventoryButtonBaseName = param1.@button;
         if(this.inventoryButtonBaseName.length > 0)
         {
            this.mButtonClass = AssetCache.getAssetFromCache(this.inventoryButtonBaseName);
         }
         var _loc4_:String;
         if((_loc4_ = param1.@buttonIconContainer).length > 0)
         {
            this.mButtonIconContainer = _loc4_;
         }
         this.mButtonAlignment = ALIGN_CENTER;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.mButtonAlignment = ALIGN_BOTTOM;
            }
         }
         this.mSurfaceAlignment = ALIGN_LEFT;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.mSurfaceAlignment = ALIGN_CENTER;
            }
         }
         var _loc5_:String;
         if((_loc5_ = param1.@GlowFilter) && _loc5_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.mGlowFilter = new GlowFilter(_loc16_,1,3,3,10);
         }
         var _loc6_:XML;
         (_loc6_ = <Button/>).@name = "Button_Scroll1";
         _loc6_.@MouseUp = "SCROLL_LEFT";
         mItems[mItems.length] = new UIButtonRovio(_loc6_,this);
         var _loc7_:XML;
         (_loc7_ = <Button/>).@name = "Button_Scroll2";
         _loc7_.@MouseUp = "SCROLL_RIGHT";
         mItems[mItems.length] = new UIButtonRovio(_loc7_,this);
         this.mSurfaceX = mClip.getChildByName("Surface").x;
         this.mSurfaceY = mClip.getChildByName("Surface").y;
         this.mSurfaceW = mClip.getChildByName("Surface").width;
         this.mSurfaceH = mClip.getChildByName("Surface").height;
         this.mFirstButtonX = mClip.getChildByName("Button_Area1").x - this.mSurfaceX;
         this.mFirstButtonY = mClip.getChildByName("Button_Area1").y - this.mSurfaceY;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").x - this.mSurfaceX;
         var _loc9_:Number = mClip.getChildByName("Button_Area2").y - this.mSurfaceY;
         var _loc10_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.mButtonBottomMargin = _loc10_.bottom - this.mSurfaceY - this.mFirstButtonY;
         this.mButtonMarginX = _loc8_ - this.mFirstButtonX;
         this.mButtonMarginY = _loc9_ - this.mFirstButtonY;
         if(Math.abs(this.mButtonMarginX) < 3)
         {
            this.mButtonMarginX = 0;
         }
         if(Math.abs(this.mButtonMarginY) < 3)
         {
            this.mButtonMarginY = 0;
         }
         var _loc11_:Number = 9999;
         var _loc12_:Number = 9999;
         if(this.mButtonMarginX != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").width - this.mFirstButtonX - this.mFirstButtonX) / this.mButtonMarginX;
         }
         if(this.mButtonMarginY != 0)
         {
            _loc12_ = 1 + (mClip.getChildByName("Surface").height - this.mFirstButtonY - this.mFirstButtonY) / this.mButtonMarginY;
         }
         this.mButtonCountOnSurface = Math.min(_loc11_,_loc12_);
         this.mSideScrolling = _loc11_ <= _loc12_;
         var _loc13_:String;
         if((_loc13_ = param1.@ScrollPerClick) && _loc13_.length > 0)
         {
            this.mItemCountForScrolling = param1.@ScrollPerClick;
         }
         else
         {
            this.mItemCountForScrolling = this.mButtonCountOnSurface;
         }
         this.mTrackCount = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc17_ = mClip.getChildByName("Button_Area3").x - this.mSurfaceX;
            _loc18_ = mClip.getChildByName("Button_Area3").y - this.mSurfaceY;
            this.mButtonMarginX2 = _loc17_ - this.mFirstButtonX;
            this.mButtonMarginY2 = _loc18_ - this.mFirstButtonY;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.mSideScrolling)
            {
               this.mTrackCount = 1 + (mClip.getChildByName("Surface").height - this.mFirstButtonY - this.mFirstButtonY) / this.mButtonMarginY2;
            }
            else
            {
               this.mTrackCount = 1 + (mClip.getChildByName("Surface").width - this.mFirstButtonX - this.mFirstButtonX) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.mButtonSelectionMode = UIButtonGroupRovio.TYPE_NO_SELECTION;
                  break;
               case "EXCLUSIVE":
               default:
                  this.mButtonSelectionMode = UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS;
            }
         }
         this.loadTabs();
      }
      
      public function loadTabs(param1:Array = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         var _loc5_:XML = null;
         var _loc6_:UIRepeaterTabRovio = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XML = null;
         var _loc11_:UIRepeaterButtonRovio = null;
         var _loc12_:MovieClip = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         this.mButtonGroups = new Array();
         this.clearTabs();
         if(param1 == null)
         {
            param1 = getParentView().getRepeaterDataXML(mName);
         }
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = mName + "_Tab_" + _loc2_;
            _loc4_ = new MovieClip();
            (_loc5_ = <Container/>).@name = _loc3_;
            mItems[mItems.length] = new UIRepeaterTabRovio(_loc5_,this,null,_loc4_);
            _loc6_ = mItems[mItems.length - 1];
            this.mButtonGroups[this.mButtonGroups.length] = new UIButtonGroupRovio(this.mButtonSelectionMode,_loc3_);
            _loc7_ = this.mFirstButtonX;
            _loc8_ = this.mButtonCountOnSurface;
            if((param1[_loc2_] as Array).length < _loc8_)
            {
               _loc8_ = (param1[_loc2_] as Array).length;
            }
            if(this.mSurfaceAlignment == ALIGN_CENTER)
            {
               _loc7_ = (this.mSurfaceW - (_loc8_ - 1) * this.mButtonMarginX) / 2;
            }
            _loc9_ = 0;
            while(_loc9_ < (param1[_loc2_] as Array).length)
            {
               _loc10_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[0] as XML;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[2])
               {
                  _loc6_.mItems[_loc6_.mItems.length] = new UIRepeaterButtonRovio(_loc10_,_loc6_,((param1[_loc2_] as Array)[_loc9_] as Array)[2] as MovieClip);
               }
               else
               {
                  _loc6_.mItems[_loc6_.mItems.length] = new UIRepeaterButtonRovio(_loc10_,_loc6_,new this.mButtonClass() as MovieClip);
               }
               _loc11_ = _loc6_.mItems[_loc6_.mItems.length - 1] as UIRepeaterButtonRovio;
               if(((param1[_loc2_] as Array)[_loc9_] as Array)[1] != null)
               {
                  _loc12_ = ((param1[_loc2_] as Array)[_loc9_] as Array)[1] as MovieClip;
                  _loc11_.setIcon(_loc12_,this.mButtonIconContainer);
                  if(this.mButtonAlignment == ALIGN_BOTTOM)
                  {
                     _loc13_ = 2;
                     _loc12_.y -= _loc12_.height / 2;
                     if(this.mButtonIconContainer == null)
                     {
                        _loc12_.y -= _loc13_;
                     }
                  }
               }
               if(this.mTrackCount == 1)
               {
                  _loc11_.x = _loc7_ + _loc9_ * this.mButtonMarginX;
                  _loc11_.y = this.mFirstButtonY + _loc9_ * this.mButtonMarginY;
               }
               else
               {
                  _loc14_ = _loc9_ / (this.mButtonCountOnSurface * this.mTrackCount);
                  _loc15_ = (_loc9_ - _loc14_ * this.mButtonCountOnSurface * this.mTrackCount) / this.mButtonCountOnSurface;
                  _loc16_ = (_loc9_ - _loc14_ * this.mButtonCountOnSurface * this.mTrackCount) % this.mButtonCountOnSurface;
                  if(this.mSideScrolling)
                  {
                     _loc11_.x = _loc7_ + _loc16_ * this.mButtonMarginX + _loc14_ * this.mButtonCountOnSurface * this.mButtonMarginX;
                     _loc11_.y = this.mFirstButtonY + _loc15_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc11_.x = _loc7_ + _loc15_ * this.mButtonMarginX2;
                     _loc11_.y = this.mFirstButtonY + _loc16_ * this.mButtonMarginY + _loc14_ * this.mButtonCountOnSurface * this.mButtonMarginY;
                  }
               }
               (this.mButtonGroups[this.mButtonGroups.length - 1] as UIButtonGroupRovio).addButton(_loc11_);
               _loc9_++;
            }
            (this.mButtonGroups[this.mButtonGroups.length - 1] as UIButtonGroupRovio).buttonSelected("");
            _loc6_.initTab(this.mButtonCountOnSurface,this.mSurfaceX,this.mSurfaceY,this.mItemCountForScrolling * this.mButtonMarginX,this.mItemCountForScrolling * this.mButtonMarginY,this.mTrackCount,this.mItemCountForScrolling);
            _loc2_++;
         }
         if(param1.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc5_:UIButtonGroupRovio = null;
         super.containerEventOccured(param1,param2,param3);
         var _loc4_:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc4_)
            {
               _loc4_.setCurrentPage(_loc4_.mCurrentPage - 1);
               this.updateScrollButtonStates();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc4_)
            {
               _loc4_.setCurrentPage(_loc4_.mCurrentPage + 1);
               this.updateScrollButtonStates();
            }
         }
         else if(param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && param3 is UIComponentRovio)
         {
            if((_loc5_ = this.getButtonGroupByName((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase())) && param3 is UIRepeaterButtonRovio)
            {
               _loc5_.buttonSelected((param3 as UIComponentRovio).mName.toUpperCase());
            }
         }
      }
      
      public function setPageForTab(param1:String, param2:int) : void
      {
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc3_)
         {
            _loc3_.setCurrentPage(param2);
            this.updateScrollButtonStates();
         }
      }
      
      public function getButtonGroupByName(param1:String) : UIButtonGroupRovio
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mButtonGroups.length)
         {
            if(param1.toUpperCase() == (this.mButtonGroups[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.mButtonGroups[_loc2_] as UIButtonGroupRovio;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setVisibleTab(param1:String) : void
      {
         this.mVisibleTabName = param1;
         var _loc2_:int = 0;
         while(_loc2_ < mItems.length)
         {
            if(mItems[_loc2_] is UIRepeaterTabRovio)
            {
               if((mItems[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (mItems[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
               }
               else
               {
                  (mItems[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.updateScrollButtonStates();
      }
      
      public function updateScrollButtonStates() : void
      {
         var _loc1_:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(_loc1_)
         {
            if(_loc1_.mCurrentPage > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.mCurrentPage < _loc1_.mTotalPageCount - 1)
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function clearTabs() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mItems.length)
         {
            if(mItems[_loc1_] is UIRepeaterTabRovio)
            {
               (mItems[_loc1_] as UIRepeaterTabRovio).clear();
               mItems.splice(_loc1_,1);
               _loc1_--;
            }
            _loc1_++;
         }
         this.setVisibleTab("");
      }
      
      public function resetSelections() : void
      {
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.mButtonGroups)
         {
            _loc1_.buttonSelected("");
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.mButtonClass = null;
         this.mButtonGroups = null;
         this.mGlowFilter = null;
      }
   }
}
