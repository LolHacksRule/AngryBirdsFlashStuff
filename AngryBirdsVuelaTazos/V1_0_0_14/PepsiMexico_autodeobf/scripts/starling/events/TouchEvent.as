package starling.events
{
   import §_-b5§.DisplayObject;
   import §_-b5§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const final:String = "touch";
       
      
      private var §_-jW§:Vector.<§_-rP§>;
      
      private var §_-mX§:Boolean;
      
      private var include:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-rP§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-jW§ = param2;
         this.§_-mX§ = param3;
         this.include = param4;
      }
      
      public function §_-2x§(param1:DisplayObject, param2:String = null) : Vector.<§_-rP§>
      {
         var _loc4_:§_-rP§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-rP§> = new Vector.<§_-rP§>(0);
         for each(_loc4_ in this.§_-jW§)
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
      
      public function §_-1W§(param1:DisplayObject, param2:String = null) : §_-rP§
      {
         var _loc3_:Vector.<§_-rP§> = this.§_-2x§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-jW§ != null && this.§_-jW§.length != 0)
         {
            return this.§_-jW§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-Pl§() : Vector.<§_-rP§>
      {
         return this.§_-jW§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-mX§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.include;
      }
   }
}
