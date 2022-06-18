package starling.events
{
   import §;^§.DisplayObject;
   import §;^§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §0!K§:String = "touch";
       
      
      private var §?j§:Vector.<§-B§>;
      
      private var §>'§:Boolean;
      
      private var §8!G§:Boolean;
      
      private var §^!6§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§-B§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§?j§ = !!param2 ? param2 : new Vector.<§-B§>(0);
         this.§>'§ = param3;
         this.§8!G§ = param4;
         this.§^!6§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§^!6§)
            {
               this.§^!6§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §[5§(param1:DisplayObject, param2:String = null) : Vector.<§-B§>
      {
         var _loc6_:§-B§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§-B§> = new Vector.<§-B§>(0);
         var _loc4_:int = this.§?j§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§?j§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §'n§(param1:DisplayObject, param2:String = null) : §-B§
      {
         var _loc3_:Vector.<§-B§> = this.§[5§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §%c§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§-B§> = null;
         var _loc3_:int = 0;
         if(this.§'n§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§[5§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §"!3§.§&!L§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§^!6§;
      }
      
      public function get §34§() : Vector.<§-B§>
      {
         return this.§?j§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§8!G§;
      }
   }
}
