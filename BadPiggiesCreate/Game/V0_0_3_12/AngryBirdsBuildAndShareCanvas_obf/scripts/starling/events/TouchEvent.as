package starling.events
{
   import §@!i§.DisplayObject;
   import §@!i§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §-!I§:String = "touch";
       
      
      private var §6[§:Vector.<§6!,§>;
      
      private var §=b§:Boolean;
      
      private var §%!f§:Boolean;
      
      private var §`0§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§6!,§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§6[§ = !!param2 ? param2 : new Vector.<§6!,§>(0);
         this.§=b§ = param3;
         this.§%!f§ = param4;
         this.§`0§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§`0§)
            {
               this.§`0§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §6l§(param1:DisplayObject, param2:String = null) : Vector.<§6!,§>
      {
         var _loc6_:§6!,§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§6!,§> = new Vector.<§6!,§>(0);
         var _loc4_:int = this.§6[§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§6[§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §""+§(param1:DisplayObject, param2:String = null) : §6!,§
      {
         var _loc3_:Vector.<§6!,§> = this.§6l§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §-d§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§6!,§> = null;
         var _loc3_:int = 0;
         if(this.§""+§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§6l§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §[b§.§%"%§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§`0§;
      }
      
      public function get §,">§() : Vector.<§6!,§>
      {
         return this.§6[§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§=b§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!f§;
      }
   }
}
