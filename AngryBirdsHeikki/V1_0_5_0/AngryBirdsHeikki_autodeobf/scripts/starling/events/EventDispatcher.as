package starling.events
{
   import §[=§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §,a§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§,a§ == null)
         {
            this.§,a§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§,a§[param1];
         if(_loc3_ == null)
         {
            this.§,a§[param1] = new <Function>[param2];
         }
         else
         {
            this.§,a§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§,a§)
         {
            listeners = this.§,a§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§,a§[type];
               }
               else
               {
                  this.§,a§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§,a§)
         {
            delete this.§,a§[param1];
         }
         else
         {
            this.§,a§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§,a§ ? this.§,a§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§^!M§(this);
         }
         if(param1.bubbles && !param1.§5t§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§!2§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§^!M§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§,a§ != null && param1 in this.§,a§;
      }
      
      public function §'N§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§,a§)
         {
            for(_loc2_ in this.§,a§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
