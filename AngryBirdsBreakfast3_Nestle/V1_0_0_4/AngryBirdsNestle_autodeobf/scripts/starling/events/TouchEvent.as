package starling.events
{
   import §-!f§.DisplayObject;
   import §-!f§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §3!d§:String = "touch";
       
      
      private var §4_§:Vector.<§`!=§>;
      
      private var §9!^§:Boolean;
      
      private var §#!k§:Boolean;
      
      private var §^!Y§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§`!=§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§4_§ = !!param2 ? param2 : new Vector.<§`!=§>(0);
         this.§9!^§ = param3;
         this.§#!k§ = param4;
         this.§^!Y§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§^!Y§)
            {
               this.§^!Y§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §[>§(param1:DisplayObject, param2:String = null) : Vector.<§`!=§>
      {
         var _loc6_:§`!=§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§`!=§> = new Vector.<§`!=§>(0);
         var _loc4_:int = this.§4_§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§4_§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §-w§(param1:DisplayObject, param2:String = null) : §`!=§
      {
         var _loc3_:Vector.<§`!=§> = this.§[>§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §"!+§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§`!=§> = null;
         var _loc3_:int = 0;
         if(this.§-w§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§[>§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §-!C§.§&""§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!Y§;
      }
      
      public function get §=!;§() : Vector.<§`!=§>
      {
         return this.§4_§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§9!^§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#!k§;
      }
   }
}
