package starling.events
{
   import §]!v§.DisplayObject;
   import §]!v§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §+!X§:String = "touch";
       
      
      private var §+!0§:Vector.<§9!@§>;
      
      private var §>"@§:Boolean;
      
      private var §+!Y§:Boolean;
      
      private var §^!9§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§9!@§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§+!0§ = !!param2 ? param2 : new Vector.<§9!@§>(0);
         this.§>"@§ = param3;
         this.§+!Y§ = param4;
         this.§^!9§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§^!9§)
            {
               this.§^!9§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §<!L§(param1:DisplayObject, param2:String = null) : Vector.<§9!@§>
      {
         var _loc6_:§9!@§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§9!@§> = new Vector.<§9!@§>(0);
         var _loc4_:int = this.§+!0§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§+!0§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §->§(param1:DisplayObject, param2:String = null) : §9!@§
      {
         var _loc3_:Vector.<§9!@§> = this.§<!L§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §8!Q§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§9!@§> = null;
         var _loc3_:int = 0;
         if(this.§->§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§<!L§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §1&§.§#m§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!9§;
      }
      
      public function get §1P§() : Vector.<§9!@§>
      {
         return this.§+!0§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>"@§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+!Y§;
      }
   }
}
