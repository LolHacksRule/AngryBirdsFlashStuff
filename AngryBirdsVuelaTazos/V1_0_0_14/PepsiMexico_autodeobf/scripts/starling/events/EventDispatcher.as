package starling.events
{
   import §_-b5§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §_-at§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§_-at§ == null)
         {
            this.§_-at§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§_-at§[param1];
         if(_loc3_ == null)
         {
            this.§_-at§[param1] = new <Function>[param2];
         }
         else
         {
            this.§_-at§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var type:String = param1;
         var listener:Function = param2;
         if(this.§_-at§ == null)
         {
            return;
         }
         var listeners:Vector.<Function> = this.§_-at§[type];
         if(listeners)
         {
            listeners = listeners.filter(function(param1:Function, ... rest):Boolean
            {
               return param1 != listener;
            });
            if(listeners.length == 0)
            {
               delete this.§_-at§[type];
            }
            else
            {
               this.§_-at§[type] = listeners;
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(this.§_-at§ == null)
         {
            return;
         }
         if(param1)
         {
            delete this.§_-at§[param1];
         }
         else
         {
            this.§_-at§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc5_:Function = null;
         var _loc6_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§_-at§ ? this.§_-at§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§_-TI§(this);
         }
         var _loc4_:Boolean = false;
         if(_loc2_ != null && _loc2_.length != 0)
         {
            param1.§_-k2§(this);
            for each(_loc5_ in _loc2_)
            {
               _loc5_(param1);
               if(param1.§_-58§)
               {
                  _loc4_ = true;
                  break;
               }
            }
         }
         if(!_loc4_ && param1.bubbles && !param1.§_-GR§ && this is DisplayObject)
         {
            if((_loc6_ = this as DisplayObject).parent != null)
            {
               param1.§_-k2§(null);
               _loc6_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§_-TI§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§_-at§ != null && this.§_-at§[param1] != null;
      }
      
      public function §_-zi§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§_-at§)
         {
            for(_loc2_ in this.§_-at§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
