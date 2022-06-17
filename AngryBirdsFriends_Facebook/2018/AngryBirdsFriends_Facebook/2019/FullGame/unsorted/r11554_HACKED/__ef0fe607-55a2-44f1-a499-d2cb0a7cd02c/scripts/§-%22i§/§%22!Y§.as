package §-"i§
{
   import flash.utils.Dictionary;
   
   public class §"!Y§
   {
       
      
      private var §?_§:Dictionary;
      
      public function §"!Y§()
      {
         this.§?_§ = new Dictionary();
         super();
      }
      
      public function §=$A§(param1:§@M§, param2:String) : void
      {
         var _loc3_:Vector.<§@M§> = this.§?_§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§@M§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§?_§[param2] = _loc3_;
      }
      
      public function §-"8§(param1:§@M§, param2:String) : void
      {
         var _loc3_:Vector.<§@M§> = this.§?_§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§?_§[param2] = _loc3_;
      }
      
      public function §7"H§(param1:§+!7§) : void
      {
         var _loc3_:Vector.<§@M§> = null;
         var _loc4_:int = 0;
         var _loc5_:§@M§ = null;
         var _loc2_:Vector.<§@M§> = this.§?_§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§`#!§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
