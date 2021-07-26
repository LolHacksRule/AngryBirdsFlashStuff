package §8"L§
{
   import §'v§.§5'§;
   import §3$"§.§4t§;
   import §`7§.§0t§;
   
   public class §^c§
   {
       
      
      private var §&#S§:§0t§;
      
      public function §^c§()
      {
         super();
         this.§&#S§ = new §0t§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§4t§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §5'§.§8"s§(_loc3_,_loc2_[_loc3_]);
            if(this.§&#S§[_loc4_.name] != null)
            {
            }
            this.§&#S§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §?u§(param1:String) : §4t§
      {
         return this.§&#S§[param1];
      }
   }
}
