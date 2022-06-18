package starling.events
{
   import §,H§.DisplayObject;
   import §,H§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §7X§:String = "touch";
       
      
      private var §[p§:Vector.<§4]§>;
      
      private var §>!2§:Boolean;
      
      private var §#§:Boolean;
      
      private var §-!?§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4]§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§[p§ = !!param2 ? param2 : new Vector.<§4]§>(0);
         this.§>!2§ = param3;
         this.§#§ = param4;
         this.§-!?§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§-!?§)
            {
               this.§-!?§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §#!S§(param1:DisplayObject, param2:String = null) : Vector.<§4]§>
      {
         var _loc6_:§4]§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§4]§> = new Vector.<§4]§>(0);
         var _loc4_:int = this.§[p§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§[p§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §6D§(param1:DisplayObject, param2:String = null) : §4]§
      {
         var _loc3_:Vector.<§4]§> = this.§#!S§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §"v§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§4]§> = null;
         var _loc3_:int = 0;
         if(this.§6D§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§#!S§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §0!?§.§1!Y§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!?§;
      }
      
      public function get §6k§() : Vector.<§4]§>
      {
         return this.§[p§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>!2§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#§;
      }
   }
}
