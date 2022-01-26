package §_-tK§
{
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-Fu§:§_-9T§;
      
      b2internal var §_-gg§:uint;
      
      public function b2ContactID()
      {
         this.§_-Fu§ = new §_-9T§();
         super();
         this.§_-Fu§.§_-5U§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-gg§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-gg§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-gg§ = param1;
         this.§_-Fu§.§_-dP§ = this.§_-gg§ & 255;
         this.§_-Fu§.§_-3H§ = (this.§_-gg§ & 65280) >> 8 & 255;
         this.§_-Fu§.§_-P2§ = (this.§_-gg§ & 16711680) >> 16 & 255;
         this.§_-Fu§.§_-OK§ = (this.§_-gg§ & 4278190080) >> 24 & 255;
      }
   }
}
