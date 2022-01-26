package starling.events
{
   import §_-GY§.DisplayObject;
   import §_-GY§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-yZ§:String = "touch";
       
      
      private var §_-71§:Vector.<§_-oj§>;
      
      private var §_-sW§:Boolean;
      
      private var §_-oV§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-oj§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-71§ = param2;
         this.§_-sW§ = param3;
         this.§_-oV§ = param4;
      }
      
      public function §_-5H§(param1:DisplayObject, param2:String = null) : Vector.<§_-oj§>
      {
         var _loc4_:§_-oj§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-oj§> = new Vector.<§_-oj§>(0);
         for each(_loc4_ in this.§_-71§)
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
      
      public function §_-3p§(param1:DisplayObject, param2:String = null) : §_-oj§
      {
         var _loc3_:Vector.<§_-oj§> = this.§_-5H§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-71§ != null && this.§_-71§.length != 0)
         {
            return this.§_-71§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-3U§() : Vector.<§_-oj§>
      {
         return this.§_-71§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-sW§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-oV§;
      }
   }
}
