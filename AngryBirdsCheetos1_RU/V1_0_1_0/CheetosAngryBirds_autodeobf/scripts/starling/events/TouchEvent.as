package starling.events
{
   import §&!5§.DisplayObject;
   import §&!5§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §0![§:String = "touch";
       
      
      private var §5!-§:Vector.<§#!W§>;
      
      private var §3x§:Boolean;
      
      private var § K§:Boolean;
      
      private var §9!N§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§#!W§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§5!-§ = !!param2 ? param2 : new Vector.<§#!W§>(0);
         this.§3x§ = param3;
         this.§ K§ = param4;
         this.§9!N§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§9!N§)
            {
               this.§9!N§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §7K§(param1:DisplayObject, param2:String = null) : Vector.<§#!W§>
      {
         var _loc6_:§#!W§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§#!W§> = new Vector.<§#!W§>(0);
         var _loc4_:int = this.§5!-§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§5!-§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function § %§(param1:DisplayObject, param2:String = null) : §#!W§
      {
         var _loc3_:Vector.<§#!W§> = this.§7K§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §'!U§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§#!W§> = null;
         var _loc3_:int = 0;
         if(this.§ %§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§7K§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §;n§.§9!,§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§9!N§;
      }
      
      public function get §+v§() : Vector.<§#!W§>
      {
         return this.§5!-§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3x§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ K§;
      }
   }
}
