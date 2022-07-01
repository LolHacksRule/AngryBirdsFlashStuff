package § 6§
{
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §-"7§:§`! §;
      
      b2internal var §%!W§:uint;
      
      public function b2ContactID()
      {
         this.§-"7§ = new §`! §();
         super();
         this.§-"7§.§#!'§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§%!W§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§%!W§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§%!W§ = param1;
         this.§-"7§.§#t§ = this.§%!W§ & 255;
         this.§-"7§.§+!5§ = (this.§%!W§ & 65280) >> 8 & 255;
         this.§-"7§.§2" § = (this.§%!W§ & 16711680) >> 16 & 255;
         this.§-"7§.§"!P§ = (this.§%!W§ & 4278190080) >> 24 & 255;
      }
   }
}
