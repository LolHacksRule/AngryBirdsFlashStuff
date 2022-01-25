package § Y§
{
   import §#!M§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §`1§:§3!D§;
      
      b2internal var §"!1§:uint;
      
      public function b2ContactID()
      {
         this.§`1§ = new §3!D§();
         super();
         this.§`1§.§[!J§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§"!1§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§"!1§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§"!1§ = param1;
         this.§`1§.§^L§ = this.§"!1§ & 255;
         this.§`1§.§4!!§ = (this.§"!1§ & 65280) >> 8 & 255;
         this.§`1§.§@@§ = (this.§"!1§ & 16711680) >> 16 & 255;
         this.§`1§.§=!`§ = (this.§"!1§ & 4278190080) >> 24 & 255;
      }
   }
}
