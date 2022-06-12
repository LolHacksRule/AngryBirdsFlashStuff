package §-;§
{
   import §&!_§.§[!j§;
   
   public class §<!m§
   {
       
      
      private var §,"%§:§[!j§;
      
      private var §>"[§:§[!j§;
      
      private var §3`§:§[!j§;
      
      public function §<!m§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§,"%§ = new §[!j§();
         this.§>"[§ = new §[!j§();
         this.§3`§ = new §[!j§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§^"U§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§>#T§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§]!1§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §[!j§
      {
         return this.§,"%§;
      }
      
      public function get claimableBundles() : §[!j§
      {
         return this.§>"[§;
      }
      
      public function §%!8§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§^"U§(_loc2_.toUpperCase());
         }
      }
      
      public function §1"@§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§>#T§(_loc2_.toUpperCase());
         }
      }
      
      public function §""d§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§]!1§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §^"U§(param1:String) : void
      {
         if(!this.§,"%§[param1])
         {
            this.§,"%§[param1] = param1;
         }
      }
      
      public function §>#T§(param1:String) : void
      {
         if(!this.§>"[§[param1])
         {
            this.§>"[§[param1] = param1;
         }
      }
      
      public function §]!1§(param1:String, param2:Array) : void
      {
         if(!this.§3`§[param1])
         {
            this.§3`§[param1] = param2;
         }
      }
      
      public function §""!§(param1:String) : Boolean
      {
         return this.§,"%§[param1.toUpperCase()] != null;
      }
      
      public function §>!>§(param1:String) : Boolean
      {
         return this.§>"[§[param1.toUpperCase()] != null;
      }
      
      public function §1"0§(param1:String) : Array
      {
         return this.§3`§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
