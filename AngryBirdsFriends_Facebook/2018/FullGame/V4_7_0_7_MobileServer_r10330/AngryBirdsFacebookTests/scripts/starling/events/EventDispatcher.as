package starling.events
{
   import flash.utils.Dictionary;
   import starling.§core:starling_internal§.*;
   import starling.display.DisplayObject;
   
   public class EventDispatcher
   {
      
      private static var sBubbleChains:Array = [];
       
      
      private var mEventListeners:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(type:String, listener:Function) : void
      {
         if(this.mEventListeners == null)
         {
            this.mEventListeners = new Dictionary();
         }
         var listeners:Vector.<Function> = this.mEventListeners[type] as Vector.<Function>;
         if(listeners == null)
         {
            this.mEventListeners[type] = new <Function>[listener];
         }
         else if(listeners.indexOf(listener) == -1)
         {
            listeners.push(listener);
         }
      }
      
      public function removeEventListener(type:String, listener:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var numListeners:int = 0;
         var remainingListeners:Vector.<Function> = null;
         var i:int = 0;
         if(this.mEventListeners)
         {
            listeners = this.mEventListeners[type] as Vector.<Function>;
            if(listeners)
            {
               numListeners = listeners.length;
               remainingListeners = new Vector.<Function>(0);
               for(i = 0; i < numListeners; i++)
               {
                  if(listeners[i] != listener)
                  {
                     remainingListeners.push(listeners[i]);
                  }
               }
               this.mEventListeners[type] = remainingListeners;
            }
         }
      }
      
      public function removeEventListeners(type:String = null) : void
      {
         if(type && this.mEventListeners)
         {
            delete this.mEventListeners[type];
         }
         else
         {
            this.mEventListeners = null;
         }
      }
      
      public function dispatchEvent(event:Event) : void
      {
         var bubbles:Boolean = event.bubbles;
         if(!bubbles && (this.mEventListeners == null || !(event.type in this.mEventListeners)))
         {
            return;
         }
         var previousTarget:EventDispatcher = event.target;
         event.setTarget(this);
         if(bubbles && this is DisplayObject)
         {
            this.bubbleEvent(event);
         }
         else
         {
            this.invokeEvent(event);
         }
         if(previousTarget)
         {
            event.setTarget(previousTarget);
         }
      }
      
      function invokeEvent(event:Event) : Boolean
      {
         var i:int = 0;
         var listener:Function = null;
         var numArgs:int = 0;
         var listeners:Vector.<Function> = !!this.mEventListeners ? this.mEventListeners[event.type] as Vector.<Function> : null;
         var numListeners:int = listeners == null ? 0 : int(listeners.length);
         if(numListeners)
         {
            event.setCurrentTarget(this);
            for(i = 0; i < numListeners; i++)
            {
               listener = listeners[i] as Function;
               numArgs = listener.length;
               if(numArgs == 0)
               {
                  listener();
               }
               else if(numArgs == 1)
               {
                  listener(event);
               }
               else
               {
                  listener(event,event.data);
               }
               if(event.stopsImmediatePropagation)
               {
                  return true;
               }
            }
            return event.stopsPropagation;
         }
         return false;
      }
      
      function bubbleEvent(event:Event) : void
      {
         var chain:Vector.<EventDispatcher> = null;
         var stopPropagation:Boolean = false;
         var element:DisplayObject = this as DisplayObject;
         var length:int = 1;
         if(sBubbleChains.length > 0)
         {
            chain = sBubbleChains.pop();
            chain[0] = element;
         }
         else
         {
            chain = new <EventDispatcher>[element];
         }
         while((element = element.parent) != null)
         {
            chain[int(length++)] = element;
         }
         for(var i:int = 0; i < length; i++)
         {
            stopPropagation = chain[i].invokeEvent(event);
            if(stopPropagation)
            {
               break;
            }
         }
         chain.length = 0;
         sBubbleChains.push(chain);
      }
      
      public function dispatchEventWith(type:String, bubbles:Boolean = false, data:Object = null) : void
      {
         var event:Event = null;
         if(bubbles || this.hasEventListener(type))
         {
            event = Event.fromPool(type,bubbles,data);
            this.dispatchEvent(event);
            Event.toPool(event);
         }
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         var listeners:Vector.<Function> = !!this.mEventListeners ? this.mEventListeners[type] as Vector.<Function> : null;
         return !!listeners ? listeners.length != 0 : false;
      }
      
      public function getListenedEventTypes() : Array
      {
         var type:* = null;
         var types:Array = [];
         if(this.mEventListeners)
         {
            for(type in this.mEventListeners)
            {
               types.push(type);
            }
         }
         return types;
      }
   }
}
