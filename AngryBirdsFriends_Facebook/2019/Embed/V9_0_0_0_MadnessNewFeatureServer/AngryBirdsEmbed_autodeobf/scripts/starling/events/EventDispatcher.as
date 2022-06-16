package starling.events
{
   import §90§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §0q§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§0q§ == null)
         {
            this.§0q§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§0q§[param1];
         if(_loc3_ == null)
         {
            this.§0q§[param1] = new <Function>[param2];
         }
         else
         {
            this.§0q§[param1] = _loc3_.concat(new <Function>[param2]);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var listeners:Vector.<Function> = null;
         var type:String = param1;
         var listener:Function = param2;
         if(this.§0q§)
         {
            listeners = this.§0q§[type];
            if(listeners)
            {
               listeners = listeners.filter(function(param1:Function, ... rest):Boolean
               {
                  return param1 != listener;
               });
               if(listeners.length == 0)
               {
                  delete this.§0q§[type];
               }
               else
               {
                  this.§0q§[type] = listeners;
               }
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§0q§)
         {
            delete this.§0q§[param1];
         }
         else
         {
            this.§0q§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc2_:Vector.<Function> = !!this.§0q§ ? this.§0q§[param1.type] : null;
         if(_loc2_ == null && !param1.bubbles)
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         if(_loc3_ == null || param1.currentTarget != null)
         {
            param1.§^§(this);
         }
         if(param1.bubbles && !param1.§1"§ && this is DisplayObject)
         {
            if((_loc7_ = this as DisplayObject).parent != null)
            {
               param1.§&§(null);
               _loc7_.parent.dispatchEvent(param1);
            }
         }
         if(_loc3_)
         {
            param1.§^§(_loc3_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0q§ != null && param1 in this.§0q§;
      }
      
      public function §@!H§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§0q§)
         {
            for(_loc2_ in this.§0q§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
