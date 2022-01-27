package starling.events
{
   import §1"s§.DisplayObject;
   import §1"s§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §]N§:String = "touch";
       
      
      private var §""§:Vector.<§#"X§>;
      
      private var §,"C§:Boolean;
      
      private var §7q§:Boolean;
      
      private var §3U§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§#"X§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§""§ = !!param2 ? param2 : new Vector.<§#"X§>(0);
         this.§,"C§ = param3;
         this.§7q§ = param4;
         this.§3U§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§3U§)
            {
               this.§3U§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §;!E§(param1:DisplayObject, param2:String = null) : Vector.<§#"X§>
      {
         var _loc6_:§#"X§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§#"X§> = new Vector.<§#"X§>(0);
         var _loc4_:int = this.§""§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§""§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §]!b§(param1:DisplayObject, param2:String = null) : §#"X§
      {
         var _loc3_:Vector.<§#"X§> = this.§;!E§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §!!@§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§#"X§> = null;
         var _loc3_:int = 0;
         if(this.§]!b§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§;!E§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §;!9§.§,"F§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§3U§;
      }
      
      public function get §#i§() : Vector.<§#"X§>
      {
         return this.§""§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,"C§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§7q§;
      }
   }
}
