package §1P§
{
   import §&!v§.DisplayObject;
   import flash.utils.Dictionary;
   import starling.§core:starling_internal§.*;
   
   public class EventDispatcher
   {
      
      private static var §`#6§:Array = [];
       
      
      private var §3"r§:Dictionary;
      
      public function EventDispatcher()
      {
         super();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(this.§3"r§ == null)
         {
            this.§3"r§ = new Dictionary();
         }
         var _loc3_:Vector.<Function> = this.§3"r§[param1] as Vector.<Function>;
         if(_loc3_ == null)
         {
            this.§3"r§[param1] = new <Function>[param2];
         }
         else if(_loc3_.indexOf(param2) == -1)
         {
            _loc3_.push(param2);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Vector.<Function> = null;
         var _loc4_:int = 0;
         var _loc5_:Vector.<Function> = null;
         var _loc6_:int = 0;
         if(this.§3"r§)
         {
            _loc3_ = this.§3"r§[param1] as Vector.<Function>;
            if(_loc3_)
            {
               _loc4_ = _loc3_.length;
               _loc5_ = new Vector.<Function>(0);
               _loc6_ = 0;
               while(_loc6_ < _loc4_)
               {
                  if(_loc3_[_loc6_] != param2)
                  {
                     _loc5_.push(_loc3_[_loc6_]);
                  }
                  _loc6_++;
               }
               this.§3"r§[param1] = _loc5_;
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         if(param1 && this.§3"r§)
         {
            delete this.§3"r§[param1];
         }
         else
         {
            this.§3"r§ = null;
         }
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:Boolean = param1.bubbles;
         if(!_loc2_ && (this.§3"r§ == null || !(param1.type in this.§3"r§)))
         {
            return;
         }
         var _loc3_:EventDispatcher = param1.target;
         param1.§"0§(this);
         if(_loc2_ && this is DisplayObject)
         {
            this.§<"5§(param1);
         }
         else
         {
            this.invokeEvent(param1);
         }
         if(_loc3_)
         {
            param1.§"0§(_loc3_);
         }
      }
      
      function invokeEvent(param1:Event) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:Function = null;
         var _loc6_:int = 0;
         var _loc2_:Vector.<Function> = !!this.§3"r§ ? this.§3"r§[param1.type] as Vector.<Function> : null;
         var _loc3_:int = _loc2_ == null ? 0 : int(_loc2_.length);
         if(_loc3_)
         {
            param1.§"%§(this);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               if((_loc6_ = (_loc5_ = _loc2_[_loc4_] as Function).length) == 0)
               {
                  _loc5_();
               }
               else if(_loc6_ == 1)
               {
                  _loc5_(param1);
               }
               else
               {
                  _loc5_(param1,param1.data);
               }
               if(param1.§;!O§)
               {
                  return true;
               }
               _loc4_++;
            }
            return param1.§^^§;
         }
         return false;
      }
      
      function §<"5§(param1:Event) : void
      {
         var _loc2_:Vector.<EventDispatcher> = null;
         var _loc6_:Boolean = false;
         var _loc3_:DisplayObject = this as DisplayObject;
         var _loc4_:int = 1;
         if(§`#6§.length > 0)
         {
            _loc2_ = §`#6§.pop();
            _loc2_[0] = _loc3_;
         }
         else
         {
            _loc2_ = new <EventDispatcher>[_loc3_];
         }
         while((_loc3_ = _loc3_.parent) != null)
         {
            _loc2_[int(_loc4_++)] = _loc3_;
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(_loc6_ = _loc2_[_loc5_].invokeEvent(param1))
            {
               break;
            }
            _loc5_++;
         }
         _loc2_.length = 0;
         §`#6§.push(_loc2_);
      }
      
      public function §4#h§(param1:String, param2:Boolean = false, param3:Object = null) : void
      {
         var _loc4_:Event = null;
         if(param2 || this.hasEventListener(param1))
         {
            _loc4_ = Event.§=+§(param1,param2,param3);
            this.dispatchEvent(_loc4_);
            Event.§"#p§(_loc4_);
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Vector.<Function> = !!this.§3"r§ ? this.§3"r§[param1] as Vector.<Function> : null;
         return !!_loc2_ ? _loc2_.length != 0 : false;
      }
      
      public function §9""§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§3"r§)
         {
            for(_loc2_ in this.§3"r§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
