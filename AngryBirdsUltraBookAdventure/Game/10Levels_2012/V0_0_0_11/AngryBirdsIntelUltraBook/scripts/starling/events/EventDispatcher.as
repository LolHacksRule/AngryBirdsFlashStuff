package starling.events
{
   import §6!7§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §!l§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§!l§ == null)
         {
            this.§!l§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§!l§[param1];
         if(_loc3_ == null)
         {
            this.§!l§[param1] = new <Function>[param2];
         }
         else
         {
            this.§!l§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§!l§)
         {
            listeners = this.§!l§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§!l§[type];
               }
               else
               {
                  this.§!l§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§!l§)
         {
            delete this.§!l§[param1];
         }
         else
         {
            this.§!l§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = Boolean(this.§!l§) ? this.§!l§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§,!g§(this);
         }
         var _loc4_:Boolean = false;
         var _loc5_:int = _loc2_ == null ? int(0) : int(_loc2_.length);
         if(_loc5_ != 0)
         {
            param1.§`?§(this);
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc2_[_loc6_](param1);
               if(param1.§ ;§)
               {
                  _loc4_ = true;
                  break;
               }
               _loc6_++;
            }
         }
         if(!_loc4_ && param1.bubbles && !param1.§>q§ && this is DisplayObject)
         {
            _loc7_ = this as DisplayObject;
            if(_loc7_.parent != null)
            {
               param1.§`?§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§,!g§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!l§ != null && param1 in this.§!l§;
      }
      
      public function §8!$§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§!l§)
         {
            for(_loc2_ in this.§!l§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
