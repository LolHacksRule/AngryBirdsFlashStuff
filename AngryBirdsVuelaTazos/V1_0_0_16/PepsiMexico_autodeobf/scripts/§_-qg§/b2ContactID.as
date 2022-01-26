package §_-qg§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-0P§:§_-66§;
      
      b2internal var §_-Bj§:uint;
      
      public function b2ContactID()
      {
         this.§_-0P§ = new §_-66§();
         super();
         this.§_-0P§.§_-nN§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-Bj§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Bj§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-Bj§ = param1;
         this.§_-0P§.§_-aR§ = this.§_-Bj§ & 255;
         this.§_-0P§.§_-ZM§ = (this.§_-Bj§ & 65280) >> 8 & 255;
         this.§_-0P§.§_-sl§ = (this.§_-Bj§ & 16711680) >> 16 & 255;
         this.§_-0P§.§_-hF§ = (this.§_-Bj§ & 4278190080) >> 24 & 255;
      }
   }
}
