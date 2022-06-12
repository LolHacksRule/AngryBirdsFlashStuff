package starling.events
{
   import §^I§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §5!o§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§5!o§ == null)
         {
            this.§5!o§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§5!o§[param1];
         if(_loc3_ == null)
         {
            this.§5!o§[param1] = new <Function>[param2];
         }
         else
         {
            this.§5!o§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§5!o§)
         {
            listeners = this.§5!o§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§5!o§[type];
               }
               else
               {
                  this.§5!o§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§5!o§)
         {
            delete this.§5!o§[param1];
         }
         else
         {
            this.§5!o§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§5!o§ ? this.§5!o§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§<T§(this);
         }
         if(param1.bubbles && !param1.§18§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§"%§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§<T§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5!o§ != null && param1 in this.§5!o§;
      }
      
      public function §1!T§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§5!o§)
         {
            for(_loc2_ in this.§5!o§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
