package starling.events
{
   import flash.utils.Dictionary;
   import §use§.DisplayObject;
   
   public class EventDispatcher
   {
       
      
      private var §0"O§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§0"O§ == null)
         {
            this.§0"O§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§0"O§[param1];
         if(_loc3_ == null)
         {
            this.§0"O§[param1] = new <Function>[param2];
         }
         else
         {
            this.§0"O§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§0"O§)
         {
            listeners = this.§0"O§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§0"O§[type];
               }
               else
               {
                  this.§0"O§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§0"O§)
         {
            delete this.§0"O§[param1];
         }
         else
         {
            this.§0"O§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§0"O§ ? this.§0"O§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§[V§(this);
         }
         if(param1.bubbles && !param1.§-6§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§["`§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§[V§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0"O§ != null && param1 in this.§0"O§;
      }
      
      public function §#"N§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§0"O§)
         {
            for(_loc2_ in this.§0"O§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
