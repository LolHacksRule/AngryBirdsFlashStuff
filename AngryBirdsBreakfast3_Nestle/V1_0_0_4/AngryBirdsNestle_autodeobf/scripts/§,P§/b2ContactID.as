package §,P§
{
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §>Z§:§+3§;
      
      b2internal var § g§:uint;
      
      public function b2ContactID()
      {
         this.§>Z§ = new §+3§();
         super();
         this.§>Z§.§]F§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§ g§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§ g§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§ g§ = param1;
         this.§>Z§.§!!?§ = this.§ g§ & 255;
         this.§>Z§.§#!7§ = (this.§ g§ & 65280) >> 8 & 255;
         this.§>Z§.§!!j§ = (this.§ g§ & 16711680) >> 16 & 255;
         this.§>Z§.§#!^§ = (this.§ g§ & 4278190080) >> 24 & 255;
      }
   }
}
