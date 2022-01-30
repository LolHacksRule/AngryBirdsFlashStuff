package starling.events
{
   import §-!f§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §-!m§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§-!m§ == null)
         {
            this.§-!m§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§-!m§[param1];
         if(_loc3_ == null)
         {
            this.§-!m§[param1] = new <Function>[param2];
         }
         else
         {
            this.§-!m§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§-!m§)
         {
            listeners = this.§-!m§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§-!m§[type];
               }
               else
               {
                  this.§-!m§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§-!m§)
         {
            delete this.§-!m§[param1];
         }
         else
         {
            this.§-!m§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§-!m§ ? this.§-!m§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§&g§(this);
         }
         if(param1.bubbles && !param1.§"t§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§@!N§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§&g§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-!m§ != null && param1 in this.§-!m§;
      }
      
      public function §4]§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§-!m§)
         {
            for(_loc2_ in this.§-!m§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
