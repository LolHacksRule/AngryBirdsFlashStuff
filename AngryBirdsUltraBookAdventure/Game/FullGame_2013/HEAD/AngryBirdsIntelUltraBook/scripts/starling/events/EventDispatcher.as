package starling.events
{
   import §#!,§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §"!6§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§"!6§ == null)
         {
            this.§"!6§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§"!6§[param1];
         if(_loc3_ == null)
         {
            this.§"!6§[param1] = new <Function>[param2];
         }
         else
         {
            this.§"!6§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§"!6§)
         {
            listeners = this.§"!6§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§"!6§[type];
               }
               else
               {
                  this.§"!6§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§"!6§)
         {
            delete this.§"!6§[param1];
         }
         else
         {
            this.§"!6§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = Boolean(this.§"!6§) ? this.§"!6§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§#s§(this);
         }
         var _loc4_:Boolean = false;
         var _loc5_:int = _loc2_ == null ? int(0) : int(_loc2_.length);
         if(_loc5_ != 0)
         {
            param1.§+^§(this);
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc2_[_loc6_](param1);
               if(param1.§[$§)
               {
                  _loc4_ = true;
                  break;
               }
               _loc6_++;
            }
         }
         if(!_loc4_ && param1.bubbles && !param1.§1v§ && this is DisplayObject)
         {
            _loc7_ = this as DisplayObject;
            if(_loc7_.parent != null)
            {
               param1.§+^§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§#s§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§"!6§ != null && param1 in this.§"!6§;
      }
      
      public function §<c§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§"!6§)
         {
            for(_loc2_ in this.§"!6§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
