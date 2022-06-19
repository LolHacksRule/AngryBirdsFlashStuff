package starling.events
{
   import §_-Ls§.DisplayObject;
   import §_-Ls§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-xL§:String = "touch";
       
      
      private var §_-Nq§:Vector.<§_-KQ§>;
      
      private var §_-Bz§:Boolean;
      
      private var §_-97§:Boolean;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-KQ§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-Nq§ = param2;
         this.§_-Bz§ = param3;
         this.§_-97§ = param4;
      }
      
      public function §_-00§(param1:DisplayObject, param2:String = null) : Vector.<§_-KQ§>
      {
         var _loc4_:§_-KQ§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§_-KQ§> = new Vector.<§_-KQ§>(0);
         for each(_loc4_ in this.§_-Nq§)
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
      
      public function §_-Cl§(param1:DisplayObject, param2:String = null) : §_-KQ§
      {
         var _loc3_:Vector.<§_-KQ§> = this.§_-00§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function get timestamp() : Number
      {
         if(this.§_-Nq§ != null && this.§_-Nq§.length != 0)
         {
            return this.§_-Nq§[0].timestamp;
         }
         return -1;
      }
      
      public function get §_-cJ§() : Vector.<§_-KQ§>
      {
         return this.§_-Nq§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-Bz§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-97§;
      }
   }
}
