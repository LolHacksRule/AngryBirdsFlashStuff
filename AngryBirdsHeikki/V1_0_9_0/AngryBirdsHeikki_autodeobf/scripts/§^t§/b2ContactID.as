package §^t§
{
   import §+&§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §;F§:§%!W§;
      
      b2internal var §<!^§:uint;
      
      public function b2ContactID()
      {
         this.§;F§ = new §%!W§();
         super();
         this.§;F§.§>!?§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§<!^§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§<!^§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§<!^§ = param1;
         this.§;F§.§7!0§ = this.§<!^§ & 255;
         this.§;F§.§8U§ = (this.§<!^§ & 65280) >> 8 & 255;
         this.§;F§.§ f§ = (this.§<!^§ & 16711680) >> 16 & 255;
         this.§;F§.§6t§ = (this.§<!^§ & 4278190080) >> 24 & 255;
      }
   }
}
