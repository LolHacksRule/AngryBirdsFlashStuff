package §^9§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?!>§:§>!_§;
      
      b2internal var §?" §:uint;
      
      public function b2ContactID()
      {
         this.§?!>§ = new §>!_§();
         super();
         this.§?!>§.§]!A§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§?" §;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§?" §;
      }
      
      public function set key(param1:uint) : void
      {
         this.§?" § = param1;
         this.§?!>§.§ !J§ = this.§?" § & 255;
         this.§?!>§.§#!u§ = (this.§?" § & 65280) >> 8 & 255;
         this.§?!>§.§?!]§ = (this.§?" § & 16711680) >> 16 & 255;
         this.§?!>§.§,"$§ = (this.§?" § & 4278190080) >> 24 & 255;
      }
   }
}
