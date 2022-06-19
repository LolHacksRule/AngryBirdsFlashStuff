package §0!2§
{
   import §;]§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §]U§:§%!8§;
      
      b2internal var §?s§:uint;
      
      public function b2ContactID()
      {
         this.§]U§ = new §%!8§();
         super();
         this.§]U§.§2h§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§?s§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§?s§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§?s§ = param1;
         this.§]U§.§'f§ = this.§?s§ & 255;
         this.§]U§.§2H§ = (this.§?s§ & 65280) >> 8 & 255;
         this.§]U§.§!!;§ = (this.§?s§ & 16711680) >> 16 & 255;
         this.§]U§.§2x§ = (this.§?s§ & 4278190080) >> 24 & 255;
      }
   }
}
