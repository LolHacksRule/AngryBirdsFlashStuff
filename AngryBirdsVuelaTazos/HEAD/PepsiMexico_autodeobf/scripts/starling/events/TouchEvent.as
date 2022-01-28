package starling.events
{
   import §_-SE§.DisplayObject;
   import §_-SE§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-zM§:String = "touch";
       
      
      private var §_-qd§:Vector.<§_-m0§>;
      
      private var §if §:Boolean;
      
      private var §_-k-§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-m0§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-qd§ = param2;
         this.§if § = param3;
         this.§_-k-§ = param4;
      }
      
      public function §_-6R§(param1:DisplayObject, param2:String = null) : Vector.<§_-m0§>
      {
         var _loc4_:§_-m0§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-m0§> = new Vector.<§_-m0§>(0);
         for each(_loc4_ in this.§_-qd§)
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
      
      public function §_-Re§(param1:DisplayObject, param2:String = null) : §_-m0§
      {
         var _loc3_:Vector.<§_-m0§> = this.§_-6R§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-qd§ != null && this.§_-qd§.length != 0)
         {
            return this.§_-qd§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-xf§() : Vector.<§_-m0§>
      {
         return this.§_-qd§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§if §;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-k-§;
      }
   }
}
