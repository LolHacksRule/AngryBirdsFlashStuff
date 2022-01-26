package starling.events
{
   import §[=§.DisplayObject;
   import §[=§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §8!!§:String = "touch";
       
      
      private var §4i§:Vector.<§ Y§>;
      
      private var §`y§:Boolean;
      
      private var §#2§:Boolean;
      
      private var §@M§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§ Y§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§4i§ = !!param2 ? param2 : new Vector.<§ Y§>(0);
         this.§`y§ = param3;
         this.§#2§ = param4;
         this.§@M§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§@M§)
            {
               this.§@M§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §7X§(param1:DisplayObject, param2:String = null) : Vector.<§ Y§>
      {
         var _loc6_:§ Y§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§ Y§> = new Vector.<§ Y§>(0);
         var _loc4_:int = this.§4i§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§4i§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §0Z§(param1:DisplayObject, param2:String = null) : § Y§
      {
         var _loc3_:Vector.<§ Y§> = this.§7X§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §3L§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§ Y§> = null;
         var _loc3_:int = 0;
         if(this.§0Z§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§7X§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §9T§.§"d§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§@M§;
      }
      
      public function get §4,§() : Vector.<§ Y§>
      {
         return this.§4i§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#2§;
      }
   }
}
