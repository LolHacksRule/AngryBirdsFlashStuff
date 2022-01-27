package §<"§
{
   import §4x§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §8U§:§`!'§;
      
      b2internal var §=y§:uint;
      
      public function b2ContactID()
      {
         this.§8U§ = new §`!'§();
         super();
         this.§8U§.§;o§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§=y§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§=y§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§=y§ = param1;
         this.§8U§.§%!E§ = this.§=y§ & 255;
         this.§8U§.§3o§ = (this.§=y§ & 65280) >> 8 & 255;
         this.§8U§.§&7§ = (this.§=y§ & 16711680) >> 16 & 255;
         this.§8U§.§ N§ = (this.§=y§ & 4278190080) >> 24 & 255;
      }
   }
}
