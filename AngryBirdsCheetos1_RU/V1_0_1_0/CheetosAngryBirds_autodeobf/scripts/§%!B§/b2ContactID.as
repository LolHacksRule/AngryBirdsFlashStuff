package §%!B§
{
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §?!'§:§,%§;
      
      b2internal var §6!T§:uint;
      
      public function b2ContactID()
      {
         this.§?!'§ = new §,%§();
         super();
         this.§?!'§.§2T§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§6!T§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§6!T§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§6!T§ = param1;
         this.§?!'§.§5!S§ = this.§6!T§ & 255;
         this.§?!'§.§!!4§ = (this.§6!T§ & 65280) >> 8 & 255;
         this.§?!'§.§5!5§ = (this.§6!T§ & 16711680) >> 16 & 255;
         this.§?!'§.§4m§ = (this.§6!T§ & 4278190080) >> 24 & 255;
      }
   }
}
