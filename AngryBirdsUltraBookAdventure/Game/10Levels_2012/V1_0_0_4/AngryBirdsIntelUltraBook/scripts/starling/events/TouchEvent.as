package starling.events
{
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2!6§:String = "touch";
       
      
      private var §5!A§:Vector.<§`i§>;
      
      private var §"s§:Boolean;
      
      private var §%!P§:Boolean;
      
      private var §#5§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§`i§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§5!A§ = !!param2 ? param2 : new Vector.<§`i§>(0);
         this.§"s§ = param3;
         this.§%!P§ = param4;
         this.§#5§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§#5§)
            {
               this.§#5§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §=!R§(param1:DisplayObject, param2:String = null) : Vector.<§`i§>
      {
         var _loc6_:§`i§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§`i§> = new Vector.<§`i§>(0);
         var _loc4_:int = this.§5!A§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§5!A§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §8!p§(param1:DisplayObject, param2:String = null) : §`i§
      {
         var _loc3_:Vector.<§`i§> = this.§=!R§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §9[§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§`i§> = null;
         var _loc3_:int = 0;
         if(this.§8!p§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§=!R§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §;@§.§>!q§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§#5§;
      }
      
      public function get §2!u§() : Vector.<§`i§>
      {
         return this.§5!A§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"s§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!P§;
      }
   }
}
