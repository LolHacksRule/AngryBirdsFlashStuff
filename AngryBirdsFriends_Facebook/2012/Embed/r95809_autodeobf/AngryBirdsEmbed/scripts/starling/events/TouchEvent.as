package starling.events
{
   import §->§.DisplayObject;
   import §->§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §`Z§:String = "touch";
       
      
      private var §?L§:Vector.<§ K§>;
      
      private var §>v§:Boolean;
      
      private var §4S§:Boolean;
      
      private var §3!9§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§ K§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§?L§ = !!param2 ? param2 : new Vector.<§ K§>(0);
         this.§>v§ = param3;
         this.§4S§ = param4;
         this.§3!9§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§3!9§)
            {
               this.§3!9§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §8x§(param1:DisplayObject, param2:String = null) : Vector.<§ K§>
      {
         var _loc6_:§ K§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§ K§> = new Vector.<§ K§>(0);
         var _loc4_:int = this.§?L§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§?L§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §'k§(param1:DisplayObject, param2:String = null) : § K§
      {
         var _loc3_:Vector.<§ K§> = this.§8x§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §!<§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§ K§> = null;
         var _loc3_:int = 0;
         if(this.§'k§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§8x§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §!E§.§2`§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!9§;
      }
      
      public function get §4_§() : Vector.<§ K§>
      {
         return this.§?L§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>v§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§4S§;
      }
   }
}
