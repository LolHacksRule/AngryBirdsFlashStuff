package §^"F§
{
   import §9@§.§4Z§;
   
   public class §0"&§
   {
       
      
      private var §,^§:§4Z§;
      
      private var §5!U§:§4Z§;
      
      public function §0"&§(param1:Array, param2:Array)
      {
         var _loc3_:String = null;
         super();
         this.§,^§ = new §4Z§();
         this.§5!U§ = new §4Z§();
         if(param1)
         {
            for each(_loc3_ in param1)
            {
               this.§="#§(_loc3_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc3_ in param2)
            {
               this.§[!w§(_loc3_.toUpperCase());
            }
         }
      }
      
      public function get ownedBundles() : §4Z§
      {
         return this.§,^§;
      }
      
      public function get claimableBundles() : §4Z§
      {
         return this.§5!U§;
      }
      
      public function §="#§(param1:String) : void
      {
         this.§,^§[param1] = param1;
      }
      
      public function §[!w§(param1:String) : void
      {
         this.§5!U§[param1] = param1;
      }
      
      public function §^!e§(param1:String) : Boolean
      {
         return this.§,^§[param1.toUpperCase()] != null;
      }
      
      public function §8k§(param1:String) : Boolean
      {
         return this.§5!U§[param1.toUpperCase()] != null;
      }
   }
}
