package starling.events
{
   import flash.utils.Dictionary;
   import §null §.DisplayObject;
   
   public class EventDispatcher
   {
       
      
      private var §>s§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§>s§ == null)
         {
            this.§>s§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§>s§[param1];
         if(_loc3_ == null)
         {
            this.§>s§[param1] = new <Function>[param2];
         }
         else
         {
            this.§>s§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§>s§)
         {
            listeners = this.§>s§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§>s§[type];
               }
               else
               {
                  this.§>s§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§>s§)
         {
            delete this.§>s§[param1];
         }
         else
         {
            this.§>s§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§>s§ ? this.§>s§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§@F§(this);
         }
         if(param1.bubbles && !param1.§<<§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§+X§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§@F§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>s§ != null && param1 in this.§>s§;
      }
      
      public function §<!<§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§>s§)
         {
            for(_loc2_ in this.§>s§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
