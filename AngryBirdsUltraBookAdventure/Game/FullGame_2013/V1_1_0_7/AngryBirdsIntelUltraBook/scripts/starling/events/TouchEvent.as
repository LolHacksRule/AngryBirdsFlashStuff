package starling.events
{
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §7!L§:String = "touch";
       
      
      private var §4!z§:Vector.<§;K§>;
      
      private var §+!Q§:Boolean;
      
      private var §2-§:Boolean;
      
      private var §>]§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;K§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§4!z§ = !!param2 ? param2 : new Vector.<§;K§>(0);
         this.§+!Q§ = param3;
         this.§2-§ = param4;
         this.§>]§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§>]§)
            {
               this.§>]§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@!s§(param1:DisplayObject, param2:String = null) : Vector.<§;K§>
      {
         var _loc6_:§;K§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§;K§> = new Vector.<§;K§>(0);
         var _loc4_:int = this.§4!z§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§4!z§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §9=§(param1:DisplayObject, param2:String = null) : §;K§
      {
         var _loc3_:Vector.<§;K§> = this.§@!s§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §6!c§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§;K§> = null;
         var _loc3_:int = 0;
         if(this.§9=§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@!s§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §<A§.§2!R§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§>]§;
      }
      
      public function get §&!j§() : Vector.<§;K§>
      {
         return this.§4!z§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!Q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2-§;
      }
   }
}
