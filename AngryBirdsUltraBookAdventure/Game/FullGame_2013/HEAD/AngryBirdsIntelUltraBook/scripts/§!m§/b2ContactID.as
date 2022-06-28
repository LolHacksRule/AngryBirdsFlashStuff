package §!m§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var features:§ 2§;
      
      b2internal var §1o§:uint;
      
      public function b2ContactID()
      {
         this.features = new § 2§();
         super();
         this.features.§[m§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§1o§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§1o§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§1o§ = param1;
         this.features.§2!>§ = this.§1o§ & 255;
         this.features.§2N§ = (this.§1o§ & 65280) >> 8 & 255;
         this.features.§%=§ = (this.§1o§ & 16711680) >> 16 & 255;
         this.features.§&!;§ = (this.§1o§ & 4278190080) >> 24 & 255;
      }
   }
}
