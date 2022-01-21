package starling.events
{
   import §2![§.DisplayObject;
   import §2![§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §#+§:String = "touch";
       
      
      private var §0`§:Vector.<§"G§>;
      
      private var §throw§:Boolean;
      
      private var §9S§:Boolean;
      
      private var §=q§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§"G§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§0`§ = !!param2 ? param2 : new Vector.<§"G§>(0);
         this.§throw§ = param3;
         this.§9S§ = param4;
         this.§=q§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§=q§)
            {
               this.§=q§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@0§(param1:DisplayObject, param2:String = null) : Vector.<§"G§>
      {
         var _loc6_:§"G§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§"G§> = new Vector.<§"G§>(0);
         var _loc4_:int = this.§0`§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§0`§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §8!H§(param1:DisplayObject, param2:String = null) : §"G§
      {
         var _loc3_:Vector.<§"G§> = this.§@0§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §2!P§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§"G§> = null;
         var _loc3_:int = 0;
         if(this.§8!H§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@0§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != § !=§.§`!T§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§=q§;
      }
      
      public function get §-![§() : Vector.<§"G§>
      {
         return this.§0`§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§throw§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9S§;
      }
   }
}
