package starling.events
{
   import §case §.DisplayObject;
   import §case §.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §_-AB§:String = "touch";
       
      
      private var §_-0-e§:Vector.<§_-QO§>;
      
      private var §_-2Z§:Boolean;
      
      private var §_-p9§:Boolean;
      
      private var §_-HL§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§_-QO§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§_-0-e§ = !!param2 ? param2 : new Vector.<§_-QO§>(0);
         this.§_-2Z§ = param3;
         this.§_-p9§ = param4;
         this.§_-HL§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§_-HL§)
            {
               this.§_-HL§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §_-BU§(param1:DisplayObject, param2:String = null) : Vector.<§_-QO§>
      {
         var _loc6_:§_-QO§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§_-QO§> = new Vector.<§_-QO§>(0);
         var _loc4_:int = this.§_-0-e§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§_-0-e§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §_-Nc§(param1:DisplayObject, param2:String = null) : §_-QO§
      {
         var _loc3_:Vector.<§_-QO§> = this.§_-BU§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §_-oe§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§_-QO§> = null;
         var _loc3_:int = 0;
         if(this.§_-Nc§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§_-BU§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §_-NE§.§_-7A§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-HL§;
      }
      
      public function get §_-7u§() : Vector.<§_-QO§>
      {
         return this.§_-0-e§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-2Z§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-p9§;
      }
   }
}
