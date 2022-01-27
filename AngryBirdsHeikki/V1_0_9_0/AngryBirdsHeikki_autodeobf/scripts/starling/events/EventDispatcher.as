package starling.events
{
   import §#!f§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §6!S§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§6!S§ == null)
         {
            this.§6!S§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§6!S§[param1];
         if(_loc3_ == null)
         {
            this.§6!S§[param1] = new <Function>[param2];
         }
         else
         {
            this.§6!S§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§6!S§)
         {
            listeners = this.§6!S§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§6!S§[type];
               }
               else
               {
                  this.§6!S§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§6!S§)
         {
            delete this.§6!S§[param1];
         }
         else
         {
            this.§6!S§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§6!S§ ? this.§6!S§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§[!P§(this);
         }
         if(param1.bubbles && !param1.§^l§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§%y§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§[!P§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6!S§ != null && param1 in this.§6!S§;
      }
      
      public function §2i§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§6!S§)
         {
            for(_loc2_ in this.§6!S§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
