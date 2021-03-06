package starling.events
{
   import §-!'§.DisplayObject;
   import §-!'§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §=w§:String = "touch";
       
      
      private var §9N§:Vector.<§+l§>;
      
      private var §9J§:Boolean;
      
      private var §>i§:Boolean;
      
      private var §9i§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§+l§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§9N§ = !!param2 ? param2 : new Vector.<§+l§>(0);
         this.§9J§ = param3;
         this.§>i§ = param4;
         this.§9i§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§9i§)
            {
               this.§9i§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §];§(param1:DisplayObject, param2:String = null) : Vector.<§+l§>
      {
         var _loc6_:§+l§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§+l§> = new Vector.<§+l§>(0);
         var _loc4_:int = this.§9N§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§9N§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §';§(param1:DisplayObject, param2:String = null) : §+l§
      {
         var _loc3_:Vector.<§+l§> = this.§];§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §&;§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§+l§> = null;
         var _loc3_:int = 0;
         if(this.§';§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§];§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §9V§.§^^§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§9i§;
      }
      
      public function get §86§() : Vector.<§+l§>
      {
         return this.§9N§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§9J§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>i§;
      }
   }
}
