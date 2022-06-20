package com.rovio.ui.Views
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIComponentFactory;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIPopUpRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIView extends Sprite
   {
       
      
      protected var mContainer:UIContainerRovio;
      
      protected var mMovieClip:MovieClip;
      
      protected var mStateBase:StateBase;
      
      public function UIView(newStateBase:StateBase)
      {
         super();
         this.mStateBase = newStateBase;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(data:XML, clip:MovieClip = null) : void
      {
         this.mContainer = UIComponentFactory.createContainer(data,null,this,clip);
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
      
      public function changeState(newState:StateBase) : void
      {
         this.deactivateView();
         this.mStateBase = newState;
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
      
      public function listenerUIEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         this.mStateBase.uiInteractionHandler(eventIndex,eventName,component);
      }
      
      public function setItemVisibility(itemName:String, visibility:Boolean) : void
      {
         if(this.mContainer)
         {
            this.mContainer.setItemVisibilityByName(itemName,visibility);
         }
      }
      
      public function getItemByName(itemName:String) : UIComponentRovio
      {
         if(this.mContainer)
         {
            return this.mContainer.getItemByName(itemName);
         }
         return null;
      }
      
      public function setText(newText:String, itemName:String) : void
      {
         var obj:Object = this.getItemByName(itemName);
         if(!obj)
         {
            throw new Error("Could not find textfield \'" + itemName + "\' in view \'" + name + "\'.");
         }
         if(!(obj is UITextFieldRovio))
         {
            throw new Error("\'" + itemName + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (obj as UITextFieldRovio).setText(newText);
      }
      
      public function getText(itemName:String) : String
      {
         var obj:Object = this.getItemByName(itemName);
         if(obj is UITextFieldRovio)
         {
            return (obj as UITextFieldRovio).getText();
         }
         return "";
      }
      
      public function setComponentState(newState:String, itemName:String) : void
      {
         var obj:Object = this.getItemByName(itemName);
         if(obj is UIComponentInteractiveRovio)
         {
            (obj as UIComponentInteractiveRovio).setComponentState(newState);
         }
      }
      
      public function getRepeaterDataXML(repeaterName:String) : Array
      {
         return null;
      }
      
      public function setRepeaterVisibleTab(repeaterName:String, tabName:String) : void
      {
         var repeaterTabs:UIRepeaterRovio = this.getItemByName(repeaterName) as UIRepeaterRovio;
         if(repeaterTabs)
         {
            repeaterTabs.setVisibleTab(tabName);
         }
      }
      
      public function getRepeaterVisibleTab(repeaterName:String) : String
      {
         var repeaterTabs:UIRepeaterRovio = this.getItemByName(repeaterName) as UIRepeaterRovio;
         if(repeaterTabs)
         {
            return repeaterTabs.mVisibleTabName;
         }
         return "";
      }
      
      public function clearPopups() : void
      {
         var obj:UIPopUpRovio = null;
         for each(obj in this.mContainer.mItems)
         {
            if(!obj)
            {
            }
         }
      }
      
      public function hasVisiblePopup() : Boolean
      {
         var obj:UIPopUpRovio = null;
         for each(obj in this.mContainer.mItems)
         {
            if(obj && obj.mVisibility)
            {
               return true;
            }
         }
         return false;
      }
      
      public function createOverlaySprite(color:int = 16777215, alpha:Number = 0.5) : Sprite
      {
         var tmp:Sprite = new Sprite();
         var g:Graphics = tmp.graphics;
         g.beginFill(color,alpha);
         g.drawRect(0,0,this.mStateBase.getAppWidth(),this.mStateBase.getAppHeight());
         g.endFill();
         return tmp;
      }
      
      public function set viewWidth(width:Number) : void
      {
         if(this.mContainer)
         {
            this.mContainer.viewWidth = width;
         }
      }
      
      public function set viewHeight(height:Number) : void
      {
         if(this.mContainer)
         {
            this.mContainer.viewHeight = height;
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
