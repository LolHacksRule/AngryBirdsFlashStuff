package starling.events
{
   import §^I§.DisplayObject;
   import §^I§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §%!r§:String = "touch";
       
      
      private var §,"1§:Vector.<§-!y§>;
      
      private var §4"0§:Boolean;
      
      private var §&!0§:Boolean;
      
      private var §7!S§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§-!y§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§,"1§ = !!param2 ? param2 : new Vector.<§-!y§>(0);
         this.§4"0§ = param3;
         this.§&!0§ = param4;
         this.§7!S§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§7!S§)
            {
               this.§7!S§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §>!D§(param1:DisplayObject, param2:String = null) : Vector.<§-!y§>
      {
         var _loc6_:§-!y§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§-!y§> = new Vector.<§-!y§>(0);
         var _loc4_:int = this.§,"1§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§,"1§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §5!J§(param1:DisplayObject, param2:String = null) : §-!y§
      {
         var _loc3_:Vector.<§-!y§> = this.§>!D§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §[9§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§-!y§> = null;
         var _loc3_:int = 0;
         if(this.§5!J§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§>!D§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §-B§.§>!A§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!S§;
      }
      
      public function get § !m§() : Vector.<§-!y§>
      {
         return this.§,"1§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§4"0§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§&!0§;
      }
   }
}
