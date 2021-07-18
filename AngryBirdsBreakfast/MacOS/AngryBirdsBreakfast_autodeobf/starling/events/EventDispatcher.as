package starling.events
{
   import §6![§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §4"&§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§4"&§ == null)
         {
            this.§4"&§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§4"&§[param1];
         if(_loc3_ == null)
         {
            this.§4"&§[param1] = new <Function>[param2];
         }
         else
         {
            this.§4"&§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§4"&§)
         {
            listeners = this.§4"&§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§4"&§[type];
               }
               else
               {
                  this.§4"&§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§4"&§)
         {
            delete this.§4"&§[param1];
         }
         else
         {
            this.§4"&§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§4"&§ ? this.§4"&§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§5",§(this);
         }
         if(param1.bubbles && !param1.§,G§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§=!^§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§5",§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4"&§ != null && param1 in this.§4"&§;
      }
      
      public function §set §() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§4"&§)
         {
            for(_loc2_ in this.§4"&§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
