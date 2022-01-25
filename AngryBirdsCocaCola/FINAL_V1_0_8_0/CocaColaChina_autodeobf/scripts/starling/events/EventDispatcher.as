package starling.events
{
   import §&!9§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §^V§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§^V§ == null)
         {
            this.§^V§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§^V§[param1];
         if(_loc3_ == null)
         {
            this.§^V§[param1] = new <Function>[param2];
         }
         else
         {
            this.§^V§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§^V§)
         {
            listeners = this.§^V§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§^V§[type];
               }
               else
               {
                  this.§^V§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§^V§)
         {
            delete this.§^V§[param1];
         }
         else
         {
            this.§^V§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§^V§ ? this.§^V§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§<V§(this);
         }
         if(param1.bubbles && !param1.§^!H§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§0d§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§<V§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§^V§ != null && param1 in this.§^V§;
      }
      
      public function §+n§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§^V§)
         {
            for(_loc2_ in this.§^V§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
