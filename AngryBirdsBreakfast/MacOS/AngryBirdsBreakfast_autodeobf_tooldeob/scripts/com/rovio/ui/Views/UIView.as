package com.rovio.ui.Views
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.states.StateBase;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIView extends Sprite
   {
       
      
      protected var mContainer:UIContainerRovio;
      
      protected var mMovieClip:MovieClip;
      
      protected var mStateBase:StateBase;
      
      public function UIView(param1:StateBase)
      {
         super();
         this.mStateBase = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.mContainer = new UIContainerRovio(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.mContainer.clear();
         this.mContainer = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.mContainer)
         {
            this.mContainer.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function changeState(param1:StateBase) : void
      {
         this.deactivateView();
         this.mStateBase = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.mContainer)
         {
            this.mContainer.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         this.mStateBase.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.mContainer)
         {
            this.mContainer.setItemVisibilityByName(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         if(this.mContainer)
         {
            return this.mContainer.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc3_)
         {
            throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
         }
         if(!(_loc3_ is UITextFieldRovio))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as UITextFieldRovio).setText(param1);
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is UITextFieldRovio)
         {
            return (_loc2_ as UITextFieldRovio).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is UIComponentInteractiveRovio)
         {
            (_loc3_ as UIComponentInteractiveRovio).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function setRepeaterVisibleTab(param1:String, param2:String) : void
      {
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc3_)
         {
            _loc3_.setVisibleTab(param2);
         }
      }
      
      public function getRepeaterVisibleTab(param1:String) : String
      {
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc2_)
         {
            return _loc2_.mVisibleTabName;
         }
         return "";
      }
      
      public function clearPopups() : void
      {
         var _loc1_:UIPopUpRovio = null;
         for each(_loc1_ in this.mContainer.mItems)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function hasVisiblePopup() : Boolean
      {
         var _loc1_:UIPopUpRovio = null;
         for each(_loc1_ in this.mContainer.mItems)
         {
            if(_loc1_ && _loc1_.mVisibility)
            {
               return true;
            }
         }
         return false;
      }
      
      public function createOverlaySprite(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.mStateBase.getAppWidth(),this.mStateBase.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.mContainer)
         {
            this.mContainer.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.mContainer)
         {
            this.mContainer.viewHeight = param1;
         }
      }
      
      public function get stateBase() : StateBase
      {
         return this.mStateBase;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.mMovieClip;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.mContainer;
      }
   }
}
