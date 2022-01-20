package starling.events
{
   import §`!n§.DisplayObject;
   import §`!n§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §,!E§:String = "touch";
       
      
      private var §`!'§:Vector.<§!4§>;
      
      private var §7!+§:Boolean;
      
      private var §2Z§:Boolean;
      
      private var §]!G§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§!4§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§`!'§ = !!param2 ? param2 : new Vector.<§!4§>(0);
         this.§7!+§ = param3;
         this.§2Z§ = param4;
         this.§]!G§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§]!G§)
            {
               this.§]!G§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §[L§(param1:DisplayObject, param2:String = null) : Vector.<§!4§>
      {
         var _loc6_:§!4§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§!4§> = new Vector.<§!4§>(0);
         var _loc4_:int = this.§`!'§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§`!'§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §`e§(param1:DisplayObject, param2:String = null) : §!4§
      {
         var _loc3_:Vector.<§!4§> = this.§[L§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §-e§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§!4§> = null;
         var _loc3_:int = 0;
         if(this.§`e§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§[L§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §=b§.§'q§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§]!G§;
      }
      
      public function get §6!,§() : Vector.<§!4§>
      {
         return this.§`!'§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§7!+§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2Z§;
      }
   }
}
