package §`#C§
{
   import §2]§.§5"z§;
   import §=# §.§6!@§;
   import §>!#§.§'"R§;
   
   public class §'""§
   {
       
      
      private var §4#>§:§'"R§;
      
      public function §'""§()
      {
         super();
         this.§4#>§ = new §'"R§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§5"z§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §6!@§.§+#y§(_loc3_,_loc2_[_loc3_]);
            if(this.§4#>§[_loc4_.name] != null)
            {
            }
            this.§4#>§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §@,§(param1:String) : §5"z§
      {
         return this.§4#>§[param1];
      }
   }
}
