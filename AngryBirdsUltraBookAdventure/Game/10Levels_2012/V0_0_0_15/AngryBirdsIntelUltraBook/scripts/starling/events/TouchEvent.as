package starling.events
{
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-ed§:String = "touch";
       
      
      private var §_-Lx§:Vector.<§_-06V§>;
      
      private var §_-8a§:Boolean;
      
      private var §_-05K§:Boolean;
      
      private var §_-0CR§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-06V§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-Lx§ = !!param2 ? param2 : new Vector.<§_-06V§>(0);
         this.§_-8a§ = param3;
         this.§_-05K§ = param4;
         this.§_-0CR§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§_-0CR§)
            {
               this.§_-0CR§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §_-y4§(param1:DisplayObject, param2:String = null) : Vector.<§_-06V§>
      {
         var _loc6_:§_-06V§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§_-06V§> = new Vector.<§_-06V§>(0);
         var _loc4_:int = this.§_-Lx§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§_-Lx§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §_-MV§(param1:DisplayObject, param2:String = null) : §_-06V§
      {
         var _loc3_:Vector.<§_-06V§> = this.§_-y4§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §_-Se§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§_-06V§> = null;
         var _loc3_:int = 0;
         if(this.§_-MV§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§_-y4§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §_-tW§.§_-0Cc§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-0CR§;
      }
      
      public function get §_-zX§() : Vector.<§_-06V§>
      {
         return this.§_-Lx§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-8a§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-05K§;
      }
   }
}
