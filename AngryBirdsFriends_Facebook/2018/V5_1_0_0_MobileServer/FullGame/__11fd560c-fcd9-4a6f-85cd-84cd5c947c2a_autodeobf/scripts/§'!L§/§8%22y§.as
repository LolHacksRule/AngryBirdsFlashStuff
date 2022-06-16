package §'!L§
{
   import flash.utils.Dictionary;
   
   public class §8"y§
   {
       
      
      private var §?">§:Dictionary;
      
      public function §8"y§()
      {
         this.§?">§ = new Dictionary();
         super();
      }
      
      public function §4l§(param1:§-$?§, param2:String) : void
      {
         var _loc3_:Vector.<§-$?§> = this.§?">§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§-$?§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§?">§[param2] = _loc3_;
      }
      
      public function §-8§(param1:§-$?§, param2:String) : void
      {
         var _loc3_:Vector.<§-$?§> = this.§?">§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§?">§[param2] = _loc3_;
      }
      
      public function §,2§(param1:§5",§) : void
      {
         var _loc3_:Vector.<§-$?§> = null;
         var _loc4_:int = 0;
         var _loc5_:§-$?§ = null;
         var _loc2_:Vector.<§-$?§> = this.§?">§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§%+§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
