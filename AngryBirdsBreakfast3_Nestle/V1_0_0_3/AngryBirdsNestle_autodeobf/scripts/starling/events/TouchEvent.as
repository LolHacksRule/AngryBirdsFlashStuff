package starling.events
{
   import §0!Y§.DisplayObject;
   import §0!Y§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §88§:String = "touch";
       
      
      private var §1y§:Vector.<§<P§>;
      
      private var §6E§:Boolean;
      
      private var §"e§:Boolean;
      
      private var §7!k§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§<P§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§1y§ = !!param2 ? param2 : new Vector.<§<P§>(0);
         this.§6E§ = param3;
         this.§"e§ = param4;
         this.§7!k§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§7!k§)
            {
               this.§7!k§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §0!e§(param1:DisplayObject, param2:String = null) : Vector.<§<P§>
      {
         var _loc6_:§<P§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§<P§> = new Vector.<§<P§>(0);
         var _loc4_:int = this.§1y§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§1y§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §2W§(param1:DisplayObject, param2:String = null) : §<P§
      {
         var _loc3_:Vector.<§<P§> = this.§0!e§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §0! §(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§<P§> = null;
         var _loc3_:int = 0;
         if(this.§2W§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§0!e§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §2d§.§&W§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§7!k§;
      }
      
      public function get §+#§() : Vector.<§<P§>
      {
         return this.§1y§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6E§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"e§;
      }
   }
}
