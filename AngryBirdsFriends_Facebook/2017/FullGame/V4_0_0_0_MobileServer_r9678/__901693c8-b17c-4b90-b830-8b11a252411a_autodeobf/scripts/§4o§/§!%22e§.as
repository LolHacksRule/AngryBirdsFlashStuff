package §4o§
{
   import flash.utils.Dictionary;
   
   public class §!"e§
   {
       
      
      private var §?#G§:Dictionary;
      
      public function §!"e§()
      {
         this.§?#G§ = new Dictionary();
         super();
      }
      
      public function §"$§(param1:§8"1§, param2:String) : void
      {
         var _loc3_:Vector.<§8"1§> = this.§?#G§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§8"1§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§?#G§[param2] = _loc3_;
      }
      
      public function §7!`§(param1:§8"1§, param2:String) : void
      {
         var _loc3_:Vector.<§8"1§> = this.§?#G§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§?#G§[param2] = _loc3_;
      }
      
      public function §?O§(param1:§3H§) : void
      {
         var _loc3_:Vector.<§8"1§> = null;
         var _loc4_:int = 0;
         var _loc5_:§8"1§ = null;
         var _loc2_:Vector.<§8"1§> = this.§?#G§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§ N§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
