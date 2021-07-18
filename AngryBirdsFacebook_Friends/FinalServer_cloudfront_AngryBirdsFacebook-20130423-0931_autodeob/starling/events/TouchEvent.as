package starling.events
{
   import §'!6§.DisplayObject;
   import §'!6§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §<!M§:String = "touch";
       
      
      private var §^f§:Vector.<§;!G§>;
      
      private var §`"Y§:Boolean;
      
      private var §>!Q§:Boolean;
      
      private var §7!y§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;!G§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§^f§ = !!param2 ? param2 : new Vector.<§;!G§>(0);
         this.§`"Y§ = param3;
         this.§>!Q§ = param4;
         this.§7!y§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§7!y§)
            {
               this.§7!y§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §&F§(param1:DisplayObject, param2:String = null) : Vector.<§;!G§>
      {
         var _loc6_:§;!G§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§;!G§> = new Vector.<§;!G§>(0);
         var _loc4_:int = this.§^f§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§^f§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §=+§(param1:DisplayObject, param2:String = null) : §;!G§
      {
         var _loc3_:Vector.<§;!G§> = this.§&F§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §4g§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§;!G§> = null;
         var _loc3_:int = 0;
         if(this.§=+§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§&F§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §'! §.§2!3§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!y§;
      }
      
      public function get §+$§() : Vector.<§;!G§>
      {
         return this.§^f§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`"Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>!Q§;
      }
   }
}
