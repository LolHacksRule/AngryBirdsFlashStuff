package starling.events
{
   import §?^§.DisplayObject;
   import §?^§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §!r§:String = "touch";
       
      
      private var §-x§:Vector.<§?l§>;
      
      private var §]!E§:Boolean;
      
      private var §83§:Boolean;
      
      private var §`!§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§?l§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§-x§ = !!param2 ? param2 : new Vector.<§?l§>(0);
         this.§]!E§ = param3;
         this.§83§ = param4;
         this.§`!§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§`!§)
            {
               this.§`!§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §#8§(param1:DisplayObject, param2:String = null) : Vector.<§?l§>
      {
         var _loc6_:§?l§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§?l§> = new Vector.<§?l§>(0);
         var _loc4_:int = this.§-x§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§-x§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §5Y§(param1:DisplayObject, param2:String = null) : §?l§
      {
         var _loc3_:Vector.<§?l§> = this.§#8§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §^$§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§?l§> = null;
         var _loc3_:int = 0;
         if(this.§5Y§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§#8§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §,R§.§?!>§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!§;
      }
      
      public function get §+l§() : Vector.<§?l§>
      {
         return this.§-x§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§]!E§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§83§;
      }
   }
}
