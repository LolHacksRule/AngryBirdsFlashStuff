package starling.events
{
   import § !K§.DisplayObject;
   import § !K§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §6K§:String = "touch";
       
      
      private var §2!,§:Vector.<§;!J§>;
      
      private var §9!K§:Boolean;
      
      private var §,![§:Boolean;
      
      private var §-!1§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§;!J§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§2!,§ = !!param2 ? param2 : new Vector.<§;!J§>(0);
         this.§9!K§ = param3;
         this.§,![§ = param4;
         this.§-!1§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§-!1§)
            {
               this.§-!1§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@9§(param1:DisplayObject, param2:String = null) : Vector.<§;!J§>
      {
         var _loc6_:§;!J§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§;!J§> = new Vector.<§;!J§>(0);
         var _loc4_:int = this.§2!,§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§2!,§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §&!7§(param1:DisplayObject, param2:String = null) : §;!J§
      {
         var _loc3_:Vector.<§;!J§> = this.§@9§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §5!1§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§;!J§> = null;
         var _loc3_:int = 0;
         if(this.§&!7§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@9§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §9!%§.§^!#§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§-!1§;
      }
      
      public function get §5@§() : Vector.<§;!J§>
      {
         return this.§2!,§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§9!K§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§,![§;
      }
   }
}
