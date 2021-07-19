package starling.events
{
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §;!1§:String = "touch";
       
      
      private var §34§:Vector.<§[#W§>;
      
      private var §3v§:Boolean;
      
      private var §%"S§:Boolean;
      
      private var §`#K§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§[#W§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§34§ = !!param2 ? param2 : new Vector.<§[#W§>(0);
         this.§3v§ = param3;
         this.§%"S§ = param4;
         this.§`#K§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§`#K§)
            {
               this.§`#K§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §&!N§(param1:DisplayObject, param2:String = null) : Vector.<§[#W§>
      {
         var _loc6_:§[#W§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§[#W§> = new Vector.<§[#W§>(0);
         var _loc4_:int = this.§34§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§34§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §>!6§(param1:DisplayObject, param2:String = null) : §[#W§
      {
         var _loc3_:Vector.<§[#W§> = this.§&!N§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §79§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§[#W§> = null;
         var _loc3_:int = 0;
         if(this.§>!6§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§&!N§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §5X§.§"!u§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§`#K§;
      }
      
      public function get §?#A§() : Vector.<§[#W§>
      {
         return this.§34§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3v§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%"S§;
      }
   }
}
