package com.rovio.ui.Components.Helpers
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio extends Sprite
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOVER:int = 2;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOUT:int = 3;
       
      
      private var mTargetSprite:Sprite;
      
      public var mActiveListeners:int = 0;
      
      public var mListenerEventNames:Array;
      
      public function UIEventListenerRovio(targetSprite:Sprite)
      {
         super();
         if(targetSprite)
         {
            this.mTargetSprite = targetSprite;
         }
         else
         {
            this.mTargetSprite = this;
         }
         this.mListenerEventNames = new Array();
      }
      
      public function changeMovieClip(newClip:MovieClip) : void
      {
         this.removeEventListeners();
         this.mTargetSprite = newClip;
         this.addEventListeners();
      }
      
      public function setEventListener(eventIndex:int, resultEventName:String = "", addListenerInstant:Boolean = false) : void
      {
         this.mActiveListeners |= 1 << eventIndex;
         this.mListenerEventNames[eventIndex] = resultEventName.toUpperCase();
         if(addListenerInstant)
         {
            this.addEventListeners();
         }
      }
      
      public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         this.removeEventListeners();
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
         }
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_ROLLOVER) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.ROLL_OVER,this.mouseOver);
         }
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_ROLLOUT) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.ROLL_OUT,this.mouseOut);
         }
      }
      
      public function removeEventListeners() : void
      {
         this.mTargetSprite.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.mTargetSprite.removeEventListener(MouseEvent.MOUSE_UP,this.mouseUp);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOver);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOut);
      }
      
      public function mouseDown(e:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.mListenerEventNames[LISTENER_EVENT_MOUSE_DOWN]);
      }
      
      public function mouseUp(e:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.mListenerEventNames[LISTENER_EVENT_MOUSE_UP]);
      }
      
      public function mouseOver(e:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_ROLLOVER,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOVER]);
      }
      
      public function mouseOut(e:MouseEvent) : void
      {
         this.listenerEventOccured(LISTENER_EVENT_MOUSE_ROLLOUT,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOUT]);
      }
      
      public function clear() : void
      {
         this.removeEventListeners();
         this.mTargetSprite = null;
         this.mListenerEventNames = null;
      }
   }
}
