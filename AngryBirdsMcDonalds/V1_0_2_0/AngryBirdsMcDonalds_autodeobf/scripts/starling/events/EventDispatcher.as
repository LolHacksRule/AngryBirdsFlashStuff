package starling.events
{
   import §5x§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §`L§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§`L§ == null)
         {
            this.§`L§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§`L§[param1];
         if(_loc3_ == null)
         {
            this.§`L§[param1] = new <Function>[param2];
         }
         else
         {
            this.§`L§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§`L§)
         {
            listeners = this.§`L§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§`L§[type];
               }
               else
               {
                  this.§`L§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§`L§)
         {
            delete this.§`L§[param1];
         }
         else
         {
            this.§`L§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§`L§ ? this.§`L§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§!!l§(this);
         }
         if(param1.bubbles && !param1.§0!F§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§;4§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§!!l§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`L§ != null && param1 in this.§`L§;
      }
      
      public function §[!6§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§`L§)
         {
            for(_loc2_ in this.§`L§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
