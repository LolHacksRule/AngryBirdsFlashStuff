package starling.events
{
   import §1!Y§.DisplayObject;
   import §1!Y§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §5V§:String = "touch";
       
      
      private var §7!V§:Vector.<§?!!§>;
      
      private var §<3§:Boolean;
      
      private var §9S§:Boolean;
      
      private var § null§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§?!!§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§7!V§ = !!param2 ? param2 : new Vector.<§?!!§>(0);
         this.§<3§ = param3;
         this.§9S§ = param4;
         this.§ null§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§ null§)
            {
               this.§ null§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §+!_§(param1:DisplayObject, param2:String = null) : Vector.<§?!!§>
      {
         var _loc6_:§?!!§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§?!!§> = new Vector.<§?!!§>(0);
         var _loc4_:int = this.§7!V§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§7!V§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function § 4§(param1:DisplayObject, param2:String = null) : §?!!§
      {
         var _loc3_:Vector.<§?!!§> = this.§+!_§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §66§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§?!!§> = null;
         var _loc3_:int = 0;
         if(this.§ 4§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§+!_§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §<!O§.§&!h§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§ null§;
      }
      
      public function get §0"&§() : Vector.<§?!!§>
      {
         return this.§7!V§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<3§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§9S§;
      }
   }
}
