package §>!Z§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?!O§:§[k§;
      
      b2internal var §7!U§:uint;
      
      public function b2ContactID()
      {
         this.§?!O§ = new §[k§();
         super();
         this.§?!O§.§<!O§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§7!U§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§7!U§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§7!U§ = param1;
         this.§?!O§.§7m§ = this.§7!U§ & 255;
         this.§?!O§.§`!J§ = (this.§7!U§ & 65280) >> 8 & 255;
         this.§?!O§.§4!+§ = (this.§7!U§ & 16711680) >> 16 & 255;
         this.§?!O§.§!!P§ = (this.§7!U§ & 4278190080) >> 24 & 255;
      }
   }
}
