package starling.events
{
   import §1!$§.DisplayObject;
   import §1!$§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2t§:String = "touch";
       
      
      private var §7p§:Vector.<§6!V§>;
      
      private var §5a§:Boolean;
      
      private var §]V§:Boolean;
      
      private var §=!o§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§6!V§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§7p§ = !!param2 ? param2 : new Vector.<§6!V§>(0);
         this.§5a§ = param3;
         this.§]V§ = param4;
         this.§=!o§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§=!o§)
            {
               this.§=!o§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §4_§(param1:DisplayObject, param2:String = null) : Vector.<§6!V§>
      {
         var _loc6_:§6!V§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§6!V§> = new Vector.<§6!V§>(0);
         var _loc4_:int = this.§7p§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§7p§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §&f§(param1:DisplayObject, param2:String = null) : §6!V§
      {
         var _loc3_:Vector.<§6!V§> = this.§4_§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §,-§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§6!V§> = null;
         var _loc3_:int = 0;
         if(this.§&f§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§4_§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §"U§.§&!I§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§=!o§;
      }
      
      public function get §&"E§() : Vector.<§6!V§>
      {
         return this.§7p§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5a§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]V§;
      }
   }
}
