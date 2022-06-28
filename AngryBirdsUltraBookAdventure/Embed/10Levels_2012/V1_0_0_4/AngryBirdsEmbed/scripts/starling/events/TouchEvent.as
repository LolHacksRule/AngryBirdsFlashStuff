package starling.events
{
   import §9W§.DisplayObject;
   import §9W§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §?6§:String = "touch";
       
      
      private var §9!+§:Vector.<§^!@§>;
      
      private var §1]§:Boolean;
      
      private var §`!2§:Boolean;
      
      private var §]!%§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§^!@§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§9!+§ = !!param2 ? param2 : new Vector.<§^!@§>(0);
         this.§1]§ = param3;
         this.§`!2§ = param4;
         this.§]!%§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§]!%§)
            {
               this.§]!%§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@5§(param1:DisplayObject, param2:String = null) : Vector.<§^!@§>
      {
         var _loc6_:§^!@§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§^!@§> = new Vector.<§^!@§>(0);
         var _loc4_:int = this.§9!+§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§9!+§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §';§(param1:DisplayObject, param2:String = null) : §^!@§
      {
         var _loc3_:Vector.<§^!@§> = this.§@5§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §8"§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§^!@§> = null;
         var _loc3_:int = 0;
         if(this.§';§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@5§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §<e§.§4[§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§]!%§;
      }
      
      public function get §]!2§() : Vector.<§^!@§>
      {
         return this.§9!+§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§1]§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`!2§;
      }
   }
}
