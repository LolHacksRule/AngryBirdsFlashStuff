package §'"-§
{
   import §>!#§.§'"R§;
   
   public class §;!T§
   {
       
      
      private var §;@§:§'"R§;
      
      private var §!"#§:§'"R§;
      
      private var §5#Q§:§'"R§;
      
      public function §;!T§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§;@§ = new §'"R§();
         this.§!"#§ = new §'"R§();
         this.§5#Q§ = new §'"R§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§^"9§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§]!M§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§`U§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §'"R§
      {
         return this.§;@§;
      }
      
      public function get claimableBundles() : §'"R§
      {
         return this.§!"#§;
      }
      
      public function §'!p§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§^"9§(_loc2_.toUpperCase());
         }
      }
      
      public function §&R§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§]!M§(_loc2_.toUpperCase());
         }
      }
      
      public function § else§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§`U§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §^"9§(param1:String) : void
      {
         if(!this.§;@§[param1])
         {
            this.§;@§[param1] = param1;
         }
      }
      
      public function §]!M§(param1:String) : void
      {
         if(!this.§!"#§[param1])
         {
            this.§!"#§[param1] = param1;
         }
      }
      
      public function §`U§(param1:String, param2:Array) : void
      {
         if(!this.§5#Q§[param1])
         {
            this.§5#Q§[param1] = param2;
         }
      }
      
      public function §]#t§(param1:String) : Boolean
      {
         return this.§;@§[param1.toUpperCase()] != null;
      }
      
      public function § "U§(param1:String) : Boolean
      {
         return this.§!"#§[param1.toUpperCase()] != null;
      }
      
      public function §^!!§(param1:String) : Array
      {
         return this.§5#Q§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
