package §9T§
{
   import §#"4§.§&r§;
   
   public class §%#-§
   {
       
      
      private var §@"%§:§&r§;
      
      private var §7#r§:§&r§;
      
      private var §]"q§:§&r§;
      
      public function §%#-§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§@"%§ = new §&r§();
         this.§7#r§ = new §&r§();
         this.§]"q§ = new §&r§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§&,§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§%"s§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§6"9§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §&r§
      {
         return this.§@"%§;
      }
      
      public function get claimableBundles() : §&r§
      {
         return this.§7#r§;
      }
      
      public function §'q§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§&,§(_loc2_.toUpperCase());
         }
      }
      
      public function §^!x§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§%"s§(_loc2_.toUpperCase());
         }
      }
      
      public function §^"4§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§6"9§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §&,§(param1:String) : void
      {
         if(!this.§@"%§[param1])
         {
            this.§@"%§[param1] = param1;
         }
      }
      
      public function §%"s§(param1:String) : void
      {
         if(!this.§7#r§[param1])
         {
            this.§7#r§[param1] = param1;
         }
      }
      
      public function §6"9§(param1:String, param2:Array) : void
      {
         if(!this.§]"q§[param1])
         {
            this.§]"q§[param1] = param2;
         }
      }
      
      public function §%"z§(param1:String) : Boolean
      {
         return this.§@"%§[param1.toUpperCase()] != null;
      }
      
      public function §-#>§(param1:String) : Boolean
      {
         return this.§7#r§[param1.toUpperCase()] != null;
      }
      
      public function §?#F§(param1:String) : Array
      {
         return this.§]"q§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
