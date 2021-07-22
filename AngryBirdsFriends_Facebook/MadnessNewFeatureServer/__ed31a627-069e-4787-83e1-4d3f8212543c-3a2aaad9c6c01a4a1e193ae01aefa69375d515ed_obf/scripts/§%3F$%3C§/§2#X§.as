package §?$<§
{
   import §&!_§.§[!j§;
   import §7!N§.§+c§;
   import §^"Z§.§2"l§;
   
   public class §2#X§
   {
       
      
      private var §8#9§:§[!j§;
      
      public function §2#X§()
      {
         super();
         this.§8#9§ = new §[!j§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§2"l§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §+c§.§%$2§(_loc3_,_loc2_[_loc3_]);
            if(this.§8#9§[_loc4_.name] != null)
            {
            }
            this.§8#9§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §7#o§(param1:String) : §2"l§
      {
         if(this.§8#9§.hasOwnProperty(param1))
         {
            return this.§8#9§[param1];
         }
         return null;
      }
   }
}
