package starling.events
{
   import §4G§.DisplayObject;
   import §4G§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §;o§:String = "touch";
       
      
      private var § !G§:Vector.<§%!M§>;
      
      private var §,>§:Boolean;
      
      private var §"7§:Boolean;
      
      private var §3!B§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§%!M§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§ !G§ = !!param2 ? param2 : new Vector.<§%!M§>(0);
         this.§,>§ = param3;
         this.§"7§ = param4;
         this.§3!B§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§3!B§)
            {
               this.§3!B§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §-d§(param1:DisplayObject, param2:String = null) : Vector.<§%!M§>
      {
         var _loc6_:§%!M§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§%!M§> = new Vector.<§%!M§>(0);
         var _loc4_:int = this.§ !G§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§ !G§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §1>§(param1:DisplayObject, param2:String = null) : §%!M§
      {
         var _loc3_:Vector.<§%!M§> = this.§-d§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §=j§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§%!M§> = null;
         var _loc3_:int = 0;
         if(this.§1>§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§-d§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != § else§.§&!2§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!B§;
      }
      
      public function get §?`§() : Vector.<§%!M§>
      {
         return this.§ !G§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,>§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"7§;
      }
   }
}
