package starling.events
{
   import §7q§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §1T§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§1T§ == null)
         {
            this.§1T§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§1T§[param1];
         if(_loc3_ == null)
         {
            this.§1T§[param1] = new <Function>[param2];
         }
         else
         {
            this.§1T§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§1T§)
         {
            listeners = this.§1T§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§1T§[type];
               }
               else
               {
                  this.§1T§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§1T§)
         {
            delete this.§1T§[param1];
         }
         else
         {
            this.§1T§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§1T§ ? this.§1T§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§-!u§(this);
         }
         if(param1.bubbles && !param1.§#!>§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§2!%§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§-!u§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1T§ != null && param1 in this.§1T§;
      }
      
      public function §%"2§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§1T§)
         {
            for(_loc2_ in this.§1T§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
