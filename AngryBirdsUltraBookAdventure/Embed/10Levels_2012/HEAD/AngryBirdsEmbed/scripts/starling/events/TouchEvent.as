package starling.events
{
   import §%-§.DisplayObject;
   import §%-§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §+l§:String = "touch";
       
      
      private var §#e§:Vector.<§0K§>;
      
      private var §83§:Boolean;
      
      private var §&!>§:Boolean;
      
      private var §-x§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§0K§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§#e§ = !!param2 ? param2 : new Vector.<§0K§>(0);
         this.§83§ = param3;
         this.§&!>§ = param4;
         this.§-x§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§-x§)
            {
               this.§-x§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §`!§(param1:DisplayObject, param2:String = null) : Vector.<§0K§>
      {
         var _loc6_:§0K§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§0K§> = new Vector.<§0K§>(0);
         var _loc4_:int = this.§#e§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§#e§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §#8§(param1:DisplayObject, param2:String = null) : §0K§
      {
         var _loc3_:Vector.<§0K§> = this.§`!§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §5Y§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§0K§> = null;
         var _loc3_:int = 0;
         if(this.§#8§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§`!§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §9`§.§"!@§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§-x§;
      }
      
      public function get §^$§() : Vector.<§0K§>
      {
         return this.§#e§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§83§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§&!>§;
      }
   }
}
