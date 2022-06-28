package starling.events
{
   import §9E§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §'!]§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§'!]§ == null)
         {
            this.§'!]§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§'!]§[param1];
         if(_loc3_ == null)
         {
            this.§'!]§[param1] = new <Function>[param2];
         }
         else
         {
            this.§'!]§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§'!]§)
         {
            listeners = this.§'!]§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§'!]§[type];
               }
               else
               {
                  this.§'!]§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§'!]§)
         {
            delete this.§'!]§[param1];
         }
         else
         {
            this.§'!]§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§'!]§ ? this.§'!]§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§ 7§(this);
         }
         if(param1.bubbles && !param1.§]A§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§2!N§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§ 7§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'!]§ != null && param1 in this.§'!]§;
      }
      
      public function §=!$§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§'!]§)
         {
            for(_loc2_ in this.§'!]§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
