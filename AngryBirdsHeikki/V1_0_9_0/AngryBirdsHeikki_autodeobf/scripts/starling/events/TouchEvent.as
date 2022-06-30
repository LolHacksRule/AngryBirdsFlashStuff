package starling.events
{
   import §#!f§.DisplayObject;
   import §#!f§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §%H§:String = "touch";
       
      
      private var §;v§:Vector.<§8W§>;
      
      private var §-[§:Boolean;
      
      private var §?l§:Boolean;
      
      private var §5T§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§8W§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§;v§ = !!param2 ? param2 : new Vector.<§8W§>(0);
         this.§-[§ = param3;
         this.§?l§ = param4;
         this.§5T§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§5T§)
            {
               this.§5T§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §0Q§(param1:DisplayObject, param2:String = null) : Vector.<§8W§>
      {
         var _loc6_:§8W§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§8W§> = new Vector.<§8W§>(0);
         var _loc4_:int = this.§;v§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§;v§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §!!&§(param1:DisplayObject, param2:String = null) : §8W§
      {
         var _loc3_:Vector.<§8W§> = this.§0Q§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §`W§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§8W§> = null;
         var _loc3_:int = 0;
         if(this.§!!&§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§0Q§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §4!a§.§,§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§5T§;
      }
      
      public function get §,C§() : Vector.<§8W§>
      {
         return this.§;v§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-[§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§?l§;
      }
   }
}
