package §7S§
{
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §&V§:§<!;§;
      
      b2internal var §^>§:uint;
      
      public function b2ContactID()
      {
         this.§&V§ = new §<!;§();
         super();
         this.§&V§.§!!&§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§^>§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§^>§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§^>§ = param1;
         this.§&V§.§;!H§ = this.§^>§ & 255;
         this.§&V§.§?!X§ = (this.§^>§ & 65280) >> 8 & 255;
         this.§&V§.§?!D§ = (this.§^>§ & 16711680) >> 16 & 255;
         this.§&V§.§ q§ = (this.§^>§ & 4278190080) >> 24 & 255;
      }
   }
}
