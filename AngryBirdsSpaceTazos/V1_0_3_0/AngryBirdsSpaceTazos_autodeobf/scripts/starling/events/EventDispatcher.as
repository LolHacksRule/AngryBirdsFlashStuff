package starling.events
{
   import §4"@§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §8!2§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§8!2§ == null)
         {
            this.§8!2§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§8!2§[param1];
         if(_loc3_ == null)
         {
            this.§8!2§[param1] = new <Function>[param2];
         }
         else
         {
            this.§8!2§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§8!2§)
         {
            listeners = this.§8!2§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§8!2§[type];
               }
               else
               {
                  this.§8!2§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§8!2§)
         {
            delete this.§8!2§[param1];
         }
         else
         {
            this.§8!2§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§8!2§ ? this.§8!2§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§'!U§(this);
         }
         if(param1.bubbles && !param1.§@!#§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§>Z§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§'!U§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8!2§ != null && param1 in this.§8!2§;
      }
      
      public function §,N§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§8!2§)
         {
            for(_loc2_ in this.§8!2§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
