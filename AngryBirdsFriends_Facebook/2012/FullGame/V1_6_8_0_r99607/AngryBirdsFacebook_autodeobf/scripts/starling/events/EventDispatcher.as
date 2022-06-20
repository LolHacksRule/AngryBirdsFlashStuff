package starling.events
{
   import §]&§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var § use§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§ use§ == null)
         {
            this.§ use§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§ use§[param1];
         if(_loc3_ == null)
         {
            this.§ use§[param1] = new <Function>[param2];
         }
         else
         {
            this.§ use§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§ use§)
         {
            listeners = this.§ use§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§ use§[type];
               }
               else
               {
                  this.§ use§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§ use§)
         {
            delete this.§ use§[param1];
         }
         else
         {
            this.§ use§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§ use§ ? this.§ use§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§>H§(this);
         }
         if(param1.bubbles && !param1.§8!4§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§with§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§>H§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§ use§ != null && param1 in this.§ use§;
      }
      
      public function §,?§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§ use§)
         {
            for(_loc2_ in this.§ use§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
