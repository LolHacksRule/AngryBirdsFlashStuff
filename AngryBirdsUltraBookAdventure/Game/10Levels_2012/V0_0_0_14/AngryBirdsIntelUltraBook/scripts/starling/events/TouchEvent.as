package starling.events
{
   import §9E§.DisplayObject;
   import §9E§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §`!t§:String = "touch";
       
      
      private var §?!0§:Vector.<§<Q§>;
      
      private var §-!I§:Boolean;
      
      private var §42§:Boolean;
      
      private var §3!k§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§<Q§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§?!0§ = !!param2 ? param2 : new Vector.<§<Q§>(0);
         this.§-!I§ = param3;
         this.§42§ = param4;
         this.§3!k§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§3!k§)
            {
               this.§3!k§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §0q§(param1:DisplayObject, param2:String = null) : Vector.<§<Q§>
      {
         var _loc6_:§<Q§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§<Q§> = new Vector.<§<Q§>(0);
         var _loc4_:int = this.§?!0§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§?!0§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §+?§(param1:DisplayObject, param2:String = null) : §<Q§
      {
         var _loc3_:Vector.<§<Q§> = this.§0q§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §9!<§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§<Q§> = null;
         var _loc3_:int = 0;
         if(this.§+?§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§0q§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §=<§.§<%§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§3!k§;
      }
      
      public function get §;z§() : Vector.<§<Q§>
      {
         return this.§?!0§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!I§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§42§;
      }
   }
}
