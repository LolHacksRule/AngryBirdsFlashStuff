package starling.events
{
   import §2!g§.DisplayObject;
   import §2!g§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §7`§:String = "touch";
       
      
      private var §;1§:Vector.<§'t§>;
      
      private var §4H§:Boolean;
      
      private var §0>§:Boolean;
      
      private var §-w§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§'t§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§;1§ = !!param2 ? param2 : new Vector.<§'t§>(0);
         this.§4H§ = param3;
         this.§0>§ = param4;
         this.§-w§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§-w§)
            {
               this.§-w§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §&L§(param1:DisplayObject, param2:String = null) : Vector.<§'t§>
      {
         var _loc6_:§'t§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§'t§> = new Vector.<§'t§>(0);
         var _loc4_:int = this.§;1§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§;1§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §>!Y§(param1:DisplayObject, param2:String = null) : §'t§
      {
         var _loc3_:Vector.<§'t§> = this.§&L§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §#a§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§'t§> = null;
         var _loc3_:int = 0;
         if(this.§>!Y§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§&L§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §&!'§.§-u§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§-w§;
      }
      
      public function get §&!&§() : Vector.<§'t§>
      {
         return this.§;1§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§4H§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§0>§;
      }
   }
}
