package §8#K§
{
   import § #>§.§3b§;
   import §#"4§.§&r§;
   import §1#=§.§@&§;
   
   public class §=#;§
   {
       
      
      private var §-#b§:§&r§;
      
      public function §=#;§()
      {
         super();
         this.§-#b§ = new §&r§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§3b§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §@&§.§ "g§(_loc3_,_loc2_[_loc3_]);
            if(this.§-#b§[_loc4_.name] != null)
            {
            }
            this.§-#b§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §-$3§(param1:String) : §3b§
      {
         if(this.§-#b§.hasOwnProperty(param1))
         {
            return this.§-#b§[param1];
         }
         return null;
      }
   }
}
