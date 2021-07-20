package starling.events
{
   import §_-LP§.DisplayObject;
   import §_-LP§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-AT§:String = "touch";
       
      
      private var §_-V-§:Vector.<§_-aG§>;
      
      private var §_-l7§:Boolean;
      
      private var §_-TA§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-aG§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-V-§ = param2;
         this.§_-l7§ = param3;
         this.§_-TA§ = param4;
      }
      
      public function §_-OT§(param1:DisplayObject, param2:String = null) : Vector.<§_-aG§>
      {
         var _loc4_:§_-aG§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-aG§> = new Vector.<§_-aG§>(0);
         for each(_loc4_ in this.§_-V-§)
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
      
      public function §_-QB§(param1:DisplayObject, param2:String = null) : §_-aG§
      {
         var _loc3_:Vector.<§_-aG§> = this.§_-OT§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-V-§ != null && this.§_-V-§.length != 0)
         {
            return this.§_-V-§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-X6§() : Vector.<§_-aG§>
      {
         return this.§_-V-§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-l7§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-TA§;
      }
   }
}
