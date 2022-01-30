package starling.events
{
   import §7q§.DisplayObject;
   import §7q§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §!"8§:String = "touch";
       
      
      private var §%!6§:Vector.<§,"0§>;
      
      private var §^z§:Boolean;
      
      private var § s§:Boolean;
      
      private var §9!f§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§,"0§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§%!6§ = !!param2 ? param2 : new Vector.<§,"0§>(0);
         this.§^z§ = param3;
         this.§ s§ = param4;
         this.§9!f§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§9!f§)
            {
               this.§9!f§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §1d§(param1:DisplayObject, param2:String = null) : Vector.<§,"0§>
      {
         var _loc6_:§,"0§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§,"0§> = new Vector.<§,"0§>(0);
         var _loc4_:int = this.§%!6§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§%!6§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §%"6§(param1:DisplayObject, param2:String = null) : §,"0§
      {
         var _loc3_:Vector.<§,"0§> = this.§1d§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §@C§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§,"0§> = null;
         var _loc3_:int = 0;
         if(this.§%"6§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§1d§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §[!k§.§>O§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!f§;
      }
      
      public function get §=Z§() : Vector.<§,"0§>
      {
         return this.§%!6§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ s§;
      }
   }
}
