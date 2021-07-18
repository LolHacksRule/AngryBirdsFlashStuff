package §6§#8
{
   import flash.utils.Dictionary;
   
   public class §]!Q§
   {
       
      
      private var §6"L§:Dictionary;
      
      public function §]!Q§()
      {
         this.§6"L§ = new Dictionary();
         super();
      }
      
      public function §^#B§(param1:include, param2:String) : void
      {
         var _loc3_:Vector.<include> = this.§6"L§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<include>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§6"L§[param2] = _loc3_;
      }
      
      public function §]!6§(param1:include, param2:String) : void
      {
         var _loc3_:Vector.<include> = this.§6"L§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§6"L§[param2] = _loc3_;
      }
      
      public function §""x§(param1:§,"s§) : void
      {
         var _loc3_:Vector.<include> = null;
         var _loc4_:int = 0;
         var _loc5_:include = null;
         var _loc2_:Vector.<include> = this.§6"L§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§%N§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
