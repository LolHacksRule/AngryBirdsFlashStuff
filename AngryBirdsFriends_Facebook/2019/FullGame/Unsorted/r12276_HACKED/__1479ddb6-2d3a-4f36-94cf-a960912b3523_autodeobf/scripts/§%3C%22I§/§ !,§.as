package §<"I§
{
   import §2E§.§&#a§;
   
   public class § !,§
   {
       
      
      private var § !V§:§&#a§;
      
      private var §["0§:§&#a§;
      
      private var §[!S§:§&#a§;
      
      public function § !,§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§ !V§ = new §&#a§();
         this.§["0§ = new §&#a§();
         this.§[!S§ = new §&#a§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§ a§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§""S§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§5"k§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §&#a§
      {
         return this.§ !V§;
      }
      
      public function get claimableBundles() : §&#a§
      {
         return this.§["0§;
      }
      
      public function §^?§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§ a§(_loc2_.toUpperCase());
         }
      }
      
      public function §6$9§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§""S§(_loc2_.toUpperCase());
         }
      }
      
      public function §3#]§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§5"k§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function § a§(param1:String) : void
      {
         if(!this.§ !V§[param1])
         {
            this.§ !V§[param1] = param1;
         }
      }
      
      public function §""S§(param1:String) : void
      {
         if(!this.§["0§[param1])
         {
            this.§["0§[param1] = param1;
         }
      }
      
      public function §5"k§(param1:String, param2:Array) : void
      {
         if(!this.§[!S§[param1])
         {
            this.§[!S§[param1] = param2;
         }
      }
      
      public function §!$1§(param1:String) : Boolean
      {
         return this.§ !V§[param1.toUpperCase()] != null;
      }
      
      public function §1_§(param1:String) : Boolean
      {
         return this.§["0§[param1.toUpperCase()] != null;
      }
      
      public function §1"y§(param1:String) : Array
      {
         return this.§[!S§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
