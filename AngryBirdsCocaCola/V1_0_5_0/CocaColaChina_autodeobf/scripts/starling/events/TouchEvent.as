package starling.events
{
   import §<!$§.DisplayObject;
   import §<!$§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §[R§:String = "touch";
       
      
      private var § u§:Vector.<§?r§>;
      
      private var §&2§:Boolean;
      
      private var §@y§:Boolean;
      
      private var §#d§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§?r§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§ u§ = !!param2 ? param2 : new Vector.<§?r§>(0);
         this.§&2§ = param3;
         this.§@y§ = param4;
         this.§#d§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§#d§)
            {
               this.§#d§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §&W§(param1:DisplayObject, param2:String = null) : Vector.<§?r§>
      {
         var _loc6_:§?r§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§?r§> = new Vector.<§?r§>(0);
         var _loc4_:int = this.§ u§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§ u§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §`o§(param1:DisplayObject, param2:String = null) : §?r§
      {
         var _loc3_:Vector.<§?r§> = this.§&W§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §@!7§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§?r§> = null;
         var _loc3_:int = 0;
         if(this.§`o§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§&W§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §&!L§.§"Z§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§#d§;
      }
      
      public function get §`!E§() : Vector.<§?r§>
      {
         return this.§ u§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§&2§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§@y§;
      }
   }
}
