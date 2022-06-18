package §?§#3
{
   import §+#B§.§4"[§;
   import §1C§.§,"L§;
   import §`$"§.§@!U§;
   
   public class §]d§
   {
       
      
      private var §^#C§:§4"[§;
      
      public function §]d§()
      {
         super();
         this.§^#C§ = new §4"[§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§,"L§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §@!U§.§<!3§(_loc3_,_loc2_[_loc3_]);
            if(this.§^#C§[_loc4_.name] != null)
            {
            }
            this.§^#C§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §@#r§(param1:String) : §,"L§
      {
         if(this.§^#C§.hasOwnProperty(param1))
         {
            return this.§^#C§[param1];
         }
         return null;
      }
   }
}
