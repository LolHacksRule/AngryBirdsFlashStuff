package §&$!§
{
   import §`7§.§0t§;
   
   public class §%#]§
   {
       
      
      private var §[!c§:§0t§;
      
      private var §7u§:§0t§;
      
      private var §1l§:§0t§;
      
      public function §%#]§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§[!c§ = new §0t§();
         this.§7u§ = new §0t§();
         this.§1l§ = new §0t§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§8#X§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§8#]§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§2e§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §0t§
      {
         return this.§[!c§;
      }
      
      public function get claimableBundles() : §0t§
      {
         return this.§7u§;
      }
      
      public function §;!P§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§8#X§(_loc2_.toUpperCase());
         }
      }
      
      public function §>d§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§8#]§(_loc2_.toUpperCase());
         }
      }
      
      public function §?!v§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§2e§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §8#X§(param1:String) : void
      {
         if(!this.§[!c§[param1])
         {
            this.§[!c§[param1] = param1;
         }
      }
      
      public function §8#]§(param1:String) : void
      {
         if(!this.§7u§[param1])
         {
            this.§7u§[param1] = param1;
         }
      }
      
      public function §2e§(param1:String, param2:Array) : void
      {
         if(!this.§1l§[param1])
         {
            this.§1l§[param1] = param2;
         }
      }
      
      public function §7x§(param1:String) : Boolean
      {
         return this.§[!c§[param1.toUpperCase()] != null;
      }
      
      public function §9#w§(param1:String) : Boolean
      {
         return this.§7u§[param1.toUpperCase()] != null;
      }
      
      public function §5!v§(param1:String) : Array
      {
         return this.§1l§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
