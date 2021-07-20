package starling.events
{
   import §6!;§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §]w§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§]w§ == null)
         {
            this.§]w§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§]w§[param1];
         if(_loc3_ == null)
         {
            this.§]w§[param1] = new <Function>[param2];
         }
         else
         {
            this.§]w§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§]w§)
         {
            listeners = this.§]w§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§]w§[type];
               }
               else
               {
                  this.§]w§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§]w§)
         {
            delete this.§]w§[param1];
         }
         else
         {
            this.§]w§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§]w§ ? this.§]w§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§^!Y§(this);
         }
         if(param1.bubbles && !param1.§!!Y§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§"#§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§^!Y§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]w§ != null && param1 in this.§]w§;
      }
      
      public function §6!c§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§]w§)
         {
            for(_loc2_ in this.§]w§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
