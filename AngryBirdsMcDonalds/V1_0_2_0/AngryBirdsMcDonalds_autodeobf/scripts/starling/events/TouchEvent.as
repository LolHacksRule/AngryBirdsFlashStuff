package starling.events
{
   import §5x§.DisplayObject;
   import §5x§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §8i§:String = "touch";
       
      
      private var §2'§:Vector.<§implements§>;
      
      private var §,P§:Boolean;
      
      private var §`6§:Boolean;
      
      private var §"1§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§implements§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§2'§ = !!param2 ? param2 : new Vector.<§implements§>(0);
         this.§,P§ = param3;
         this.§`6§ = param4;
         this.§"1§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§"1§)
            {
               this.§"1§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@!W§(param1:DisplayObject, param2:String = null) : Vector.<§implements§>
      {
         var _loc6_:§implements§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§implements§> = new Vector.<§implements§>(0);
         var _loc4_:int = this.§2'§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§2'§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §;2§(param1:DisplayObject, param2:String = null) : §implements§
      {
         var _loc3_:Vector.<§implements§> = this.§@!W§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §=!P§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§implements§> = null;
         var _loc3_:int = 0;
         if(this.§;2§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@!W§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §?I§.§%!G§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§"1§;
      }
      
      public function get §7!f§() : Vector.<§implements§>
      {
         return this.§2'§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,P§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`6§;
      }
   }
}
