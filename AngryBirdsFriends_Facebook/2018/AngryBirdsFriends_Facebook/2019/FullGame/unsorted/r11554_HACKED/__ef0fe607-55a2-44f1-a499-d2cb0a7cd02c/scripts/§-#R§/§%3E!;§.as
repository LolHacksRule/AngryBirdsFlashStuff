package §-#R§
{
   import §+#B§.§4"[§;
   
   public class §>!;§
   {
       
      
      private var §`"]§:§4"[§;
      
      private var §[!p§:§4"[§;
      
      private var §8[§:§4"[§;
      
      public function §>!;§(param1:Array, param2:Array, param3:Array)
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         super();
         this.§`"]§ = new §4"[§();
         this.§[!p§ = new §4"[§();
         this.§8[§ = new §4"[§();
         if(param1)
         {
            for each(_loc4_ in param1)
            {
               this.§7![§(_loc4_.toUpperCase());
            }
         }
         if(param2)
         {
            for each(_loc4_ in param2)
            {
               this.§&"<§(_loc4_.toUpperCase());
            }
         }
         if(param3)
         {
            for each(_loc5_ in param3)
            {
               this.§ #C§(_loc5_.bn.toUpperCase(),_loc5_.i);
            }
         }
      }
      
      public function get ownedBundles() : §4"[§
      {
         return this.§`"]§;
      }
      
      public function get claimableBundles() : §4"[§
      {
         return this.§[!p§;
      }
      
      public function §#!d§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§7![§(_loc2_.toUpperCase());
         }
      }
      
      public function §^#I§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§&"<§(_loc2_.toUpperCase());
         }
      }
      
      public function §,"m§(param1:Array) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.§ #C§(_loc2_.bn.toUpperCase(),_loc2_.i);
         }
      }
      
      public function §7![§(param1:String) : void
      {
         if(!this.§`"]§[param1])
         {
            this.§`"]§[param1] = param1;
         }
      }
      
      public function §&"<§(param1:String) : void
      {
         if(!this.§[!p§[param1])
         {
            this.§[!p§[param1] = param1;
         }
      }
      
      public function § #C§(param1:String, param2:Array) : void
      {
         if(!this.§8[§[param1])
         {
            this.§8[§[param1] = param2;
         }
      }
      
      public function §`W§(param1:String) : Boolean
      {
         return this.§`"]§[param1.toUpperCase()] != null;
      }
      
      public function § "H§(param1:String) : Boolean
      {
         return this.§[!p§[param1.toUpperCase()] != null;
      }
      
      public function §="d§(param1:String) : Array
      {
         return this.§8[§[param1.toUpperCase()];
      }
      
      public function injectData(param1:Object) : void
      {
      }
   }
}
