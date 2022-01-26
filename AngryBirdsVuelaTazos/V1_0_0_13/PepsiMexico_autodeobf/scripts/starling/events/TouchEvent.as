package starling.events
{
   import §_-UX§.DisplayObject;
   import §_-UX§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-1N§:String = "touch";
       
      
      private var §_-Jz§:Vector.<§_-9U§>;
      
      private var §_-hL§:Boolean;
      
      private var §_-dH§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-9U§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-Jz§ = param2;
         this.§_-hL§ = param3;
         this.§_-dH§ = param4;
      }
      
      public function §_-4n§(param1:DisplayObject, param2:String = null) : Vector.<§_-9U§>
      {
         var _loc4_:§_-9U§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-9U§> = new Vector.<§_-9U§>(0);
         for each(_loc4_ in this.§_-Jz§)
         {
            _loc5_ = _loc4_.target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc4_.target);
            _loc6_ = param2 == null || param2 == _loc4_.phase;
            if(_loc5_ && _loc6_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function §_-BN§(param1:DisplayObject, param2:String = null) : §_-9U§
      {
         var _loc3_:Vector.<§_-9U§> = this.§_-4n§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-Jz§ != null && this.§_-Jz§.length != 0)
         {
            return this.§_-Jz§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-Ut§() : Vector.<§_-9U§>
      {
         return this.§_-Jz§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-hL§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-dH§;
      }
   }
}
