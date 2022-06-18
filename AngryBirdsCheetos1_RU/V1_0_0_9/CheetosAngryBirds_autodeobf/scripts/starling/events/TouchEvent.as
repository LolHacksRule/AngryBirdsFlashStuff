package starling.events
{
   import §7u§.DisplayObject;
   import §7u§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §>W§:String = "touch";
       
      
      private var § T§:Vector.<§2!P§>;
      
      private var §;q§:Boolean;
      
      private var §#&§:Boolean;
      
      private var §1!T§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§2!P§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§ T§ = !!param2 ? param2 : new Vector.<§2!P§>(0);
         this.§;q§ = param3;
         this.§#&§ = param4;
         this.§1!T§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§1!T§)
            {
               this.§1!T§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §&8§(param1:DisplayObject, param2:String = null) : Vector.<§2!P§>
      {
         var _loc6_:§2!P§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§2!P§> = new Vector.<§2!P§>(0);
         var _loc4_:int = this.§ T§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§ T§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §1!M§(param1:DisplayObject, param2:String = null) : §2!P§
      {
         var _loc3_:Vector.<§2!P§> = this.§&8§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §5b§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§2!P§> = null;
         var _loc3_:int = 0;
         if(this.§1!M§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§&8§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §6x§.§9%§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§1!T§;
      }
      
      public function get §6K§() : Vector.<§2!P§>
      {
         return this.§ T§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§;q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#&§;
      }
   }
}
