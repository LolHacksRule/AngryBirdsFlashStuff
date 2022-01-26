package starling.events
{
   import §@!=§.DisplayObject;
   import §@!=§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §!&§:String = "touch";
       
      
      private var §!Z§:Vector.<§"c§>;
      
      private var §+d§:Boolean;
      
      private var §'O§:Boolean;
      
      private var §8p§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§"c§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§!Z§ = !!param2 ? param2 : new Vector.<§"c§>(0);
         this.§+d§ = param3;
         this.§'O§ = param4;
         this.§8p§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§8p§)
            {
               this.§8p§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §'!%§(param1:DisplayObject, param2:String = null) : Vector.<§"c§>
      {
         var _loc6_:§"c§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§"c§> = new Vector.<§"c§>(0);
         var _loc4_:int = this.§!Z§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§!Z§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §2E§(param1:DisplayObject, param2:String = null) : §"c§
      {
         var _loc3_:Vector.<§"c§> = this.§'!%§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §"!F§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§"c§> = null;
         var _loc3_:int = 0;
         if(this.§2E§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§'!%§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §>w§.§[s§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§8p§;
      }
      
      public function get §]z§() : Vector.<§"c§>
      {
         return this.§!Z§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+d§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§'O§;
      }
   }
}
