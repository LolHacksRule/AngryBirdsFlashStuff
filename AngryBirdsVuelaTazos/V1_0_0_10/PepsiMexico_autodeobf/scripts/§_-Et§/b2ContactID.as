package §_-Et§
{
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §_-JV§:§_-W9§;
      
      b2internal var §_-Qf§:uint;
      
      public function b2ContactID()
      {
         this.§_-JV§ = new §_-W9§();
         super();
         this.§_-JV§.§_-bT§ = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1.§_-Qf§;
      }
      
      public function Copy() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§_-Qf§;
      }
      
      public function set key(param1:uint) : void
      {
         this.§_-Qf§ = param1;
         this.§_-JV§.§_-UM§ = this.§_-Qf§ & 255;
         this.§_-JV§.§_-Gn§ = (this.§_-Qf§ & 65280) >> 8 & 255;
         this.§_-JV§.§_-dY§ = (this.§_-Qf§ & 16711680) >> 16 & 255;
         this.§_-JV§.§_-FA§ = (this.§_-Qf§ & 4278190080) >> 24 & 255;
      }
   }
}
