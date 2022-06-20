package §;P§
{
   import §6V§.§&"g§;
   
   public class §<#U§
   {
       
      
      private var §1!e§:§&"g§;
      
      private var §"#q§:§&"g§;
      
      private var §9"d§:§&"g§;
      
      public function §<#U§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§1!e§ = new §&"g§();
         this.§"#q§ = new §&"g§();
         this.§9"d§ = new §&"g§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§7!S§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§&!_§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§4$0§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §&"g§
      {
         return this.§1!e§;
      }
      
      public function get claimableBundles() : §&"g§
      {
         return this.§"#q§;
      }
      
      public function §0"b§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§7!S§(_loc2_.toUpperCase());
         }
      }
      
      public function §^"D§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§&!_§(_loc2_.toUpperCase());
         }
      }
      
      public function §>!l§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§4$0§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §7!S§(param1:String) : void
      {
         if(!this.§1!e§[param1])
         {
            this.§1!e§[param1] = param1;
         }
      }
      
      public function §&!_§(param1:String) : void
      {
         if(!this.§"#q§[param1])
         {
            this.§"#q§[param1] = param1;
         }
      }
      
      public function §4$0§(param1:String, param2:Array) : void
      {
         if(!this.§9"d§[param1])
         {
            this.§9"d§[param1] = param2;
         }
      }
      
      public function § "'§(param1:String) : Boolean
      {
         return this.§1!e§[param1.toUpperCase()] != null;
      }
      
      public function §!o§(param1:String) : Boolean
      {
         return this.§"#q§[param1.toUpperCase()] != null;
      }
      
      public function §6#'§(param1:String) : Array
      {
         return this.§9"d§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
