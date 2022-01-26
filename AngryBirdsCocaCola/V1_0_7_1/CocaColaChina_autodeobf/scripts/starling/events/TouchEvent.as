package starling.events
{
   import §,!Q§.DisplayObject;
   import §,!Q§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §8X§:String = "touch";
       
      
      private var §%$§:Vector.<§&!7§>;
      
      private var §3p§:Boolean;
      
      private var § ,§:Boolean;
      
      private var §7?§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§&!7§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§%$§ = !!param2 ? param2 : new Vector.<§&!7§>(0);
         this.§3p§ = param3;
         this.§ ,§ = param4;
         this.§7?§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§7?§)
            {
               this.§7?§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §;0§(param1:DisplayObject, param2:String = null) : Vector.<§&!7§>
      {
         var _loc6_:§&!7§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§&!7§> = new Vector.<§&!7§>(0);
         var _loc4_:int = this.§%$§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§%$§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §6!X§(param1:DisplayObject, param2:String = null) : §&!7§
      {
         var _loc3_:Vector.<§&!7§> = this.§;0§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §"!-§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§&!7§> = null;
         var _loc3_:int = 0;
         if(this.§6!X§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§;0§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §!!S§.§3§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§7?§;
      }
      
      public function get §8$§() : Vector.<§&!7§>
      {
         return this.§%$§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3p§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ ,§;
      }
   }
}
