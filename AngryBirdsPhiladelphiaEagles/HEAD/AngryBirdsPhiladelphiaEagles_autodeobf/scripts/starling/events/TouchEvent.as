package starling.events
{
   import §<!N§.DisplayObject;
   import §<!N§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §+2§:String = "touch";
       
      
      private var §6j§:Vector.<§<p§>;
      
      private var § each§:Boolean;
      
      private var §<P§:Boolean;
      
      private var §=O§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§<p§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§6j§ = !!param2 ? param2 : new Vector.<§<p§>(0);
         this.§ each§ = param3;
         this.§<P§ = param4;
         this.§=O§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§=O§)
            {
               this.§=O§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §<!?§(param1:DisplayObject, param2:String = null) : Vector.<§<p§>
      {
         var _loc6_:§<p§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§<p§> = new Vector.<§<p§>(0);
         var _loc4_:int = this.§6j§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§6j§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §=!§(param1:DisplayObject, param2:String = null) : §<p§
      {
         var _loc3_:Vector.<§<p§> = this.§<!?§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §'y§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§<p§> = null;
         var _loc3_:int = 0;
         if(this.§=!§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§<!?§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §5r§.§@!?§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§=O§;
      }
      
      public function get §[=§() : Vector.<§<p§>
      {
         return this.§6j§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§ each§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<P§;
      }
   }
}
