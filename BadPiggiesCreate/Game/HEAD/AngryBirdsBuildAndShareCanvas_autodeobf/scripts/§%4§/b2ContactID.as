package §%4§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §2!U§:§5!9§;
      
      b2internal var §9!e§:uint;
      
      public function b2ContactID()
      {
         this.§2!U§ = new §5!9§();
         super();
         this.§2!U§.§>x§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§9!e§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§9!e§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§9!e§ = param1;
         this.§2!U§.§7!e§ = this.§9!e§ & 255;
         this.§2!U§.§?"$§ = (this.§9!e§ & 65280) >> 8 & 255;
         this.§2!U§.§1!9§ = (this.§9!e§ & 16711680) >> 16 & 255;
         this.§2!U§.§--§ = (this.§9!e§ & 4278190080) >> 24 & 255;
      }
   }
}
