package starling.events
{
   import §_-se§.DisplayObject;
   import §_-se§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-Ej§:String = "touch";
       
      
      private var §_-iJ§:Vector.<§_-4l§>;
      
      private var §_-30§:Boolean;
      
      private var §_-MZ§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-4l§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-iJ§ = param2;
         this.§_-30§ = param3;
         this.§_-MZ§ = param4;
      }
      
      public function §_-CT§(param1:DisplayObject, param2:String = null) : Vector.<§_-4l§>
      {
         var _loc4_:§_-4l§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-4l§> = new Vector.<§_-4l§>(0);
         for each(_loc4_ in this.§_-iJ§)
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
      
      public function §_-aJ§(param1:DisplayObject, param2:String = null) : §_-4l§
      {
         var _loc3_:Vector.<§_-4l§> = this.§_-CT§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-iJ§ != null && this.§_-iJ§.length != 0)
         {
            return this.§_-iJ§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-LK§() : Vector.<§_-4l§>
      {
         return this.§_-iJ§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-30§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-MZ§;
      }
   }
}
