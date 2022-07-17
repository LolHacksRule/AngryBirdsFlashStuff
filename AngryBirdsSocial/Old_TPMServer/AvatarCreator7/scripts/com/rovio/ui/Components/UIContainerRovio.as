package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIContainerRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mParentView:UIView;
      
      public var mMovieClip:MovieClip;
      
      public var mName:String;
      
      public var mItems:Array;
      
      public var mActive:Boolean = false;
      
      public var mVisibility:Boolean = true;
      
      public var mRepeaterTab:Boolean = false;
      
      public function UIContainerRovio(param1:XML, param2:UIContainerRovio, param3:UIView, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:String = null;
         var _loc12_:Class = null;
         var _loc13_:Class = null;
         var _loc14_:int = 0;
         var _loc15_:Sprite = null;
         this.mName = param1.@name;
         this.mItems = new Array();
         if(param3)
         {
            this.mParentView = param3;
            _loc12_ = AssetCache.getAssetFromCache(this.mName);
            this.mMovieClip = new _loc12_();
            addChild(this.mMovieClip);
            this.mParentView.mMovieClip.addChild(this);
         }
         else if(param2)
         {
            this.mParentContainer = param2;
            if(param4)
            {
               this.mMovieClip = param4;
               addChild(this.mMovieClip);
               this.mParentContainer.mMovieClip.addChild(this);
            }
            else if(param1.@fromLibrary == "True")
            {
               _loc13_ = AssetCache.getAssetFromCache(this.mName);
               this.mMovieClip = new _loc13_();
               addChild(this.mMovieClip);
               this.mParentContainer.mMovieClip.addChild(this);
            }
            else
            {
               this.mMovieClip = this.mParentContainer.mMovieClip.getChildByName(this.mName) as MovieClip;
               _loc14_ = this.mParentContainer.mMovieClip.getChildIndex(this.mMovieClip);
               addChild(this.mMovieClip);
               this.mParentContainer.mMovieClip.addChildAt(this,_loc14_);
            }
            if(param1.@isBehind == "True")
            {
               param2.mMovieClip.setChildIndex(this,0);
            }
            if(param1.@isOverlay == "True")
            {
               _loc15_ = this.getParentView().createOverlaySprite();
               this.mMovieClip.addChildAt(_loc15_,0);
            }
         }
         super(this.mMovieClip);
         for each(_loc5_ in param1.Container)
         {
            this.mItems[this.mItems.length] = new UIContainerRovio(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.mItems[this.mItems.length] = new UIRepeaterRovio(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.mItems[this.mItems.length] = new UIButtonRovio(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.mItems[this.mItems.length] = new UITextFieldRovio(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.mItems[this.mItems.length] = new UIMovieClipRovio(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.mItems[this.mItems.length] = new UIPopUpRovio(_loc10_,this);
         }
         if((_loc11_ = param1.@visible) && _loc11_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         if((_loc11_ = param1.@enabled) && _loc11_.toUpperCase() == "TRUE")
         {
            this.setEnabled(true);
         }
         else
         {
            this.setEnabled(false);
         }
         if(param1.@MouseDown.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,param1.@MouseOut);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         this.containerEventOccured(param1,param2,this);
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(this.mParentContainer)
         {
            this.mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.mParentView)
         {
            this.mParentView.listenerEventOccured(param1,param2,param3);
         }
      }
      
      public function activateContainer() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mItems.length)
         {
            if(this.mItems[_loc1_] is UIContainerRovio)
            {
               (this.mItems[_loc1_] as UIContainerRovio).activateContainer();
            }
            else if(this.mItems[_loc1_] is UIComponentRovio)
            {
               (this.mItems[_loc1_] as UIComponentRovio).setActiveStatus(true);
            }
            _loc1_++;
         }
         this.mActive = true;
         visible = this.mActive && this.mVisibility;
         this.mMovieClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function deactivateContainer() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mItems.length)
         {
            if(this.mItems[_loc1_] is UIContainerRovio)
            {
               (this.mItems[_loc1_] as UIContainerRovio).deactivateContainer();
            }
            else if(this.mItems[_loc1_] is UIComponentRovio)
            {
               (this.mItems[_loc1_] as UIComponentRovio).setActiveStatus(false);
            }
            _loc1_++;
         }
         this.mActive = false;
         visible = this.mActive && this.mVisibility;
         this.mMovieClip.visible = visible;
         removeEventListeners();
      }
      
      override public function clear() : void
      {
         super.clear();
         var _loc1_:int = 0;
         while(_loc1_ < this.mItems.length)
         {
            if(this.mItems[_loc1_] is UIContainerRovio)
            {
               (this.mItems[_loc1_] as UIContainerRovio).clear();
            }
            else if(this.mItems[_loc1_] is UIComponentRovio)
            {
               (this.mItems[_loc1_] as UIComponentRovio).clear();
            }
            _loc1_++;
         }
         this.mItems = null;
         if(this.mParentContainer)
         {
            this.mParentContainer.mMovieClip.removeChild(this);
         }
         if(this.mParentView)
         {
            this.mParentView.mMovieClip.removeChild(this);
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mMovieClip = null;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.mVisibility = param1;
         visible = this.mActive && this.mVisibility;
         this.mMovieClip.visible = visible;
         if(this.mVisibility)
         {
            this.addEventListeners();
         }
         else
         {
            this.removeEventListeners();
         }
      }
      
      public function setItemVisibilityByName(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(this.mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is UIContainerRovio)
            {
               (_loc3_ as UIContainerRovio).setVisibility(param2);
            }
            else if(_loc3_ is UIComponentRovio)
            {
               (_loc3_ as UIComponentRovio).setVisibility(param2);
            }
            else
            {
               Log.log("WARNING: UIContainer(" + this.mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : Object
      {
         var _loc3_:Object = null;
         param1 = param1.toUpperCase();
         if(this.mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mItems.length)
         {
            if(this.mItems[_loc2_] is UIContainerRovio)
            {
               if((this.mItems[_loc2_] as UIContainerRovio).mName.toUpperCase() == param1)
               {
                  return this.mItems[_loc2_];
               }
               _loc3_ = (this.mItems[_loc2_] as UIContainerRovio).getItemByName(param1);
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
            else if(this.mItems[_loc2_] is UIComponentRovio)
            {
               if((this.mItems[_loc2_] as UIComponentRovio).mComponentName.toUpperCase() == param1)
               {
                  return this.mItems[_loc2_];
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.mouseEnabled = param1;
         this.mMovieClip.mouseEnabled = param1;
      }
      
      public function getParentView() : UIView
      {
         if(this.mParentView)
         {
            return this.mParentView;
         }
         return this.mParentContainer.getParentView();
      }
   }
}
