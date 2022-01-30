package starling.events
{
   import § !=§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §?Y§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§?Y§ == null)
         {
            this.§?Y§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§?Y§[param1];
         if(_loc3_ == null)
         {
            this.§?Y§[param1] = new <Function>[param2];
         }
         else
         {
            this.§?Y§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§?Y§)
         {
            listeners = this.§?Y§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§?Y§[type];
               }
               else
               {
                  this.§?Y§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§?Y§)
         {
            delete this.§?Y§[param1];
         }
         else
         {
            this.§?Y§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§?Y§ ? this.§?Y§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§#i§(this);
         }
         if(param1.bubbles && !param1.§=T§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§!5§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§#i§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?Y§ != null && param1 in this.§?Y§;
      }
      
      public function §2!;§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§?Y§)
         {
            for(_loc2_ in this.§?Y§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
