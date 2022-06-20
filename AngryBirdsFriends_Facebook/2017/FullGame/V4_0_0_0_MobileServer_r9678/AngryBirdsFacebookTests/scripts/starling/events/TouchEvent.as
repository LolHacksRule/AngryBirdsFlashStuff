package starling.events
{
   import starling.§core:starling_internal§.*;
   import starling.display.DisplayObject;
   
   public class TouchEvent extends Event
   {
      
      public static const TOUCH:String = "touch";
      
      private static var sTouches:Vector.<Touch> = new Vector.<Touch>(0);
       
      
      private var mShiftKey:Boolean;
      
      private var mCtrlKey:Boolean;
      
      private var mTimestamp:Number;
      
      private var mVisitedObjects:Vector.<EventDispatcher>;
      
      public function TouchEvent(type:String, touches:Vector.<Touch>, shiftKey:Boolean = false, ctrlKey:Boolean = false, bubbles:Boolean = true)
      {
         super(type,bubbles,touches);
         this.mShiftKey = shiftKey;
         this.mCtrlKey = ctrlKey;
         this.mTimestamp = -1;
         this.mVisitedObjects = new Vector.<EventDispatcher>(0);
         var numTouches:int = touches.length;
         for(var i:int = 0; i < numTouches; i++)
         {
            if(touches[i].timestamp > this.mTimestamp)
            {
               this.mTimestamp = touches[i].timestamp;
            }
         }
      }
      
      public function getTouches(target:DisplayObject, phase:String = null, result:Vector.<Touch> = null) : Vector.<Touch>
      {
         var touch:Touch = null;
         var correctTarget:Boolean = false;
         var correctPhase:Boolean = false;
         if(result == null)
         {
            result = new Vector.<Touch>(0);
         }
         var allTouches:Vector.<Touch> = data as Vector.<Touch>;
         var numTouches:int = allTouches.length;
         for(var i:int = 0; i < numTouches; i++)
         {
            touch = allTouches[i];
            correctTarget = touch.isTouching(target);
            correctPhase = phase == null || phase == touch.phase;
            if(correctTarget && correctPhase)
            {
               result.push(touch);
            }
         }
         return result;
      }
      
      public function getTouch(target:DisplayObject, phase:String = null) : Touch
      {
         var touch:Touch = null;
         this.getTouches(target,phase,sTouches);
         if(sTouches.length)
         {
            touch = sTouches[0];
            sTouches.length = 0;
            return touch;
         }
         return null;
      }
      
      public function interactsWith(target:DisplayObject) : Boolean
      {
         var touches:Vector.<Touch> = null;
         var i:int = 0;
         if(this.getTouch(target) == null)
         {
            return false;
         }
         touches = this.getTouches(target);
         for(i = touches.length - 1; i >= 0; i--)
         {
            if(touches[i].phase != TouchPhase.ENDED)
            {
               return true;
            }
         }
         return false;
      }
      
      function dispatch(chain:Vector.<EventDispatcher>) : void
      {
         var chainLength:int = 0;
         var previousTarget:EventDispatcher = null;
         var i:int = 0;
         var chainElement:EventDispatcher = null;
         var stopPropagation:Boolean = false;
         if(chain && chain.length)
         {
            chainLength = !!bubbles ? int(chain.length) : 1;
            previousTarget = target;
            setTarget(chain[0] as EventDispatcher);
            for(i = 0; i < chainLength; i++)
            {
               chainElement = chain[i] as EventDispatcher;
               if(this.mVisitedObjects.indexOf(chainElement) == -1)
               {
                  stopPropagation = chainElement.invokeEvent(this);
                  this.mVisitedObjects.push(chainElement);
                  if(stopPropagation)
                  {
                     break;
                  }
               }
            }
            setTarget(previousTarget);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.mTimestamp;
      }
      
      public function get touches() : Vector.<Touch>
      {
         return (data as Vector.<Touch>).concat() as Vector.<Touch>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.mShiftKey;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.mCtrlKey;
      }
   }
}
