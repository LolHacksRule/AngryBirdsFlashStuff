package starling.events
{
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §8m§:String = "touch";
       
      
      private var §2D§:Vector.<§+!§>;
      
      private var §1!;§:Boolean;
      
      private var §"!J§:Boolean;
      
      private var §58§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§+!§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§2D§ = !!param2 ? param2 : new Vector.<§+!§>(0);
         this.§1!;§ = param3;
         this.§"!J§ = param4;
         this.§58§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§58§)
            {
               this.§58§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §1!'§(param1:DisplayObject, param2:String = null) : Vector.<§+!§>
      {
         var _loc6_:§+!§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§+!§> = new Vector.<§+!§>(0);
         var _loc4_:int = this.§2D§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§2D§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §5x§(param1:DisplayObject, param2:String = null) : §+!§
      {
         var _loc3_:Vector.<§+!§> = this.§1!'§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §`s§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§+!§> = null;
         var _loc3_:int = 0;
         if(this.§5x§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§1!'§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §9j§.§@q§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§58§;
      }
      
      public function get §5!G§() : Vector.<§+!§>
      {
         return this.§2D§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1!;§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"!J§;
      }
   }
}
