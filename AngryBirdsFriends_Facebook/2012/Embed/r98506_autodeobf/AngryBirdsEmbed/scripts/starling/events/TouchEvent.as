package starling.events
{
   import §;q§.DisplayObject;
   import §;q§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §5!J§:String = "touch";
       
      
      private var §6h§:Vector.<§"1§>;
      
      private var § var§:Boolean;
      
      private var §7S§:Boolean;
      
      private var §4v§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§"1§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§6h§ = !!param2 ? param2 : new Vector.<§"1§>(0);
         this.§ var§ = param3;
         this.§7S§ = param4;
         this.§4v§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§4v§)
            {
               this.§4v§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §2]§(param1:DisplayObject, param2:String = null) : Vector.<§"1§>
      {
         var _loc6_:§"1§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§"1§> = new Vector.<§"1§>(0);
         var _loc4_:int = this.§6h§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§6h§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function § !!§(param1:DisplayObject, param2:String = null) : §"1§
      {
         var _loc3_:Vector.<§"1§> = this.§2]§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §`u§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§"1§> = null;
         var _loc3_:int = 0;
         if(this.§ !!§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§2]§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §0!!§.§ #§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§4v§;
      }
      
      public function get §=c§() : Vector.<§"1§>
      {
         return this.§6h§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§ var§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§7S§;
      }
   }
}
