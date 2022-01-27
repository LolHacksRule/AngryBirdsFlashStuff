package starling.events
{
   import § N§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §=p§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§=p§ == null)
         {
            this.§=p§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§=p§[param1];
         if(_loc3_ == null)
         {
            this.§=p§[param1] = new <Function>[param2];
         }
         else
         {
            this.§=p§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§=p§)
         {
            listeners = this.§=p§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§=p§[type];
               }
               else
               {
                  this.§=p§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§=p§)
         {
            delete this.§=p§[param1];
         }
         else
         {
            this.§=p§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§=p§ ? this.§=p§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§9X§(this);
         }
         if(param1.bubbles && !param1.§ J§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§+Z§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§9X§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=p§ != null && param1 in this.§=p§;
      }
      
      public function §&O§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§=p§)
         {
            for(_loc2_ in this.§=p§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
