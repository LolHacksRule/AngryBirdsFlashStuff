package §9$A§
{
   import §1#F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §+"n§:§^#f§;
      
      b2internal var §2"l§:uint;
      
      public function b2ContactID()
      {
         this.§+"n§ = new §^#f§();
         super();
         this.§+"n§.§7A§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§2"l§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§2"l§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§2"l§ = param1;
         this.§+"n§.§`7§ = this.§2"l§ & 255;
         this.§+"n§.§,R§ = (this.§2"l§ & 65280) >> 8 & 255;
         this.§+"n§.§'"r§ = (this.§2"l§ & 16711680) >> 16 & 255;
         this.§+"n§.§!#[§ = (this.§2"l§ & 4278190080) >> 24 & 255;
      }
   }
}
