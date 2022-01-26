package starling.events
{
   import §_-pF§.DisplayObject;
   import §_-pF§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-O6§:String = "touch";
       
      
      private var §_-6r§:Vector.<§_-ny§>;
      
      private var §_-3J§:Boolean;
      
      private var §_-eL§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-ny§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-6r§ = param2;
         this.§_-3J§ = param3;
         this.§_-eL§ = param4;
      }
      
      public function §_-O1§(param1:DisplayObject, param2:String = null) : Vector.<§_-ny§>
      {
         var _loc4_:§_-ny§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-ny§> = new Vector.<§_-ny§>(0);
         for each(_loc4_ in this.§_-6r§)
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
      
      public function §_-jN§(param1:DisplayObject, param2:String = null) : §_-ny§
      {
         var _loc3_:Vector.<§_-ny§> = this.§_-O1§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-6r§ != null && this.§_-6r§.length != 0)
         {
            return this.§_-6r§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-cA§() : Vector.<§_-ny§>
      {
         return this.§_-6r§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-3J§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-eL§;
      }
   }
}
