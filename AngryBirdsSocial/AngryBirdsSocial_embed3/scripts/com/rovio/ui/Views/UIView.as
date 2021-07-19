package com.rovio.ui.Views
{
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
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
      
      public function UIView(newStateBase:StateBase)
      {
         super();
         this.mStateBase = newStateBase;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(data:XML) : void
      {
         this.mContainer = new UIContainerRovio(data,null,this);
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
      
      public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         this.mStateBase.uiInteractionHandler(eventIndex,eventName,component);
      }
      
      public function setItemVisibility(itemName:String, visibility:Boolean) : void
      {
         this.mContainer.setItemVisibilityByName(itemName,visibility);
      }
      
      public function getItemByName(itemName:String) : UIComponentRovio
      {
         return this.mContainer.getItemByName(itemName);
      }
      
      public function setText(newText:String, itemName:String) : void
      {
         var obj:Object = this.getItemByName(itemName);
         if(obj is UITextFieldRovio)
         {
            (obj as UITextFieldRovio).setText(newText);
         }
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
      
      public function clearPopups() : void
      {
         var obj:Object = null;
         for each(obj in this.mContainer.mItems)
         {
            if(obj is UIPopUpRovio)
            {
               (obj as UIPopUpRovio).close();
            }
         }
      }
      
      public function hasVisiblePopup() : Boolean
      {
         var obj:Object = null;
         for each(obj in this.mContainer.mItems)
         {
            if(obj is UIPopUpRovio && (obj as UIPopUpRovio).mVisibility)
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
         g.drawRect(0,0,800,800);
         g.endFill();
         return tmp;
      }
   }
}
