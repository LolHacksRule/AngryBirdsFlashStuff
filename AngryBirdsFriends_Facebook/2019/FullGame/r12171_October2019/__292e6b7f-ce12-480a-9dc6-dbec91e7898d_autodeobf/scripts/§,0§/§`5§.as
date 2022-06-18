package §,0§
{
   import flash.utils.Dictionary;
   
   public class §`5§
   {
       
      
      private var §3!Z§:Dictionary;
      
      public function §`5§()
      {
         this.§3!Z§ = new Dictionary();
         super();
      }
      
      public function §!@§(param1:§?h§, param2:String) : void
      {
         var _loc3_:Vector.<§?h§> = this.§3!Z§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§?h§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§3!Z§[param2] = _loc3_;
      }
      
      public function § g§(param1:§?h§, param2:String) : void
      {
         var _loc3_:Vector.<§?h§> = this.§3!Z§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§3!Z§[param2] = _loc3_;
      }
      
      public function §^#K§(param1:§0"0§) : void
      {
         var _loc3_:Vector.<§?h§> = null;
         var _loc4_:int = 0;
         var _loc5_:§?h§ = null;
         var _loc2_:Vector.<§?h§> = this.§3!Z§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§[y§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
