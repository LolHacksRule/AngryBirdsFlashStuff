package §4$E§
{
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §7!§:§;#7§;
      
      b2internal var §@!y§:uint;
      
      public function b2ContactID()
      {
         this.§7!§ = new §;#7§();
         super();
         this.§7!§.§3"s§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§@!y§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§@!y§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§@!y§ = param1;
         this.§7!§.§,">§ = this.§@!y§ & 255;
         this.§7!§.§2"x§ = (this.§@!y§ & 65280) >> 8 & 255;
         this.§7!§.§-$$§ = (this.§@!y§ & 16711680) >> 16 & 255;
         this.§7!§.§@h§ = (this.§@!y§ & 4278190080) >> 24 & 255;
      }
   }
}
