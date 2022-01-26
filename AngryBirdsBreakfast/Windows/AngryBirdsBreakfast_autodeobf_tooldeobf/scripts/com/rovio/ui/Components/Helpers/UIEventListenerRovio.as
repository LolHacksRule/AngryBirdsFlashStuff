package com.rovio.ui.Components.Helpers
{
   import com.rovio.events.UIInteractionEvent;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class UIEventListenerRovio implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOVER:int = 2;
      
      public static const LISTENER_EVENT_MOUSE_ROLLOUT:int = 3;
       
      
      private var mTargetSprite:Sprite;
      
      public var mActiveListeners:int = 0;
      
      public var mListenerEventNames:Array;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mEventLists:Dictionary;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         super();
         if(param1)
         {
            this.mTargetSprite = param1;
         }
         this.mListenerEventNames = new Array();
         this.mEventDispatcher = new EventDispatcher();
         this.mEventLists = new Dictionary();
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         this.removeUIEventListeners();
         this.mTargetSprite = param1;
         this.addUIEventListeners();
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         if(this.mTargetSprite && this.mTargetSprite is MovieClip)
         {
            if(param2)
            {
               (this.mTargetSprite as MovieClip).gotoAndPlay(param1);
            }
            else
            {
               (this.mTargetSprite as MovieClip).gotoAndStop(param1);
            }
         }
      }
      
      public function setUIEventListener(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         this.mActiveListeners |= 1 << param1;
         this.mListenerEventNames[param1] = param2.toUpperCase();
         if(param3)
         {
            this.addUIEventListeners();
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         var _loc3_:UIInteractionEvent = new UIInteractionEvent(UIInteractionEvent.UI_INTERACTION,param1,param2,this,true,true);
         this.dispatchEvent(_loc3_);
         return _loc3_;
      }
      
      public function addUIEventListeners() : void
      {
         this.removeUIEventListeners();
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_DOWN) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
         }
         if((this.mActiveListeners & 1 << LISTENER_EVENT_MOUSE_UP) != 0)
         {
            this.mTargetSprite.addEventListener(MouseEvent.CLICK,this.mouseUp);
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
         this.mTargetSprite.removeEventListener(MouseEvent.CLICK,this.mouseUp);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOver);
         this.mTargetSprite.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOut);
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.mListenerEventNames[LISTENER_EVENT_MOUSE_DOWN]);
         param1.stopPropagation();
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.mListenerEventNames[LISTENER_EVENT_MOUSE_UP]);
         param1.stopPropagation();
      }
      
      public function mouseOver(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_ROLLOVER,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOVER]);
      }
      
      public function mouseOut(param1:MouseEvent) : void
      {
         this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_ROLLOUT,this.mListenerEventNames[LISTENER_EVENT_MOUSE_ROLLOUT]);
      }
      
      public function clear() : void
      {
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:int = 0;
         this.removeUIEventListeners();
         this.mTargetSprite = null;
         this.mListenerEventNames = null;
         for(_loc1_ in this.mEventLists)
         {
            _loc2_ = this.mEventLists[_loc1_];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.mEventDispatcher.removeEventListener(_loc1_,_loc2_[_loc3_],false);
               _loc3_++;
            }
            delete this.mEventLists[_loc1_];
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.mTargetSprite;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.mEventDispatcher.addEventListener(param1,param2,false,param4,param5);
         if(!this.mEventLists[param1])
         {
            this.mEventLists[param1] = new Vector.<Function>();
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.mEventLists[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Vector.<Function> = null;
         var _loc5_:int = 0;
         this.mEventDispatcher.removeEventListener(param1,param2,false);
         if(this.mEventLists[param1])
         {
            if((_loc5_ = (_loc4_ = this.mEventLists[param1]).indexOf(param2)) >= 0)
            {
               _loc4_.splice(_loc5_,1);
            }
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.mEventDispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.mEventDispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.mEventDispatcher.willTrigger(param1);
      }
   }
}
