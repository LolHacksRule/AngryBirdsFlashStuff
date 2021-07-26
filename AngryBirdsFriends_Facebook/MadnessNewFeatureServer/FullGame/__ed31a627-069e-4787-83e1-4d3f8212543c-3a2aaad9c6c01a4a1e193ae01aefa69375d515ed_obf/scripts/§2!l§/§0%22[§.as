package §2!l§
{
   import flash.utils.Dictionary;
   
   public class §0"[§
   {
       
      
      private var §%!%§:Dictionary;
      
      public function §0"[§()
      {
         this.§%!%§ = new Dictionary();
         super();
      }
      
      public function §"a§(param1:§&y§, param2:String) : void
      {
         var _loc3_:Vector.<§&y§> = this.§%!%§[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<§&y§>();
         }
         if(_loc3_.indexOf(param1) == -1)
         {
            _loc3_.push(param1);
         }
         this.§%!%§[param2] = _loc3_;
      }
      
      public function §?"?§(param1:§&y§, param2:String) : void
      {
         var _loc3_:Vector.<§&y§> = this.§%!%§[param2];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param1) != -1)
            {
               _loc3_.splice(_loc3_.indexOf(param1),1);
            }
         }
         this.§%!%§[param2] = _loc3_;
      }
      
      public function §[!q§(param1:§4"3§) : void
      {
         var _loc3_:Vector.<§&y§> = null;
         var _loc4_:int = 0;
         var _loc5_:§&y§ = null;
         var _loc2_:Vector.<§&y§> = this.§%!%§[param1.eventName];
         if(_loc2_)
         {
            _loc3_ = _loc2_.concat();
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc5_ = _loc3_[_loc4_])
               {
                  _loc5_.§+P§(param1);
               }
               _loc4_++;
            }
         }
      }
   }
}
