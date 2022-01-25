package §=!!§
{
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §"!1§:§]_§;
      
      b2internal var §1!Z§:uint;
      
      public function b2ContactID()
      {
         this.§"!1§ = new §]_§();
         super();
         this.§"!1§.§'k§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§1!Z§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§1!Z§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§1!Z§ = param1;
         this.§"!1§.§`!P§ = this.§1!Z§ & 255;
         this.§"!1§.§2!4§ = (this.§1!Z§ & 65280) >> 8 & 255;
         this.§"!1§.§`!S§ = (this.§1!Z§ & 16711680) >> 16 & 255;
         this.§"!1§.§[!J§ = (this.§1!Z§ & 4278190080) >> 24 & 255;
      }
   }
}
