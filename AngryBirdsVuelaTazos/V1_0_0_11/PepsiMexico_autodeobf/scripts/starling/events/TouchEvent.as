package starling.events
{
   import §_-vO§.DisplayObject;
   import §_-vO§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-Wz§:String = "touch";
       
      
      private var §_-Uj§:Vector.<§_-8W§>;
      
      private var §_-85§:Boolean;
      
      private var §_-Qv§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-8W§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-Uj§ = param2;
         this.§_-85§ = param3;
         this.§_-Qv§ = param4;
      }
      
      public function §_-74§(param1:DisplayObject, param2:String = null) : Vector.<§_-8W§>
      {
         var _loc4_:§_-8W§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-8W§> = new Vector.<§_-8W§>(0);
         for each(_loc4_ in this.§_-Uj§)
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
      
      public function §_-qf§(param1:DisplayObject, param2:String = null) : §_-8W§
      {
         var _loc3_:Vector.<§_-8W§> = this.§_-74§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-Uj§ != null && this.§_-Uj§.length != 0)
         {
            return this.§_-Uj§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-vP§() : Vector.<§_-8W§>
      {
         return this.§_-Uj§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-85§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-Qv§;
      }
   }
}
