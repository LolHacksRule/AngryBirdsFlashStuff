package com.rovio.ui.Components.Helpers
{
   import com.rovio.events.UIInteractionEvent;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class UIEventListenerRovio implements IEventDispatcher
   {
      
      public static var sUseTouchEvents:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOVER:int = 2;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOUT:int = 3;
       
      
      private var mTargetSprite:Sprite;
      
      public var mActiveListeners:int = 0;
      
      public var mListenerEventNames:Array;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mEventLists:Dictionary;
      
      public function UIEventListenerRovio(targetSprite:Sprite)
      {
         super();
         if(targetSprite)
         {
            this.mTargetSprite = targetSprite;
         }
         this.mListenerEventNames = new Array();
         this.mEventDispatcher = new EventDispatcher();
         this.mEventLists = new Dictionary();
      }
      
      public function changeMovieClip(newClip:MovieClip) : void
      {
         this.removeUIEventListeners();
         this.mTargetSprite = newClip;
         this.addUIEventListeners();
      }
      
      public function goToFrame(frameIndex:int, play:Boolean) : void
      {
         if(this.mTargetSprite && this.mTargetSprite is MovieClip)
         {
            if(play)
            {
               (this.mTargetSprite as MovieClip).gotoAndPlay(frameIndex);
            }
            else
            {
               (this.mTargetSprite as MovieClip).gotoAndStop(frameIndex);
            }
         }
      }
      
      public function setUIEventListener(eventIndex:int, resultEventName:String = "", addListenerInstant:Boolean = false) : void
      {
         this.mActiveListeners |= 1 << eventIndex;
         this.mListenerEventNames[eventIndex] = resultEventName.toUpperCase();
         if(addListenerInstant)
         {
            this.addUIEventListeners();
         }
      }
      
      public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         var event:UIInteractionEvent = new UIInteractionEvent(UIInteractionEvent.UI_INTERACTION,eventIndex,eventName,this,true,true);
         this.dispatchEvent(event);
         return event;
      }
      
      public function addUIEventListeners() : void
      {
         this.removeUIEventListeners();
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            if(sUseTouchEvents && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.mTargetSprite.addEventListener(TouchEvent.TOUCH_BEGIN,this.mouseDown);
            }
            else
            {
               this.mTargetSprite.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
            }
         }
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            if(sUseTouchEvents && !Mouse.supportsCursor && !Mouse.cursor)
            {
               this.mTargetSprite.addEventListener(TouchEvent.TOUCH_END,this.mouseUp);
            }
            else
            {
               this.mTargetSprite.addEventListener(MouseEvent.CLICK,this.mouseUp);
            }
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
      
      public function removeUIEventListeners() : void
      {
         this.mTargetSprite.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         this.mTargetSprite.removeEventListener(TouchEvent.TOUCH_BEGIN,this.mouseDown);
         this.mTargetSprite.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.mTargetSprite.removeEventListener(TouchEvent.TOUCH_END,this.mouseUp);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOver);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOut);
      }
      
      public function mouseDown(e:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.mListenerEventNames[LISTENER_EVENT_MOUSE_DOWN]);
         e.stopPropagation();
      }
      
      public function mouseUp(e:Event) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.mListenerEventNames[LISTENER_EVENT_MOUSE_UP]);
         e.stopPropagation();
      }
      
      public function mouseOver(e:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_ROLLOVER,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOVER]);
      }
      
      public function mouseOut(e:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_ROLLOUT,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOUT]);
      }
      
      public function clear() : void
      {
         var type:* = null;
         var eventList:Vector.<Function> = null;
         var i:int = 0;
         this.removeUIEventListeners();
         this.mTargetSprite = null;
         this.mListenerEventNames = null;
         for(type in this.mEventLists)
         {
            eventList = this.mEventLists[type];
            for(i = 0; i < eventList.length; i++)
            {
               this.mEventDispatcher.removeEventListener(type,eventList[i],false);
            }
            delete this.mEventLists[type];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.mTargetSprite;
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.mEventDispatcher.addEventListener(type,listener,false,priority,useWeakReference);
         if(!this.mEventLists[type])
         {
            this.mEventLists[type] = new Vector.<Function>();
         }
         var eventList:Vector.<Function> = this.mEventLists[type];
         eventList.push(listener);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         var eventList:Vector.<Function> = null;
         var index:int = 0;
         this.mEventDispatcher.removeEventListener(type,listener,false);
         if(this.mEventLists[type])
         {
            eventList = this.mEventLists[type];
            index = eventList.indexOf(listener);
            if(index >= 0)
            {
               eventList.splice(index,1);
            }
         }
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this.mEventDispatcher.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.mEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.mEventDispatcher.willTrigger(type);
      }
   }
}
