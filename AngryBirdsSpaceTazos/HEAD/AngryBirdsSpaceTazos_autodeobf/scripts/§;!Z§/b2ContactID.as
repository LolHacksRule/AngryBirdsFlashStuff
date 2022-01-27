package §;!Z§
{
   import §'!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §0!=§:§"f§;
      
      b2internal var §+"D§:uint;
      
      public function b2ContactID()
      {
         this.§0!=§ = new §"f§();
         super();
         this.§0!=§.§1";§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§+"D§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§+"D§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§+"D§ = param1;
         this.§0!=§.§8!>§ = this.§+"D§ & 255;
         this.§0!=§.§=y§ = (this.§+"D§ & 65280) >> 8 & 255;
         this.§0!=§.§9L§ = (this.§+"D§ & 16711680) >> 16 & 255;
         this.§0!=§.§38§ = (this.§+"D§ & 4278190080) >> 24 & 255;
      }
   }
}
