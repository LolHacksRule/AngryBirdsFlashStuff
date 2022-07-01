package starling.events
{
   import §`!B§.DisplayObject;
   import §`!B§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §-o§:String = "touch";
       
      
      private var §?J§:Vector.<§[y§>;
      
      private var §"!p§:Boolean;
      
      private var §3!§:Boolean;
      
      private var §9!L§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§[y§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§?J§ = !!param2 ? param2 : new Vector.<§[y§>(0);
         this.§"!p§ = param3;
         this.§3!§ = param4;
         this.§9!L§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§9!L§)
            {
               this.§9!L§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §`m§(param1:DisplayObject, param2:String = null) : Vector.<§[y§>
      {
         var _loc6_:§[y§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§[y§> = new Vector.<§[y§>(0);
         var _loc4_:int = this.§?J§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§?J§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §;!a§(param1:DisplayObject, param2:String = null) : §[y§
      {
         var _loc3_:Vector.<§[y§> = this.§`m§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §0M§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§[y§> = null;
         var _loc3_:int = 0;
         if(this.§;!a§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§`m§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §^!G§.§;"0§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!L§;
      }
      
      public function get §9"2§() : Vector.<§[y§>
      {
         return this.§?J§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"!p§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!§;
      }
   }
}
