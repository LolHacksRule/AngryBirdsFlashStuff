package starling.events
{
   import §7!8§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §9!U§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§9!U§ == null)
         {
            this.§9!U§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§9!U§[param1];
         if(_loc3_ == null)
         {
            this.§9!U§[param1] = new <Function>[param2];
         }
         else
         {
            this.§9!U§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§9!U§)
         {
            listeners = this.§9!U§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§9!U§[type];
               }
               else
               {
                  this.§9!U§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§9!U§)
         {
            delete this.§9!U§[param1];
         }
         else
         {
            this.§9!U§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§9!U§ ? this.§9!U§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§%i§(this);
         }
         if(param1.bubbles && !param1.§?Z§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§'!`§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§%i§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9!U§ != null && param1 in this.§9!U§;
      }
      
      public function §,!O§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§9!U§)
         {
            for(_loc2_ in this.§9!U§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
