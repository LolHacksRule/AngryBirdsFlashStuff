package §6!d§
{
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §1Y§:§0z§;
      
      b2internal var §5!F§:uint;
      
      public function b2ContactID()
      {
         this.§1Y§ = new §0z§();
         super();
         this.§1Y§.§2"A§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§5!F§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§5!F§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§5!F§ = param1;
         this.§1Y§.§`;§ = this.§5!F§ & 255;
         this.§1Y§.§@"-§ = (this.§5!F§ & 65280) >> 8 & 255;
         this.§1Y§.§ !T§ = (this.§5!F§ & 16711680) >> 16 & 255;
         this.§1Y§.§%!$§ = (this.§5!F§ & 4278190080) >> 24 & 255;
      }
   }
}
