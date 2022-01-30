package starling.events
{
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §1C§:String = "touch";
       
      
      private var §'<§:Vector.<§,s§>;
      
      private var §5!n§:Boolean;
      
      private var §>f§:Boolean;
      
      private var §-Q§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§,s§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§'<§ = !!param2 ? param2 : new Vector.<§,s§>(0);
         this.§5!n§ = param3;
         this.§>f§ = param4;
         this.§-Q§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§-Q§)
            {
               this.§-Q§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §'[§(param1:DisplayObject, param2:String = null) : Vector.<§,s§>
      {
         var _loc6_:§,s§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§,s§> = new Vector.<§,s§>(0);
         var _loc4_:int = this.§'<§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§'<§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function § var§(param1:DisplayObject, param2:String = null) : §,s§
      {
         var _loc3_:Vector.<§,s§> = this.§'[§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §]W§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§,s§> = null;
         var _loc3_:int = 0;
         if(this.§ var§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§'[§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §21§.§<w§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§-Q§;
      }
      
      public function get §5V§() : Vector.<§,s§>
      {
         return this.§'<§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5!n§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>f§;
      }
   }
}
