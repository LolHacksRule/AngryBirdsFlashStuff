package starling.events
{
   import §1!&§.DisplayObject;
   import §1!&§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §@!;§:String = "touch";
       
      
      private var §>a§:Vector.<§1B§>;
      
      private var §7F§:Boolean;
      
      private var §^!5§:Boolean;
      
      private var §const§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§1B§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§>a§ = Boolean(param2) ? param2 : new Vector.<§1B§>(0);
         this.§7F§ = param3;
         this.§^!5§ = param4;
         this.§const§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§const§)
            {
               this.§const§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §!!K§(param1:DisplayObject, param2:String = null) : Vector.<§1B§>
      {
         var _loc6_:§1B§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§1B§> = new Vector.<§1B§>(0);
         var _loc4_:int = this.§>a§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = this.§>a§[_loc5_];
            _loc7_ = _loc6_.target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §2r§(param1:DisplayObject, param2:String = null) : §1B§
      {
         var _loc3_:Vector.<§1B§> = this.§!!K§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §]!@§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§1B§> = null;
         var _loc3_:int = 0;
         if(this.§2r§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§!!K§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §0M§.§!!C§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§const§;
      }
      
      public function get § !"§() : Vector.<§1B§>
      {
         return this.§>a§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§7F§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!5§;
      }
   }
}
