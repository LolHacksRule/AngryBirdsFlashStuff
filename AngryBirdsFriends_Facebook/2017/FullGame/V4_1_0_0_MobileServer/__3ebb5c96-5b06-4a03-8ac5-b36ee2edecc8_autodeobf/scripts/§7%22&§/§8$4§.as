package §7"&§
{
   import §%"v§.§!" §;
   import §-"Y§.§+t§;
   import §6V§.§&"g§;
   
   public class §8$4§
   {
       
      
      private var §^$3§:§&"g§;
      
      public function §8$4§()
      {
         super();
         this.§^$3§ = new §&"g§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§!" § = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §+t§.§%j§(_loc3_,_loc2_[_loc3_]);
            if(this.§^$3§[_loc4_.name] != null)
            {
            }
            this.§^$3§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §^!u§(param1:String) : §!" §
      {
         return this.§^$3§[param1];
      }
   }
}
