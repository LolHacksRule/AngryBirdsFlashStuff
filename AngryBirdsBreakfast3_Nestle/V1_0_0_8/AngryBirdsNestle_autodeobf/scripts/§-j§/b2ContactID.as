package §-j§
{
   import §7!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §1S§:§^"5§;
      
      b2internal var §#!`§:uint;
      
      public function b2ContactID()
      {
         this.§1S§ = new §^"5§();
         super();
         this.§1S§.§[G§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§#!`§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§#!`§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§#!`§ = param1;
         this.§1S§.§#;§ = this.§#!`§ & 255;
         this.§1S§.§`!5§ = (this.§#!`§ & 65280) >> 8 & 255;
         this.§1S§.§]"1§ = (this.§#!`§ & 16711680) >> 16 & 255;
         this.§1S§.§^!2§ = (this.§#!`§ & 4278190080) >> 24 & 255;
      }
   }
}
