package starling.events
{
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §4F§:String = "touch";
       
      
      private var §5!'§:Vector.<§"!D§>;
      
      private var §'r§:Boolean;
      
      private var §3!O§:Boolean;
      
      private var §'X§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§"!D§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§5!'§ = !!param2 ? param2 : new Vector.<§"!D§>(0);
         this.§'r§ = param3;
         this.§3!O§ = param4;
         this.§'X§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§'X§)
            {
               this.§'X§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §<q§(param1:DisplayObject, param2:String = null) : Vector.<§"!D§>
      {
         var _loc6_:§"!D§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§"!D§> = new Vector.<§"!D§>(0);
         var _loc4_:int = this.§5!'§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§5!'§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §>6§(param1:DisplayObject, param2:String = null) : §"!D§
      {
         var _loc3_:Vector.<§"!D§> = this.§<q§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §0w§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§"!D§> = null;
         var _loc3_:int = 0;
         if(this.§>6§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§<q§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §!q§.§#Z§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§'X§;
      }
      
      public function get §[m§() : Vector.<§"!D§>
      {
         return this.§5!'§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'r§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!O§;
      }
   }
}
