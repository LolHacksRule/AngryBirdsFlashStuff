package starling.events
{
   import §4"@§.DisplayObject;
   import §4"@§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §3Q§:String = "touch";
       
      
      private var §!b§:Vector.<§4"=§>;
      
      private var §-!J§:Boolean;
      
      private var §0!X§:Boolean;
      
      private var §`!i§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§4"=§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§!b§ = !!param2 ? param2 : new Vector.<§4"=§>(0);
         this.§-!J§ = param3;
         this.§0!X§ = param4;
         this.§`!i§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§`!i§)
            {
               this.§`!i§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §%" §(param1:DisplayObject, param2:String = null) : Vector.<§4"=§>
      {
         var _loc6_:§4"=§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§4"=§> = new Vector.<§4"=§>(0);
         var _loc4_:int = this.§!b§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§!b§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §%s§(param1:DisplayObject, param2:String = null) : §4"=§
      {
         var _loc3_:Vector.<§4"=§> = this.§%" §(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §+M§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§4"=§> = null;
         var _loc3_:int = 0;
         if(this.§%s§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§%" §(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §+0§.§-O§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!i§;
      }
      
      public function get §`6§() : Vector.<§4"=§>
      {
         return this.§!b§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!J§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§0!X§;
      }
   }
}
