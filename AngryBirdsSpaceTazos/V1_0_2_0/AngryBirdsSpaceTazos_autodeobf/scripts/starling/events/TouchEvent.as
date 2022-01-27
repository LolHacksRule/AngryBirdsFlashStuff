package starling.events
{
   import §'!&§.DisplayObject;
   import §'!&§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §;;§:String = "touch";
       
      
      private var §6!?§:Vector.<§^!w§>;
      
      private var §;K§:Boolean;
      
      private var §9]§:Boolean;
      
      private var §&F§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§^!w§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§6!?§ = !!param2 ? param2 : new Vector.<§^!w§>(0);
         this.§;K§ = param3;
         this.§9]§ = param4;
         this.§&F§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§&F§)
            {
               this.§&F§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §%!N§(param1:DisplayObject, param2:String = null) : Vector.<§^!w§>
      {
         var _loc6_:§^!w§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§^!w§> = new Vector.<§^!w§>(0);
         var _loc4_:int = this.§6!?§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§6!?§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §1!<§(param1:DisplayObject, param2:String = null) : §^!w§
      {
         var _loc3_:Vector.<§^!w§> = this.§%!N§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §]Y§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§^!w§> = null;
         var _loc3_:int = 0;
         if(this.§1!<§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§%!N§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §0!i§.§?!-§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§&F§;
      }
      
      public function get §@U§() : Vector.<§^!w§>
      {
         return this.§6!?§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;K§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9]§;
      }
   }
}
