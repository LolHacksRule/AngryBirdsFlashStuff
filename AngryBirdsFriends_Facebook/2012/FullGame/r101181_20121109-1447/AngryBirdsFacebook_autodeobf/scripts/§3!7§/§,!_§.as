package §3!7§
{
   import §<a§.§0!Y§;
   
   public class §,!_§
   {
       
      
      private var §0"+§:§0!Y§;
      
      private var §%N§:§0!Y§;
      
      public function §,!_§(param1:Array, param2:Array)
      {
         var _loc3_:String = null;
         super();
         this.§0"+§ = new §0!Y§();
         this.§%N§ = new §0!Y§();
         if(param1)
         {
            for each(_loc3_ in param1)
            {
               this.§=?§(_loc3_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc3_ in param2)
            {
               this.§get §(_loc3_.toUpperCase());
            }
         }
      }
      
      public function get ownedBundles() : §0!Y§
      {
         return this.§0"+§;
      }
      
      public function get claimableBundles() : §0!Y§
      {
         return this.§%N§;
      }
      
      public function §=?§(param1:String) : void
      {
         this.§0"+§[param1] = param1;
      }
      
      public function §get §(param1:String) : void
      {
         this.§%N§[param1] = param1;
      }
      
      public function §2! §(param1:String) : Boolean
      {
         return this.§0"+§[param1.toUpperCase()] != null;
      }
      
      public function §7g§(param1:String) : Boolean
      {
         return this.§%N§[param1.toUpperCase()] != null;
      }
   }
}
