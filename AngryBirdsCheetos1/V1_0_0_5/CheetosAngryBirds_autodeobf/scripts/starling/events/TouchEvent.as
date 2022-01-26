package starling.events
{
   import §!!R§.DisplayObject;
   import §!!R§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §[m§:String = "touch";
       
      
      private var §6H§:Vector.<§4F§>;
      
      private var §3!O§:Boolean;
      
      private var §]!"§:Boolean;
      
      private var §5!'§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4F§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§6H§ = !!param2 ? param2 : new Vector.<§4F§>(0);
         this.§3!O§ = param3;
         this.§]!"§ = param4;
         this.§5!'§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§5!'§)
            {
               this.§5!'§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §'X§(param1:DisplayObject, param2:String = null) : Vector.<§4F§>
      {
         var _loc6_:§4F§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§4F§> = new Vector.<§4F§>(0);
         var _loc4_:int = this.§6H§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§6H§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §<q§(param1:DisplayObject, param2:String = null) : §4F§
      {
         var _loc3_:Vector.<§4F§> = this.§'X§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §>6§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§4F§> = null;
         var _loc3_:int = 0;
         if(this.§<q§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§'X§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §+G§.§<N§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§5!'§;
      }
      
      public function get §0w§() : Vector.<§4F§>
      {
         return this.§6H§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3!O§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]!"§;
      }
   }
}
