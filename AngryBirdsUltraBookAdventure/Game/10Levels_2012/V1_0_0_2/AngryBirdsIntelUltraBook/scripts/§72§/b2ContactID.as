package §72§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]G§:§%]§;
      
      b2internal var §?R§:uint;
      
      public function b2ContactID()
      {
         this.§]G§ = new §%]§();
         super();
         this.§]G§.§+![§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§?R§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§?R§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§?R§ = param1;
         this.§]G§.§class§ = this.§?R§ & 255;
         this.§]G§.§!!4§ = (this.§?R§ & 65280) >> 8 & 255;
         this.§]G§.§`V§ = (this.§?R§ & 16711680) >> 16 & 255;
         this.§]G§.§!3§ = (this.§?R§ & 4278190080) >> 24 & 255;
      }
   }
}
