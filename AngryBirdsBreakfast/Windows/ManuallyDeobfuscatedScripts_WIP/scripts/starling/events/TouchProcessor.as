package starling.events
{
   import starling.display.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const MULTITAP_TIME:Number = 0.3;
      
      private static const MULTITAP_DISTANCE:Number = 25;
      
      private static var sProcessedTouchIDs:Vector.<int> = new Vector.<int>(0);
      
      private static var sHoveringTouchData:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var mStage:Stage;
      
      private var mElapsedTime:Number;
      
      private var mOffsetTime:Number;
      
      private var mTouchMarker:TouchMarker;
      
      private var prevBody:Vector.<Touch>;
      
      private var mQueue:Vector.<Array>;
      
      private var mLastTaps:Vector.<Touch>;
      
      private var mShiftDown:Boolean = false;
      
      private var mCtrlDown:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.mOffsetTime = 0;
         this.mElapsedTime = 0;
         this.prevBody = new Vector.<Touch>(0);
         this.mQueue = new Vector.<Array>(0);
         this.mLastTaps = new Vector.<Touch>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         if(this.mTouchMarker)
         {
            this.mTouchMarker.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Touch = null;
         var _loc5_:Touch = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.mElapsedTime += param1;
         this.mOffsetTime = 0;
         if(this.mLastTaps.length > 0)
         {
            _loc2_ = this.mLastTaps.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.mElapsedTime - this.mLastTaps[_loc2_].timestamp > MULTITAP_TIME)
               {
                  this.mLastTaps.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.mQueue.length > 0)
         {
            sProcessedTouchIDs.length = sHoveringTouchData.length = 0;
            for each(_loc5_ in this.prevBody)
            {
               if(_loc5_.phase == TouchPhase.UIContainerRovio || _loc5_.phase == TouchPhase.MOVED)
               {
                  _loc5_.setPhase(TouchPhase.STATIONARY);
               }
            }
            while(this.mQueue.length > 0 && sProcessedTouchIDs.indexOf(this.mQueue[this.mQueue.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.mQueue.pop())[0] as int;
               if((_loc4_ = this.getCurrentTouch(_loc3_)) && _loc4_.phase == TouchPhase.HOVER && _loc4_.target)
               {
                  sHoveringTouchData.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.processTouch.apply(this,_loc7_);
               sProcessedTouchIDs.push(_loc3_);
            }
            for each(_loc6_ in sHoveringTouchData)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.TOUCH,this.prevBody,this.mShiftDown,this.mCtrlDown));
               }
            }
            for each(_loc3_ in sProcessedTouchIDs)
            {
               if((_loc4_ = this.getCurrentTouch(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.TOUCH,this.prevBody,this.mShiftDown,this.mCtrlDown));
               }
            }
            _loc2_ = this.prevBody.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.prevBody[_loc2_].phase == TouchPhase.ENDED)
               {
                  this.prevBody.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.mOffsetTime += 0.00001;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.mQueue.unshift(arguments);
         if(this.mCtrlDown && this.simulateMultitouch && param1 == 0)
         {
            this.mTouchMarker.moveMarker(param3,param4,this.mShiftDown);
            this.mQueue.unshift([1,param2,this.mTouchMarker.mockX,this.mTouchMarker.mockY]);
         }
      }
      
      private function processTouch(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:Touch;
         if((_loc6_ = this.getCurrentTouch(param1)) == null)
         {
            _loc6_ = new Touch(param1,param3,param4,param2,null);
            this.addCurrentTouch(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.setPhase(param2);
         _loc6_.setTimestamp(this.mElapsedTime + this.mOffsetTime);
         if(param2 == TouchPhase.HOVER || param2 == TouchPhase.UIContainerRovio)
         {
            _loc6_.setTarget(this.mStage.hitTest(_loc5_,true));
         }
         if(param2 == TouchPhase.UIContainerRovio)
         {
            this.processTap(_loc6_);
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Touch = null;
         var _loc4_:Touch = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.mCtrlDown;
            this.mCtrlDown = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.simulateMultitouch && _loc2_ != this.mCtrlDown)
            {
               this.mTouchMarker.visible = this.mCtrlDown;
               this.mTouchMarker.moveCenter(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.getCurrentTouch(0);
               _loc4_ = this.getCurrentTouch(1);
               if(_loc3_)
               {
                  this.mTouchMarker.moveMarker(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != TouchPhase.ENDED)
               {
                  this.mQueue.unshift([1,TouchPhase.ENDED,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.mCtrlDown && _loc3_)
               {
                  if(_loc3_.phase == TouchPhase.UIContainerRovio || _loc3_.phase == TouchPhase.MOVED)
                  {
                     this.mQueue.unshift([1,TouchPhase.UIContainerRovio,this.mTouchMarker.mockX,this.mTouchMarker.mockY]);
                  }
                  else
                  {
                     this.mQueue.unshift([1,TouchPhase.HOVER,this.mTouchMarker.mockX,this.mTouchMarker.mockY]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.mShiftDown = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function processTap(param1:Touch) : void
      {
         var _loc4_:Touch = null;
         var _loc5_:Number = NaN;
         var _loc2_:Touch = null;
         var _loc3_:Number = MULTITAP_DISTANCE * MULTITAP_DISTANCE;
         for each(_loc4_ in this.mLastTaps)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.setTapCount(_loc2_.tapCount + 1);
            this.mLastTaps.splice(this.mLastTaps.indexOf(_loc2_),1);
         }
         else
         {
            param1.setTapCount(1);
         }
         this.mLastTaps.push(param1.clone());
      }
      
      private function addCurrentTouch(param1:Touch) : void
      {
         var _loc2_:int = this.prevBody.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.prevBody[_loc2_].id == param1.id)
            {
               this.prevBody.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.prevBody.push(param1);
      }
      
      private function getCurrentTouch(param1:int) : Touch
      {
         var _loc2_:Touch = null;
         for each(_loc2_ in this.prevBody)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.mTouchMarker != null;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         if(this.simulateMultitouch == param1)
         {
            return;
         }
      }
   }
}
