package starling.events
{
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §77§:String = "touch";
       
      
      private var §#!y§:Vector.<§4!#§>;
      
      private var §,!Z§:Boolean;
      
      private var §;!r§:Boolean;
      
      private var §!_§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4!#§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§#!y§ = !!param2 ? param2 : new Vector.<§4!#§>(0);
         this.§,!Z§ = param3;
         this.§;!r§ = param4;
         this.§!_§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§!_§)
            {
               this.§!_§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §!",§(param1:DisplayObject, param2:String = null) : Vector.<§4!#§>
      {
         var _loc6_:§4!#§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§4!#§> = new Vector.<§4!#§>(0);
         var _loc4_:int = this.§#!y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§#!y§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §?5§(param1:DisplayObject, param2:String = null) : §4!#§
      {
         var _loc3_:Vector.<§4!#§> = this.§!",§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §6!p§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§4!#§> = null;
         var _loc3_:int = 0;
         if(this.§?5§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§!",§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §"",§.§5!=§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§!_§;
      }
      
      public function get §,q§() : Vector.<§4!#§>
      {
         return this.§#!y§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,!Z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!r§;
      }
   }
}
