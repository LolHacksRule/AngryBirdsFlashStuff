package starling.events
{
   import §]&§.DisplayObject;
   import §]&§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2"'§:String = "touch";
       
      
      private var §1i§:Vector.<§5#§>;
      
      private var §0"#§:Boolean;
      
      private var §=!F§:Boolean;
      
      private var §?!y§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§5#§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§1i§ = !!param2 ? param2 : new Vector.<§5#§>(0);
         this.§0"#§ = param3;
         this.§=!F§ = param4;
         this.§?!y§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§?!y§)
            {
               this.§?!y§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §"!e§(param1:DisplayObject, param2:String = null) : Vector.<§5#§>
      {
         var _loc6_:§5#§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§5#§> = new Vector.<§5#§>(0);
         var _loc4_:int = this.§1i§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§1i§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §#r§(param1:DisplayObject, param2:String = null) : §5#§
      {
         var _loc3_:Vector.<§5#§> = this.§"!e§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §%"@§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§5#§> = null;
         var _loc3_:int = 0;
         if(this.§#r§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§"!e§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §1!Q§.§^5§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§?!y§;
      }
      
      public function get §5"9§() : Vector.<§5#§>
      {
         return this.§1i§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§0"#§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§=!F§;
      }
   }
}
