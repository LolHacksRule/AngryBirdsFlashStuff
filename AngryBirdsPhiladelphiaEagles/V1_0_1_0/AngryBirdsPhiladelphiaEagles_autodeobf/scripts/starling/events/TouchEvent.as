package starling.events
{
   import §3H§.DisplayObject;
   import §3H§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §%!'§:String = "touch";
       
      
      private var §'!!§:Vector.<§>w§>;
      
      private var §?!0§:Boolean;
      
      private var §<h§:Boolean;
      
      private var §1O§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§>w§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§'!!§ = !!param2 ? param2 : new Vector.<§>w§>(0);
         this.§?!0§ = param3;
         this.§<h§ = param4;
         this.§1O§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§1O§)
            {
               this.§1O§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §4l§(param1:DisplayObject, param2:String = null) : Vector.<§>w§>
      {
         var _loc6_:§>w§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§>w§> = new Vector.<§>w§>(0);
         var _loc4_:int = this.§'!!§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§'!!§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §,W§(param1:DisplayObject, param2:String = null) : §>w§
      {
         var _loc3_:Vector.<§>w§> = this.§4l§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §`_§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§>w§> = null;
         var _loc3_:int = 0;
         if(this.§,W§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§4l§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §&3§.§9!>§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§1O§;
      }
      
      public function get §?g§() : Vector.<§>w§>
      {
         return this.§'!!§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§?!0§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<h§;
      }
   }
}
