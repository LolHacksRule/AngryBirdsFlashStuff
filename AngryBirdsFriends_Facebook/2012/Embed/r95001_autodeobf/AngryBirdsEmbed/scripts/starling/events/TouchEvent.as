package starling.events
{
   import §<k§.DisplayObject;
   import §<k§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §"+§:String = "touch";
       
      
      private var §"Z§:Vector.<§84§>;
      
      private var §^!%§:Boolean;
      
      private var §13§:Boolean;
      
      private var §%<§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§84§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§"Z§ = !!param2 ? param2 : new Vector.<§84§>(0);
         this.§^!%§ = param3;
         this.§13§ = param4;
         this.§%<§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§%<§)
            {
               this.§%<§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §^Z§(param1:DisplayObject, param2:String = null) : Vector.<§84§>
      {
         var _loc6_:§84§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§84§> = new Vector.<§84§>(0);
         var _loc4_:int = this.§"Z§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§"Z§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §0!>§(param1:DisplayObject, param2:String = null) : §84§
      {
         var _loc3_:Vector.<§84§> = this.§^Z§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §1J§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§84§> = null;
         var _loc3_:int = 0;
         if(this.§0!>§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§^Z§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §8P§.§ G§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§%<§;
      }
      
      public function get §=!=§() : Vector.<§84§>
      {
         return this.§"Z§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^!%§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§13§;
      }
   }
}
