package starling.events
{
   import §;t§.DisplayObject;
   import §;t§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §'! §:String = "touch";
       
      
      private var §3!3§:Vector.<§3B§>;
      
      private var §-!`§:Boolean;
      
      private var §,!X§:Boolean;
      
      private var §'`§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§3B§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§3!3§ = !!param2 ? param2 : new Vector.<§3B§>(0);
         this.§-!`§ = param3;
         this.§,!X§ = param4;
         this.§'`§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§'`§)
            {
               this.§'`§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §'l§(param1:DisplayObject, param2:String = null) : Vector.<§3B§>
      {
         var _loc6_:§3B§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§3B§> = new Vector.<§3B§>(0);
         var _loc4_:int = this.§3!3§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§3!3§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §,2§(param1:DisplayObject, param2:String = null) : §3B§
      {
         var _loc3_:Vector.<§3B§> = this.§'l§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §4B§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§3B§> = null;
         var _loc3_:int = 0;
         if(this.§,2§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§'l§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §><§.§1e§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§'`§;
      }
      
      public function get §!!Z§() : Vector.<§3B§>
      {
         return this.§3!3§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!`§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§,!X§;
      }
   }
}
