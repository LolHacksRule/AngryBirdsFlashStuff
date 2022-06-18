package starling.events
{
   import §1!A§.DisplayObject;
   import §1!A§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §<!4§:String = "touch";
       
      
      private var §2j§:Vector.<§0+§>;
      
      private var §>#§:Boolean;
      
      private var §^h§:Boolean;
      
      private var §#_§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§0+§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§2j§ = !!param2 ? param2 : new Vector.<§0+§>(0);
         this.§>#§ = param3;
         this.§^h§ = param4;
         this.§#_§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§#_§)
            {
               this.§#_§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §4!$§(param1:DisplayObject, param2:String = null) : Vector.<§0+§>
      {
         var _loc6_:§0+§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§0+§> = new Vector.<§0+§>(0);
         var _loc4_:int = this.§2j§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§2j§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §#?§(param1:DisplayObject, param2:String = null) : §0+§
      {
         var _loc3_:Vector.<§0+§> = this.§4!$§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §#!@§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§0+§> = null;
         var _loc3_:int = 0;
         if(this.§#?§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§4!$§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §;'§.§[U§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§#_§;
      }
      
      public function get §[a§() : Vector.<§0+§>
      {
         return this.§2j§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>#§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^h§;
      }
   }
}
