package §0#I§
{
   import flash.utils.Dictionary;
   
   public class §-!6§
   {
       
      
      private var §?$B§:Dictionary;
      
      public function §-!6§()
      {
         this.§?$B§ = new Dictionary();
         super();
      }
      
      public function §^"7§(param1:§+#P§, param2:String) : void
      {
         var _loc3_:Vector.<§+#P§> = this.§?$B§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§+#P§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§?$B§[param2] = _loc3_;
      }
      
      public function §6#G§(param1:§+#P§, param2:String) : void
      {
         var _loc3_:Vector.<§+#P§> = this.§?$B§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§?$B§[param2] = _loc3_;
      }
      
      public function §'"a§(param1:§3s§) : void
      {
         var _loc3_:Vector.<§+#P§> = null;
         var _loc4_:int = 0;
         var _loc5_:§+#P§ = null;
         var _loc2_:Vector.<§+#P§> = this.§?$B§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§=$7§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
