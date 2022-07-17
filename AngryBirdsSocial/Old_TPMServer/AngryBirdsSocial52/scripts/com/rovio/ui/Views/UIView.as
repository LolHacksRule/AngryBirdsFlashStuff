package com.rovio.ui.Views
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIView extends Sprite
   {
       
      
      private var mContainer:UIContainerRovio;
      
      public var mMovieClip:MovieClip;
      
      public var mStateBase:StateBase;
      
      public function UIView(param1:StateBase)
      {
         super();
         this.mStateBase = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.mContainer = new UIContainerRovio(param1,null,this);
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
         this.mContainer.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function deactivateView() : void
      {
         this.mContainer.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         this.mStateBase.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         this.mContainer.setItemVisibilityByName(param1,param2);
      }
      
      public function getItemByName(param1:String) : Object
      {
         return this.mContainer.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is UITextFieldRovio)
         {
            (_loc3_ as UITextFieldRovio).setText(param1);
         }
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
      
      public function clearPopups() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.mContainer.mItems)
         {
            if(_loc1_ is UIPopUpRovio)
            {
               (_loc1_ as UIPopUpRovio).close();
            }
         }
      }
      
      public function hasVisiblePopup() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.mContainer.mItems)
         {
            if(_loc1_ is UIPopUpRovio && (_loc1_ as UIPopUpRovio).mVisibility)
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
         _loc4_.drawRect(0,0,this.width,this.height);
         _loc4_.endFill();
         return _loc3_;
      }
   }
}
