package §-!j§
{
   import §2E§.§&#a§;
   import §@"J§.§ 2§;
   import §]h§.§^;§;
   
   public class §!!o§
   {
       
      
      private var §0$8§:§&#a§;
      
      public function §!!o§()
      {
         super();
         this.§0$8§ = new §&#a§();
      }
      
      public function initBehaviorsDefinition(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:§ 2§ = null;
         var _loc2_:Object = param1.transformations;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = §^;§.§?" §(_loc3_,_loc2_[_loc3_]);
            if(this.§0$8§[_loc4_.name] != null)
            {
            }
            this.§0$8§[_loc4_.name] = _loc4_;
         }
      }
      
      public function §5#s§(param1:String) : § 2§
      {
         if(this.§0$8§.hasOwnProperty(param1))
         {
            return this.§0$8§[param1];
         }
         return null;
      }
   }
}
