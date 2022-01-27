package starling.events
{
   import §4G§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §]I§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§]I§ == null)
         {
            this.§]I§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§]I§[param1];
         if(_loc3_ == null)
         {
            this.§]I§[param1] = new <Function>[param2];
         }
         else
         {
            this.§]I§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§]I§)
         {
            listeners = this.§]I§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§]I§[type];
               }
               else
               {
                  this.§]I§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§]I§)
         {
            delete this.§]I§[param1];
         }
         else
         {
            this.§]I§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§]I§ ? this.§]I§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§0%§(this);
         }
         if(param1.bubbles && !param1.§"!8§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§0>§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§0%§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]I§ != null && param1 in this.§]I§;
      }
      
      public function §'N§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§]I§)
         {
            for(_loc2_ in this.§]I§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
