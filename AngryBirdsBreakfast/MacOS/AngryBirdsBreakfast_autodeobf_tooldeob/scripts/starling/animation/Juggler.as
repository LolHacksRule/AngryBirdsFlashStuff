package starling.animation
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class Juggler implements IAnimatable
   {
       
      
      private var mObjects:Vector.<IAnimatable>;
      
      private var mElapsedTime:Number;
      
      private var mIsPaused:Boolean = false;
      
      private var mSpeed:Number = 1.0;
      
      public function Juggler()
      {
         super();
         this.mElapsedTime = 0;
         this.mObjects = new Vector.<IAnimatable>(0);
      }
      
      public function set speed(param1:Number) : void
      {
         this.mSpeed = param1;
      }
      
      public function add(param1:IAnimatable) : void
      {
         var _loc2_:EventDispatcher = null;
         if(param1 != null && this.mObjects.indexOf(param1) == -1)
         {
            this.mObjects.push(param1);
            _loc2_ = param1 as EventDispatcher;
            if(_loc2_)
            {
               _loc2_.addEventListener(Event.REMOVE_FROM_JUGGLER,this.onRemove);
            }
         }
      }
      
      public function set isPaused(param1:Boolean) : void
      {
         this.mIsPaused = param1;
      }
      
      public function remove(param1:IAnimatable) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:int = this.mObjects.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.mObjects.splice(_loc2_,1);
            _loc3_ = param1 as EventDispatcher;
            if(_loc3_)
            {
               _loc3_.removeEventListener(Event.REMOVE_FROM_JUGGLER,this.onRemove);
            }
         }
      }
      
      public function removeTweens(param1:Object) : void
      {
         var _loc4_:Tween = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = this.mObjects.length;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.mObjects[_loc3_] as Tween) && _loc4_.target == param1)
            {
               this.mObjects.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function purge() : void
      {
         this.mObjects.length = 0;
      }
      
      public function delayCall(param1:Function, param2:Number, ... rest) : DelayedCall
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:DelayedCall = new DelayedCall(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function advanceTime(param1:Number) : void
      {
         if(this.mIsPaused)
         {
            return;
         }
         param1 *= this.mSpeed;
         this.mElapsedTime += param1;
         if(this.mObjects.length == 0)
         {
            return;
         }
         var _loc2_:int = this.mObjects.length;
         var _loc3_:Vector.<IAnimatable> = this.mObjects.concat();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_[_loc4_].advanceTime(param1);
            _loc4_++;
         }
      }
      
      private function onRemove(param1:Event) : void
      {
         this.remove(param1.target as IAnimatable);
      }
      
      public function get elapsedTime() : Number
      {
         return this.mElapsedTime;
      }
   }
}
