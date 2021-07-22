package §2!6§
{
   import §%!'§.§5!;§;
   
   public class § d§
   {
       
      
      private var §="#§:§5!;§;
      
      private var §5!h§:§5!;§;
      
      public function § d§(param1:Array, param2:Array)
      {
         var _loc3_:String = null;
         super();
         this.§="#§ = new §5!;§();
         this.§5!h§ = new §5!;§();
         if(param1)
         {
            for each(_loc3_ in param1)
            {
               this.§37§(_loc3_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc3_ in param2)
            {
               this.§%"A§(_loc3_.toUpperCase());
            }
         }
      }
      
      public function get ownedBundles() : §5!;§
      {
         return this.§="#§;
      }
      
      public function get claimableBundles() : §5!;§
      {
         return this.§5!h§;
      }
      
      public function §37§(param1:String) : void
      {
         this.§="#§[param1] = param1;
      }
      
      public function §%"A§(param1:String) : void
      {
         this.§5!h§[param1] = param1;
      }
      
      public function §-!L§(param1:String) : Boolean
      {
         return this.§="#§[param1.toUpperCase()] != null;
      }
      
      public function §6!F§(param1:String) : Boolean
      {
         return this.§5!h§[param1.toUpperCase()] != null;
      }
   }
}
